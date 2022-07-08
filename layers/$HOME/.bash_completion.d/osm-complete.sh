Usage: osm [OPTIONS] COMMAND [ARGS]...

Options:
  --hostname TEXT             hostname of server.  Also can set OSM_HOSTNAME
                              in environment
  --user TEXT                 user (defaults to admin). Also can set OSM_USER
                              in environment
  --password TEXT             password (defaults to admin). Also can set
                              OSM_PASSWORD in environment
  --project TEXT              project (defaults to admin). Also can set
                              OSM_PROJECT in environment
  -v, --verbose               increase verbosity (-v INFO, -vv VERBOSE, -vvv
                              DEBUG)
  --all-projects              include all projects
  --public / --no-public      flag for public items (packages, instances, VIM
                              accounts, etc.)
  --project-domain-name TEXT  project domain name for keystone authentication
                              (default to None). Also can set
                              OSM_PROJECT_DOMAIN_NAME in environment
  --user-domain-name TEXT     user domain name for keystone authentication
                              (default to None). Also can set
                              OSM_USER_DOMAIN_NAME in environment
  -h, --help                  Show this message and exit.

Commands:
  alarm-list                 list all alarms
  alarm-show                 show alarm details
  alarm-update               Update a alarm
  descriptor-translate       Translate input descriptor file from Rel EIGHT
                             OSM descriptors to SOL006 and prints in standard
                             output
  k8scluster-add             adds a K8s cluster to OSM
  k8scluster-delete          deletes a K8s cluster
  k8scluster-list            list all K8s clusters
  k8scluster-show            shows the details of a K8s cluster
  k8scluster-update          updates a K8s cluster
  netslice-instance-create   creates a new Network Slice Instance
  netslice-instance-delete   deletes a Network Slice Instance (NSI)
  netslice-instance-list     list all Network Slice Instances (NSI)
  netslice-instance-op-list  shows the history of operations over a Network
                             Slice Instance (NSI)
  netslice-instance-op-show  shows the info of an operation over a Network
                             Slice Instance(NSI)
  netslice-instance-show     shows the content of a Network Slice Instance
                             (NSI)
  netslice-template-create   creates a new Network Slice Template (NST)
  netslice-template-delete   deletes a Network Slice Template (NST)
  netslice-template-list     list all Network Slice Templates (NST)
  netslice-template-show     shows the content of a Network Slice Template
                             (NST)
  netslice-template-update   updates a Network Slice Template (NST)
  nf-list                    list all NF instances
  nfpkg-create               creates a new NFpkg
  nfpkg-delete               deletes a NFpkg
  nfpkg-list                 list all xNF packages (VNF, HNF, PNF)
  nfpkg-repo-list            list all xNF from OSM repositories
  nfpkg-repo-show            shows the details of a NF package in an OSM
                             repository
  nfpkg-show                 shows the details of a NF package
  nfpkg-update               updates a NFpkg
  ns-action                  executes an action/primitive over a NS instance
  ns-alarm-create            creates a new alarm for a NS instance
  ns-create                  creates a new Network Service instance
  ns-delete                  deletes a NS instance
  ns-list                    list all NS instances
  ns-metric-export           exports a metric to the internal OSM bus, which
                             can be read by other apps
  ns-op-list                 shows the history of operations over a NS
                             instance
  ns-op-show                 shows the info of a NS operation
  ns-show                    shows the info of a NS instance
  nsd-create                 creates a new NSD/NSpkg
  nsd-delete                 deletes a NSD/NSpkg
  nsd-list                   list all NS packages
  nsd-repo-list              list all NS from OSM repositories
  nsd-repo-show              shows the details of a NS package in an OSM
                             repository
  nsd-show                   shows the details of a NS package
  nsd-update                 updates a NSD/NSpkg
  nsi-create                 creates a new Network Slice Instance
  nsi-delete                 deletes a Network Slice Instance (NSI)
  nsi-list                   list all Network Slice Instances (NSI)
  nsi-op-list                shows the history of operations over a Network
                             Slice Instance (NSI)
  nsi-op-show                shows the info of an operation over a Network
                             Slice Instance(NSI)
  nsi-show                   shows the content of a Network Slice Instance
                             (NSI)
  nspkg-create               creates a new NSD/NSpkg
  nspkg-delete               deletes a NSD/NSpkg
  nspkg-list                 list all NS packages
  nspkg-repo-list            list all NS from OSM repositories
  nspkg-repo-show            shows the details of a NS package in an OSM
                             repository
  nspkg-show                 shows the details of a NS package
  nspkg-update               updates a NSD/NSpkg
  nst-create                 creates a new Network Slice Template (NST)
  nst-delete                 deletes a Network Slice Template (NST)
  nst-list                   list all Network Slice Templates (NST)
  nst-show                   shows the content of a Network Slice Template
                             (NST)
  nst-update                 updates a Network Slice Template (NST)
  package-build              Build the tar.gz of the package
  package-create             Create empty NS package structure
  package-translate          Translate descriptors given a base directory
  package-validate           Validate descriptors given a base directory
  pdu-create                 adds a new Physical Deployment Unit to the
                             catalog
  pdu-delete                 deletes a Physical Deployment Unit (PDU)
  pdu-list                   list all Physical Deployment Units (PDU)
  pdu-show                   shows the content of a Physical Deployment Unit
                             (PDU)
  pdu-update                 updates a Physical Deployment Unit to the catalog
  project-create             creates a new project
  project-delete             deletes a project
  project-list               list all projects
  project-show               shows the details of a project
  project-update             updates a project (only the name can be updated)
  repo-add                   adds a repo to OSM
  repo-delete                deletes a repo
  repo-index                 Index a repository from a folder with artifacts
  repo-list                  list all repos
  repo-show                  shows the details of a repo
  repo-update                updates a repo in OSM
  role-create                creates a new role
  role-delete                deletes a role
  role-list                  list all roles
  role-show                  show specific role
  role-update                updates a role
  sdnc-create                creates a new SDN controller
  sdnc-delete                deletes an SDN controller
  sdnc-list                  list all SDN controllers
  sdnc-show                  shows the details of an SDN controller
  sdnc-update                updates an SDN controller
  subscription-create        creates a new subscription to a specific event
  subscription-delete        deletes a subscription
  subscription-list          list all subscriptions
  subscription-show          shows the details of a subscription
  upload-package             uploads a VNF package or NS package
  user-create                creates a new user
  user-delete                deletes a user
  user-list                  list all users
  user-show                  shows the details of a user
  user-update                updates user information
  vca-add                    adds a VCA (Juju controller) to OSM
  vca-delete                 deletes a K8s cluster
  vca-list                   list VCAs
  vca-show                   shows the details of a K8s cluster
  vca-update                 updates a K8s cluster
  version                    shows client and server versions
  vim-create                 creates a new VIM account
  vim-delete                 deletes a VIM account
  vim-list                   list all VIM accounts
  vim-show                   shows the details of a VIM account
  vim-update                 updates a VIM account
  vnf-list                   list all NF instances
  vnf-scale                  executes a VNF scale (adding/removing VDUs)
  vnf-show                   shows the info of a VNF instance
  vnfd-create                creates a new VNFD/VNFpkg
  vnfd-delete                deletes a VNFD/VNFpkg
  vnfd-list                  list all xNF packages (VNF, HNF, PNF)
  vnfd-show                  shows the details of a NF package
  vnfd-update                updates a new VNFD/VNFpkg
  vnfpkg-create              creates a new VNFD/VNFpkg
  vnfpkg-delete              deletes a VNFD/VNFpkg
  vnfpkg-list                list all xNF packages (VNF, HNF, PNF)
  vnfpkg-repo-list           list all xNF from OSM repositories
  vnfpkg-repo-show           shows the details of a NF package in an OSM
                             repository
  vnfpkg-show                shows the details of a NF package
  vnfpkg-update              updates a VNFD/VNFpkg
  wim-create                 creates a new WIM account
  wim-delete                 deletes a WIM account
  wim-list                   list all WIM accounts
  wim-show                   shows the details of a WIM account
  wim-update                 updates a WIM account
