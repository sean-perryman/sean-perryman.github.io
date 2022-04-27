--- 
layout: post 
title: Shit The Bed 
date: '2022-04-07 10:10:16.78 -0400' 
--- 
In designing this new hosting network shit, I neglected to account for my two little SM E3 boxes I originally 
bought/provisioned to do Minecraft hosting with. I don't know that OpenStack Nova can do two different types of 
disk provisioning (e.g. ceph or local), and because I neglected to connect those two servers to the storage 
network they don't appear to be able to host VMs anymore; other than what they already are doing.

in typing this up I got the brilliant idea to change up my globals.yml temporarily to disable ceph disk 
provision, deploy with a limit for those two server, then just created a VM on each of those boxes that consumes 
the whole thing. 

Then I can do whatever I want with the VM from there. That might work! Wouldn't be able to snapshot it or 
anything, but maybe I can create a couple of OpenVZ hosts or something I can do something with.
