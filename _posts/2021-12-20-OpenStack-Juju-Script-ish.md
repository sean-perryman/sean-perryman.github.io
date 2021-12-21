--- 
layout: post 
title: OpenStack Juju Script-ish 
date: '2021-12-20  6:52:44.88 -0400' 
--- 
I went through the OpenStack Charms/Juju install again, and though it didn't work, I cataloged all of the steps 
and the order that I did them in. Maybe it will help someone at some point. 

 Script to somewhat automate OpenStack with Juju install. 
This is best run after you just juju kill-controller so you still have your MaaS and your jump/management server ready
I never made this into an actual script because juju openstack is shit, but maybe someone else can take this and run with it. No way I would ever deploy OpenStack Charms into production.

Bootstraping juju
`juju bootstrap --bootstrap-series=focal --constraints tags=juju mymaas maas-controller`

 Creating the model
`juju add-model --config default-series=focal openstack`

 Switch to the new controller. 
 I have found this to be unneccessary in all instances.
`juju switch maas-controller:openstack`

 Installing CephOSD - You should create the ceph-osd.yaml now. I changed the source to cloud:focal-xena 
without issue
 You can also adjust the number of nodes (-n 4) to suit your environment. I picked 3. 
pause
 Make sure the changes is reflected throughout (e.g. some services try and deploy on node 3, which is the 4th 
node in the cluster)
`juju deploy -n 3 --config ceph-osd.yaml --constraints tags=compute ceph-osd`
 Let this step finish completely before continuing. run this command in another window on your 
jump/management server, 
 and when everything is in the "idle" state you are ready to move on

 watch -n 5 -c juju status --color

 You should now create the nova-compute.yaml file. I changed the openstack-origin tag to cloud:focal-xena
 Make sure to adjust the command for your specific configuration (e.g. 3 nodes, I only have 0, 1, and 2)
`juju deploy -n 3 --to 1,2,3 --config nova-compute.yaml nova-compute`
 Let's this complete before continuing on. 

 Deploy MySQL - straight forward. Just make sure the number and location match your environmental 
requirements
`juju deploy -n 3 --to lxd:0,lxd:1,lxd:2 mysql-innodb-cluster`

 Deploy Vault - Make sure to adjust for your environment
`juju deploy --to lxd:2 vault`

 Deploy the vault mysql router and relations. Wait until the deploy is finished
