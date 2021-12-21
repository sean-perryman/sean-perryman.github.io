--- 
layout: post 
title: OpenStack Kolla Might Be The Holy Grail Of OpenStack 
date: '2021-12-09 18:41:56.52 -0400' 
--- 
I know that I have sounded anxious about an OpenStack win before. I know I have. This time I am feeling super 
positive. After the shitting on that Juju gave me, I needed it. I always shyed away from Kolla because I don't 
understand Docker super well. Boy, was I wrong.

[Check this video out](https://www.youtube.com/watch?v=9chL31_ViVI) for an old, but solid walkthrough on 
deploying Kolla on a VM. This guy really seems to know his stuff. You can ignore the stuff about his Github 
though, after watching this I knew enough to just hit the official docs and have at it. 

Once you have done it, it really isn't so hard. Pay extra attention to reading the section headers because there 
are two different installs going on in those docs (in a python v-env and without), so make sure you select a 
path and go down it. I was able to use CentOS 8 (not stream) as a base, then upgrade to Stream, then deploy 
Kolla. If you go to the very end of the docs there is even a little init script that creates some default shit 
for you. Not that you need it, but seeing how the default public/external network was created and configured 
really helped. I ended up removing it and recreated with my own subnet and it worked! 

Next step there is to try another install in the same fashion, and if that works I'm going to try a multinode. 
Assuming that works, there is also a doc on integrating Ceph (LOOKS REALLY EASY!) 
[here](https://docs.openstack.org/kolla-ansible/queens/reference/ceph-guide.html) that I want to try as well, 
which would net me what I always wanted: a 3-node hyper converged cluster. From there it would be trying it with 
multiple ceph disks per node, then the possibilities will be endless.

Super stoked on this!
