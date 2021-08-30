--- 
layout: post 
title: Why Can't Shit Just Work?
date: '2021-08-30 09:30:00 -0400' 
--- 
This post title is a bit of a misnomer, because what I am referring to does technically work; just not as one 
would expect. I am working on a VM storage subsystem that provides replication and (supposed to) be fast on 
reads and writes, but it just doesn't work that way. I may have previously talked about [PetaSAN](petasan.org), 
which is more or less an all-in-one ceph + iSCSI + other export methods installer. You install this on a 
physical host and go through a few quick setup sets and Bob's your uncle. For the most part I can verify this is 
true; the setup is simple and getting an iSCSI disk attached to a VMware host is easy. This is where it gets 
fucky. 

I implemented this a couple of weeks ago and was just kind of watching to make sure it was working. I had a 
couple of non-essentials VMs on there and they appeared to run fine. I've been fighting a general slowness issue 
for a number of weeks at this point, and just deciced that maybe I should check the disk I/O. Fuck. It is 
absolutely shit on the PetaSAN datastore. Like really bad, 20MB/s. On the old ass wore the hell out SSD "SAN" 
Windows iSCSI initiator I use currently, with old consumer-grade SSDs (Samsung Evo's I think), it's showing 
280-350MB/s, which is also while the system is under load. I reinstalled PetaSAN again (for big config changes 
it's a reinstall and re-build the cluster) to enable Jumbo Frames. This helped, but not much. 80MB/s with no 
other load. 

For shits and giggles I just installed Debian straight on the node and created a software RAID10 with the 4 
intel DC SSDs. 680MB/s. Shit. 

Now what do I do? The whole point of this was to cluster it, but now it seems like it would be better served 
just doing a RAID10 on each node and doing an NFS or iSCSI export and just treating them as 3 separate 
datastores. This is, I guess, something I'm still going to have to wrestle with for now. There is apparently a 
way to replicate with NFS, but I don't know enough about it to implement it in a production environment. Maybe I 
should take another crack at getting OpenStack going with Ceph on each node. This is something I kind of wanted 
to do anyway; move away from VMware. I've never been successful with it in the past, so the oddds of getting 
this going correctly are slim, but there is the new concept of PackStack that is intriguing. Maybe I will 
finally read that whole TripleO OpenStack deployment primer and have another go at it. 
