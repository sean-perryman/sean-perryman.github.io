--- 
layout: post 
title: MaaS Messes With Too Much 
date: '2022-01-08 13:37:18.97 -0400' 
--- 
I've been farting around with MicroStack a bit, and I may have mentioned this before, but there is a specific 
[blog post](https://connection.rnascimento.com/2021/03/08/openstack-single-node-microstack/) with instructions 
on fixing networking for an "OpenStack on Rails" install (external networking 
doesn't work; basically have to create a bridge). This works great on a bare node, no problem. It even works on 
a MaaS-deployed node, but doesn't survive a reboot. I think that MaaS re-writes network config stuff on reboot, 
as it says that it does in the config files lol

I've tried pre-creating the bridge in MaaS like I have done with other OpenStack installs, but it doesn't work 
the same. Oh well, can't have everything I guess!
