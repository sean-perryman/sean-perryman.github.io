--- 
layout: post 
title: Working Single Node OpenStack Ceph 
date: '2022-02-24 10:17:00.90 -0400' 
--- 
Well, I did it. I finally got a single node OpenStack install with Ceph and I can create volume-bascked instances without issue. Turns out, 
they leave a SHIT TON of steps out of the official documentation. You have to get a fully-working and "HEALTH_OK" Ceph "cluster" in order 
for this to work, which means creating pools and setting up the authentication and stuff. Anyway, this is working really well and I'm doing 
some testing and development and stuff with it. I am probably going to try and add another node to the ceph cluster and see what happens. 
Right now, the read/write speed is like 600MB/s for 4x SSD OSDs, so I think that is pretty good. Might try moving some disks around and 
adding a node with 2x more SSDs and see how the performance does. If it drops to like 50MB/s, then I am pretty sure it is because of the 
network at that point; something a single-node cluster wouldn't have to contend with. 
