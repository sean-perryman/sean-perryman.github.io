---
layout: post
title: "Why, VMware, why?"
categories: computing
date: '2021-08-16 09:00:00 -0400'
---
My first VMware deployments went about like everyone elses'; local storage on the host, stand alone hosts (even 
multiple). This gave way to implementing a vCenter server for centralized control (and the ability to migrate, 
which was fantastic). 

Eventually, I deployed a single-purpose server that run Windows 2012 R2 and is an iSCSI 
host for those VMware boxes, which affords the ability to basically hot-migrate between hosts. Great. This 
leaves us with a fatal flaw in the system (which has happened); if the iSCSI host goes does, everything stops. 
There are one or two specific VMs that run on local storage still (vCenter server appliance, for example), but 
for the most part everything runs on that host. Now, knock on wood, that server has been really solid for the 
past 4 years or so, but to everything there is a season. 

So I started looking at other alternatives. Starwind vSAN is a neat concept. It has you install appliances on 
your hosts, then it takes local storage you assign it and presents it as an iSCSI target that's replicated 
between those appliances. After pooping around with that some and determining it wasn't what I wanted to use, I 
came across Ceph which is a mystical beast in and of itself. 

While Ceph is great for native Linux and OpenStack and all those good thigns, it does not integrate with VMware 
at all. You have to set up specific iSCSI targets on the Ceph cluster, which using any of the available Ceph 
deployment tools is unfeasible to deploy. I was only ever able to make it sort of work once, and even at that it 
certainly wasn't what I wanted. If something breaks I have to be able to fix it, there is no one else I can lean 
on. 

Then I came across an open source project called [PetaSAN](http://petasan.org) which puports to do all the heavy 
lifting for you. It forces you to install on at least three nodes, clusters them, and presents you with methods 
of deploying that storage to wherever you need it. I was able to install it on a test environment, though 
without the benefit of full-SSD backing, individual disks, 10G network, or any of the other niceties. It worked 
well enough I guess, I was able to see the iSCSI disk and create a datastore that was then visible to my other 
hosts. Fantastic. There is a thing called Fencing, which is probably part of Ceph itself, which turns off a node 
if a heartbeat is missed. Apparently, it sends a shutdown command. That's no good. 

I posted on the forums and the "admin" told me that this would happen if there is a network issue, and I deduced 
it was probably due to the insufficient resources I presented to the cluster. Fair enough, I deployed on the 
physical nodes I purchased for this. 

The install overall went fine, but now I find myself with an issue where a node will just freeze up on its own. 
There are some non-sensical messages in the console (over the top of the little ansi menu screen you are 
presented with) and the node is dead-locked. Have to power cycle it. So long as it's not more than one node, the 
cluster continues to function, however I feel like once or twice the iSCSI disk has stopped and caused me 
trouble. I don't have any production VMs on this yet, but time is a-wasting and I need to shit or get off the 
pot. 

Why can't VMware just integrate with Ceph directly? If OpenStack wasn't such a pain in my ass I'd consider just 
moving my production stuff to that, but I have never been able to reliably get OpenStack working on my own. 
