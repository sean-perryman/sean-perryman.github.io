--- 
layout: post 
title: OpenVZ vs KVM 
date: '2022-03-28  7:57:22.33 -0400' 
--- 
I came across a [ServerFault post comparing OpenVZ to 
KVM](https://stackoverflow.com/questions/1603351/should-i-choose-kvm-or-openvz-for-my-vps "ServerFault post comparing OpenVZ 
to KVM"), and the respondent said something very insightful:

> It's extremely important to note that KVM requires a running kernel inside the VPS, whereas OpenVZ runs containers using a 
shared kernel. This means that a 256MB KVM VPS does not actually have the same amount of memory available to userspace that 
OpenVZ does.

I was always under the impression that you don't see tiny (128M, 256M, etc) KVM VPS because the overhead for the provider 
was too great compared to LxC or OpenVZ, but apparently it's the user who ends up with less "bang for their buck" so to 
speak. 

Do you find this to be true in practice? Do users not prefer a tiny KVM VPS because you have a higher overhead leading to 
less usable resources? I spun up a quick 2G KVM server with Debian 10, and this is the output of free -m:

    # free -m
                  total        used        free      shared  buff/cache   available
    Mem:           1997          70        1661           4         265        1784
    Swap:             0           0           0
    
Compare this to a similar 2G OpenVZ server running the Debian 10 template:

    # free -m
                  total        used        free      shared  buff/cache   available
    Mem:           2048          20        1966           9          60        2017
    Swap:           512           0         512

While I can't say for certain, I would assume this slight disparity would render a 128M KVM server worthless as far as doing 
anything, and a 256M KVM server as nearly worthless along those same lines. Thoughts?

[Cross-Posted from LowEndTalk](https://lowendtalk.com/discussion/178268/smallest-usable-kvm-vps/p1?new=1)
