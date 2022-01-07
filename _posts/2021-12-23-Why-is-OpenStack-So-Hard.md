--- 
layout: post 
title: Why is OpenStack So Hard 
date: '2021-12-23 10:50:25.56 -0400' 
--- 
I often ask myself why OpenStack is such a difficult system for me to fully wrap my head around, and from what I 
have read on forums and such, I am not alone. I think that in my particular case it comes from a background of 
hand-holding when it comes to virtualization systems; meaning I am most familiar with Hyper-V and VMware which 
both hold your hand extensively during the setup and deployment process, and even afterward for maintenance and 
repair activities. 

OpenStack different from these systems in that there is quite literally no hand-holding involved or, in most 
cases, even available. I spent about 2 years as an administrative support user of an OpenStack cluster, meaning 
I would assist other people with end-user problems in OpenStack, not actually performing any specific 
maintenance to the infrastructure myself. During that time I thought I picked up a lot of how the whole thing 
fit together, but obviously I was mistaken. 

My first few test installs went very poorly using OpenStack-Ansible, mostly because the documents are very 
cryptic in places and hard to understand for someone who isn't used to deep-diving into technical documentation. 
I did finally manage to get a working install after I figured out that unless you specifically install and set 
up Cinder correctly with some sort of backend (yes, you can install Cinder with a backend. Why, I do not know) 
the creating an instance with the volume option on at all will case it to fail. Once I figured out that 
un-checking that option allowed me to create a VM, I was up and running. Sort of. 

The next hurdle was/is networking, which has been a journey to say the least. During my trials with 
OpenStack-Ansible I started messing around with other deployment methods, one of which seemed incredibly easy: 
Microstack by Canonical. Literally two commands and you have a running OpenStack installation. Obviously the 
true nature of this is not so simple. 

I will get into this further in another video, but even the "OpenStack on Rails" doesn't work when the rails 
aren't connected to anything. The system fails to install any sort of networking bridge to the external network, 
so your VMs can only communicate with each other. not even the host system can connect. 

All of this leads to OpenStack being an absolutely fantastic and exciting concept, but in practice it takes 
sincere dedication and a time investment to get on top of it. VMware and Hyper-V on the other hand take 
literally no time investment to get working, with Hyper-V installable with a single Powershell command on an 
existing server install. 