`juju deploy mysql-router vault-mysql-router`
`juju add-relation vault-mysql-router:db-router mysql-innodb-cluster:db-router`
`juju add-relation vault-mysql-router:shared-db vault:shared-db

 Vault must now be unsealed. Here is how to do that. You have to do all 3 for this to work. 
 https://jaas.ai/vault
 You will need to install the Vault client. 
 sudo snap install vault
 Set the environment variable (run juju status, see what IP is assigned to "vault/0". Insert that here)
`export VAULT_ADDR="http://192.168.88.145:8200"`
`vault operator init -key-shares=5 -key-threshold=3`

 Grab 3 of the keys from the output and replace the keys here with them
`vault operator unseal x/sOMvskaAF41sWE61wrj7a7ARV0oy9sMRI7KZwAIazQ`
`vault operator unseal 1I2olKJmpfxR8AfsAMqYSB0ndxX/rUCrrs0rd5/0+AfJ`
`vault operator unseal nr+Bg0xdaF7bHvbtts3+bGCSq3GVf69E+xqxNKaheAsx`

 Get a temporary token for authorizing the charm
`export VAULT_TOKEN=s.ESldRmvBFUHJTjir0fufDLHu`
`vault token create -ttl=10m`

 Grab the token from the output of the last command and paste it here
`juju run-action --wait vault/leader authorize-charm token=s.HplDtFvyHoaKpxwj0nUvErza`

 Provide vault with a CA cert: 
https://docs.openstack.org/project-deploy-guide/charm-deployment-guide/wallaby/app-certificate-management.htmladd-ca-certificate
`juju run-action --wait vault/leader generate-root-ca`

 Add the certificate relation
`juju add-relation mysql-innodb-cluster:certificates vault:certificates`

 Create the neutron.yaml now. Make sure you have your bridges and network interfaces set up correctly
 If your servers have different interface names (It happens), you can add them all on the line like this:
 bridge-interface-mappings: "br-ex:eth0,br-ex:enp5s0,br-ex:enp1s0"
 so that it is one long string, not an array or a dictionary or whatever it is called today

 Deploy Neutron, make sure you edit this line to reflect your setup
`juju deploy -n 3 --to lxd:0,lxd:1,lxd:2 --config neutron.yaml ovn-central`

 Deploy the Neutron API container
`juju deploy --to lxd:1 --config neutron.yaml neutron-api`

 Deploy the "subordinate" charp applications
`juju deploy neutron-api-plugin-ovn`
`juju deploy --config neutron.yaml ovn-chassis`

 Add the relations for neutron
`juju add-relation neutron-api-plugin-ovn:neutron-plugin neutron-api:neutron-plugin-api-subordinate`
`juju add-relation neutron-api-plugin-ovn:ovsdb-cms ovn-central:ovsdb-cms`
`juju add-relation ovn-chassis:ovsdb ovn-central:ovsdb`
`juju add-relation ovn-chassis:nova-compute nova-compute:neutron-plugin`
`juju add-relation neutron-api:certificates vault:certificates`
`juju add-relation neutron-api-plugin-ovn:certificates vault:certificates`
`juju add-relation ovn-central:certificates vault:certificates`
`juju add-relation ovn-chassis:certificates vault:certificates`

 Deploy the neutron API and add the relations. Wait until the deploy is completed before adding the relations
`juju deploy mysql-router neutron-api-mysql-router`
`juju add-relation neutron-api-mysql-router:db-router mysql-innodb-cluster:db-router`
`juju add-relation neutron-api-mysql-router:shared-db neutron-api:shared-db`

 Create the keystone.yaml file now
`juju deploy --to lxd:0 --config keystone.yaml keystone`

 Join keystone to the cloud database. Let the deploy finish before adding the relations
`juju deploy mysql-router keystone-mysql-router`
`juju add-relation keystone-mysql-router:db-router mysql-innodb-cluster:db-router`
`juju add-relation keystone-mysql-router:shared-db keystone:shared-db`

 Two more relations to add
`juju add-relation keystone:identity-service neutron-api:identity-service`
`juju add-relation keystone:certificates vault:certificates`

 Deploy Rabbit MQ and relations - Make sure the command matches your environment, and that you let the deploy 
finish before adding relations
`juju deploy --to lxd:2 rabbitmq-server`
`juju add-relation rabbitmq-server:amqp neutron-api:amqp`
`juju add-relation rabbitmq-server:amqp nova-compute:amqp`

 Create your nova-cloud-controller.yaml file now. Make sure to adjust for your environment
 Deploy the nova cloud controller. Adjust command as needed
`juju deploy --to lxd:2 --config nova-cloud-controller.yaml nova-cloud-controller`

 Deploy the nova cloud controller mysql router and relations. Wait for the deploy to finish
`juju deploy mysql-router ncc-mysql-router`
`juju add-relation ncc-mysql-router:db-router mysql-innodb-cluster:db-router`
`juju add-relation ncc-mysql-router:shared-db nova-cloud-controller:shared-db`

 Add the other relations
`juju add-relation nova-cloud-controller:identity-service keystone:identity-service`
`juju add-relation nova-cloud-controller:amqp rabbitmq-server:amqp`
`juju add-relation nova-cloud-controller:neutron-api neutron-api:neutron-api`
`juju add-relation nova-cloud-controller:cloud-compute nova-compute:cloud-compute`
`juju add-relation nova-cloud-controller:certificates vault:certificates`

 Create the placement.yaml file now. Adjust for your release

 Deploy the placement charm. Make sure to adjust the command for your environment
`juju deploy --to lxd:2 --config placement.yaml placement`

 Join the placement charm to the cloud database. Let the deploy finish
`juju deploy mysql-router placement-mysql-router`
`juju add-relation placement-mysql-router:db-router mysql-innodb-cluster:db-router`
`juju add-relation placement-mysql-router:shared-db placement:shared-db`

 Add some additional placement relations
`juju add-relation placement:identity-service keystone:identity-service`
`juju add-relation placement:placement nova-cloud-controller:placement`
`juju add-relation placement:certificates vault:certificates`

 Deploy the OpenStack dashboard
`juju deploy --to lxd:2 --config openstack-origin=cloud:focal-wallaby openstack-dashboard`

 Join OpenStack database to the cloud database
`juju deploy mysql-router dashboard-mysql-router`
`juju add-relation dashboard-mysql-router:db-router mysql-innodb-cluster:db-router`
`juju add-relation dashboard-mysql-router:shared-db openstack-dashboard:shared-db`

 Add more relations
`juju add-relation openstack-dashboard:identity-service keystone:identity-service`
`juju add-relation openstack-dashboard:certificates vault:certificates`

 You should now create the glance.yaml file. Make sure to update for your release

 Deploy glance. Adjust for your environment
`juju deploy --to lxd:2 --config glance.yaml glance`

 Join glance to the cloud database:
`juju deploy mysql-router glance-mysql-router`
`juju add-relation glance-mysql-router:db-router mysql-innodb-cluster:db-router`
`juju add-relation glance-mysql-router:shared-db glance:shared-db`

 Add additional relations
`juju add-relation glance:image-service nova-cloud-controller:image-service`
`juju add-relation glance:image-service nova-compute:image-service`
`juju add-relation glance:identity-service keystone:identity-service`
`juju add-relation glance:certificates vault:certificates`


 Create the ceph-mon.yaml file. Make sure to adjust to your environment

 Deploy the ceph monitors
`juju deploy -n 3 --to lxd:0,lxd:1,lxd:2 --config ceph-mon.yaml ceph-mon`

 Add the ceph monitor relations
`juju add-relation ceph-mon:osd ceph-osd:mon`
`juju add-relation ceph-mon:client nova-compute:ceph`
`juju add-relation ceph-mon:client glance:ceph`

 Create the cinder.yaml file and adjust for your release
`juju deploy --to lxd:1 --config cinder.yaml cinder`

 Deploy the mysql cinder router and relations. Wait for the deploy to finish
`juju deploy mysql-router cinder-mysql-router`
`juju add-relation cinder-mysql-router:db-router mysql-innodb-cluster:db-router`
`juju add-relation cinder-mysql-router:shared-db cinder:shared-db`

 Add additional relations
`juju add-relation cinder:cinder-volume-service nova-cloud-controller:cinder-volume-service`
`juju add-relation cinder:identity-service keystone:identity-service`
`juju add-relation cinder:amqp rabbitmq-server:amqp`
`juju add-relation cinder:image-service glance:image-service`
`juju add-relation cinder:certificates vault:certificates`

 Deploy cinder ceph
`juju deploy cinder-ceph`

 Add relations
`juju add-relation cinder-ceph:storage-backend cinder:storage-backend`
`juju add-relation cinder-ceph:ceph ceph-mon:client`
`juju add-relation cinder-ceph:ceph-access nova-compute:ceph-access`

 Deploy radow gateway and relations. I don't know if this is strictly necessary, but I did it anyway.
`juju deploy --to lxd:0 --config source=cloud:focal-xena ceph-radosgw`
`juju add-relation ceph-radosgw:mon ceph-mon:radosgw`

 Deploy NTP
`juju deploy ntp`

 Add relation
`juju add-relation ceph-osd:juju-info ntp:juju-info`

# YOU MADE IT!
 Run these two commands to get your dashboard IP (http://<ip>/horizon) and your admin password.
 The username is admin and the domain is admin_domain
`juju status --format=yaml openstack-dashboard | grep public-address | awk '{print $2}' | head -1`
`juju run --unit keystone/leader leader-get admin_passwd`


