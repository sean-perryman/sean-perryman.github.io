--- 
layout: post 
title: MAAS KVM Host Is Awesome 
date: '2021-11-28  5:45:45.42 -0400' 
--- 
I was messing around with something in MAAS and noticed that when I provision a node, if I select Ubuntu as the 
OS it gives me the option to register the node as a MAAS KVM host. What this means is that the node will be able 
to deploy KVM VMs right from MAAS, that seem to act exactly as physical machines do; with PXE booting and 
everything. I don't have enough disk space on that node to deploy the Juju test environment, so I ordered some 
more HP SAS drives (have to get HP or else the fans spin ALL the way up ALL the time). 

Let's hope for a positive result here! Still trying to get something going to replace a VMware environment, I 
haven't given up hope yet!
