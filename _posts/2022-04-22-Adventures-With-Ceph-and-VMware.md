--- 
layout: post 
title: Adventures With Ceph and VMware 
date: '2022-04-22 15:49:26.43 -0400' 
--- 
Seriously, this is an adventure. In principal it should be easy. Create your Ceph cluster, create an iSCSI 
export, connect to VMware. In practice? It doesn't work at all. In fact, I spent a whole week solid and I 
finally found someone who explained exactly how to do it, and when I finally made that connection the transfer 
was incredibly slow. 

What I've learned about Ceph is that you shouldn't try and fit it somewhere that it wasn't meant to. Though you 
can technically make an iSCSI or NFS export with Ceph, it seems to work best in RBD with an operating system and 
hypervisor that it was meant to interact with. 
