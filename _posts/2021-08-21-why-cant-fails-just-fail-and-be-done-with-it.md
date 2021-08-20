---
layout: post
title: Why Can't Fails Just Fail And Be Done With It? 
date: '2021-08-20 10:30:00 -0400'
---
I've spoken about this previously, but I have what amounts to an experimental SAN system in a production environment. While it is currently working as 
intended, I just feel like I cannot trust it completely yet. A couple of days ago, after a week or something of no problems, one of the nodes locked up. This 
is completely unacceptable, because if I am rolling this out I need all of the nodes working or we are going to be in trouble. So, I sit and wait with my one 
or two small "inconsequential" VMs running on the iSCSI disk and hoping that it stays going. I will say that even with the node down (and having to grab IPMI 
and physically reset it), the iSCSI disk stayed running. I guess there is something to say for hot replication. 

I spent like 3 months just working with regular old Ceph and trying to export an iSCSI disk and it just never would work right. I even came across an article 
which laid out step by step (albeit on an older version) how to do it, and I was able to finally make a connected to VMware, but it just wasn't want I was 
after. What I really want is something like I have currently with just an OS that exports iSCSI disks, but that can self-replicate between nodes. I know I can 
do this if I have basically double the ESX hosts with the VMware replication appliance or whatever, but that isn't necessarily what I am after. This PetaSAN, 
on the surface, has it all; easy to install, operate, and maintain. They even have an updater where you just install the new version over the top and you are 
rolling. This freezing issue, should it recur, is the only real problem I have. I guess I'm just complaining to complain.

On a side note, my AV software said their was a persistent web shell on an Exchange server I manage last night. I logged in and didn't notice anything weird, 
and looking at the report it was mentioning the MSExchangeMailboxReplication.exe process and showed it was only connecting to the other Exchange server and 
the two DCs in the environment, so maybe it was a false alarm. It didn't have any useful port information that I could block outbound just to be paranoid or 
whatever. Maybe I should take another look at that lol
