--- 
layout: post 
title: Postivity For Canonical OpenStack 
date: '2021-11-13  5:44:58.80 -0400' 
--- 
I've decided to try and read through the OpenStack docs for "Charmed OpenStack". Brandon was skeptical because when he spoke to them, they mentioned (from what I 
remember) just tearing down a node and rebuilding to upgrade to a new version. After seeing what happens with Virtuozzo Hybrid Infrastructure, I feel like this process 
would be like moving all the VMs over to a new node, rebuilding, then bringing the node back up. This seems to be, in my mind, the only way this would work. But I 
digress.

I was also always worried because it seems to require MAAS (metal as a service) to function, and this always worried me because I didn't understand it. Turns out that 
MAAS is actually really simple and I was putting too much thought into it. The MAAS server acts as a DCHP on it's own private network, which appears to want to be 
connected to at least 1 NIC on metal servers and the IPMI port (so it can power cycle). You just set your metal servers to boot to PXE and reboot them, and MAAS should 
handle the rest. 

I've also been playing around with Multipass, which is a virtualization helper thing from Ubuntu. Really easy to get VMs going so far, but not sure how routing and stuff 
will work in this context.My little test server only has 1 NIC currently, so maybe I need to dig up a dual port and figure out how to force the multipass VMs to use those 
other ports. Something to think about I guess!
