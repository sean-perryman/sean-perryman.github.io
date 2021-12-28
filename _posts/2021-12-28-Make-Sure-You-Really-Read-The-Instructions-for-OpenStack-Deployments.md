--- 
layout: post 
title: Make Sure You Really Read The Instructions for OpenStack Deployments 
date: '2021-12-28 10:03:25.02 -0400' 
--- 
I admit it freely, I just skip to the commands and start going. This has caused me tons and tons of lost time, 
but I tell myself that it lets me learn better how to troubleshoot issues. Whatever.

In this case, though I didn't see it anywhere in the docs I had, the infrastructure/deployment host for 
OpenStack ansible apparently has to have the "br-storage" bridge as well as the compute/storage nodes. I didn't 
have this in my notes, which is why when a couple of LXC containers failed to provision I was concerned. 

What I did to resolve it was re-run the playbooks and watch for the error, quickly highlight and copy the error 
out to a text editor, then I saw that there was a log path for this specific LXC container. That log was 
absolutely filled with garbage that was not at all useful, but way near the top you can see a network bed-shit 
because the storage bridge was not available.

Great.

As I'm using MaaS for this KVM VPS my changes to netplan won't persist, and I cannot make permanent changes in 
the MaaS system without burning the VPS. Whatever. I just added the bridge and the vlan to netplan and applied, 
and voila. It worked. 

Make sure you read the instructions. Not just glance over them (pun intended), but actually read them. Start to 
finish. You will save yourself a lot of time. 
