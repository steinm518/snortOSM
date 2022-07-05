#!/bin/bash
apt update
apt install -y gcc libpcre3-dev zlib1g-dev libluajit-5.1-dev libpcap-dev openssl libssl-dev libnghttp2-dev libdumbnet-dev bison flex libdnet autoconf libtool
mkdir ~/snort_src && cd ~/snort_src
wget https://www.snort.org/downloads/snort/daq-2.0.7.tar.gz
tar -xvzf daq-2.0.7.tar.gz
cd daq-2.0.7
autoreconf -f -i
./configure && make && sudo make install
cd ~/snort_src
wget https://www.snort.org/downloads/snort/snort-2.9.16.tar.gz
tar -xvzf snort-2.9.16.tar.gz
cd snort-2.9.16
./configure --enable-sourcefire && make && sudo make install
ldconfig
ln -s /usr/local/bin/snort /usr/sbin/snort
mkdir -p /etc/snort/rules
mkdir /var/log/snort
mkdir /usr/local/lib/snort_dynamicrules
groupadd snort
useradd snort -r -s /sbin/nologin -c SNORT_IDS -g snort
chmod -R 5775 /etc/snort
chmod -R 5775 /var/log/snort
chmod -R 5775 /usr/local/lib/snort_dynamicrules
chown -R snort:snort /etc/snort
chown -R snort:snort /var/log/snort
chown -R snort:snort /usr/local/lib/snort_dynamicrules
touch /etc/snort/rules/white_list.rules
touch /etc/snort/rules/black_list.rules
touch /etc/snort/rules/local.rules
cp ~/snort_src/snort-2.9.16/etc/*.conf* /etc/snort
cp ~/snort_src/snort-2.9.16/etc/*.map /etc/snort
wget https://www.snort.org/rules/community -O ~/community.tar.gz
tar -xvf ~/community.tar.gz -C ~/
cp ~/community-rules/* /etc/snort/rules
sed -i 's/include $RULE_PATH/#include $RULE_PATH/' /etc/snort/snort.conf