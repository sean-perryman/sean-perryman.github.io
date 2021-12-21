--- 
layout: post 
title: Juju OpenStack Is Literally Trash 
date: '2021-12-21  6:48:02.11 -0400' 
--- 
I've spent the last few days running through the Juju install of OpenStack. If you don't do shit in the exact order 
(which is absolutely not made clear in the docs), it just shits the bed altogether. It cannot survive a complete 
reboot of the system. Even following their protocols I could never get the MySQL cluster working again as a cluster. 
The whole system is just fucking trash.

Why the fuck would you not include VNC as a functional piece of this shit? This is supposed to be people's 
introduction to Juju OpenStack and you just conveniently leave out literally one of the most important pieces of 
this? If networking was functional from the start it wouldn't be as much of a deal, but it's not, so I would have 
liked to check the VNC console to see if the VM is even booted. 

Fuck juju. 
