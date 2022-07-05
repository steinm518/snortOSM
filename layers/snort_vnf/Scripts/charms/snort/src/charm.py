import sys

sys.path.append("lib")

from ops.main import main
from ops.charm import CharmBase
import io
import ipaddress
from packaging import version
import subprocess
import os
import socket
import shlex
import traceback
import yaml

from shutil import which
from subprocess import (
    check_call,
    Popen,
    CalledProcessError,
    PIPE,
)


class SnortCharm(CharmBase):
    ip_list= ""#Should be comma seperated strings containing the ip address

    def __init__(self, framework, key):
        super().__init__(framework, key)

        # Listen to charm events
        self.framework.observe(self.on.config_changed, self.on_config_changed)
        self.framework.observe(self.on.install, self.on_install)
        self.framework.observe(self.on.start, self.on_start)
        # self.framework.observe(self.on.upgrade_charm, self.on_upgrade_charm)

        # Listen to the touch action event
        self.framework.observe(self.on.configure_snort_action, self.configure_remote)
        self.framework.observe(self.on.start_service_action, self.start_service)

    def on_config_changed(self, event):
        """Handle changes in configuration"""
        super().on_config_changed(event)
        self.configure_snort(self,event)

    def on_install(self, event):
        """Called when the charm is being installed"""
        super().on_install(event)
        def installDependencies(self):
            f = open("dependencies.bash", "r")
            check_call(["bash", f.read()])
        installDependencies(self)
        f= open("snortService","r")
        check_call(["echo",f.read,">","/lib/systemd/system/snort.service"])
        check_call(["systemctl daemon-reload"])

    def on_start(self, event):
        """Called when the charm is being started"""
        super().on_start(event)
        

    def configure_snort(self, event):
        """Configure snort."""

        if self.model.unit.is_leader():
            stderr = None
            self.ip_list=self.model.config(["ip_list"])
            check_call(["sed","-i","/ipvar HOME_NET/c\\ipvar HOME_NET\["+self.ip_list+"\]", "/etc/snort/snort.conf"])
            
        else:
            event.fail("Unit is not leader")

    def start_service(self, event):
        """Start service action."""

        if self.model.unit.is_leader():
            
            check_call(["systemctl start snort"])
            
        else:
            event.fail("Unit is not leader")
    def stop_service(self,event):
        if self.model.unit.is_leader():
            
            check_call(["systemctl stop snort"])
            
        else:
            event.fail("Unit is not leader")

if __name__ == "__main__":
    main(SnortCharm)