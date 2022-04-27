--- 
layout: post 
title: Ceph not behaving 
date: '2022-01-30  7:21:19.70 -0400' 
--- 
I have ceph running on 8 nodes; 5 of them have 6x SSD and the others have 5x HDD. The CRUSH maps are set and 
the pools are supposed to be going to where I want them, as evidenced by the output of ceph df showing the vms 
pool with more available space than the backups pool. This is consistent with the disks I have in use now. 

The problem is the performance is still ass. I'm not expecting miracles or anything, but I was under the 
impression that ceph performed better with more SSDs. I have 30 of them in this cluster going over 10G network 
and I am getting about 150MB/s, which is sub-par to say the least.

Still going through the troubleshooting steps but judging by how bad my host loads up when I run a VM benchmark, 
I would guess that is probably the problem. Only a single-core 1G ram VM on that host and the load jumps to 10, 
which is certainly not expected.

I did finally figure out how to get the storage network segmented and working, so at least there is that. 
