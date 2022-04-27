--- 
layout: post 
title: Every Once And A While 
date: '2022-04-08 10:53:04.77 -0400' 
--- 
OpenStack has a problem where it's just like "how the fuck do I even start to troubleshoot that?"

Today, it was not injecting SSH keys into new VMs. Why is that a thing? I did a few searches and literally no 
information was available, so I just rebooted the controller and the host. Not ideal in a production 
environment, but I'm not in production so yolo.

Anyway, working now. Probably should figure out at some point how that process is achieved; whether it is 
initiated on the host or the controller. At least then I could narrow down which to bounce. 
