--- 
layout: post 
title: Well, Virtuozzo Doesn't Seem To Have Worked Out.
date: '2022-03-15 19:01:35.57 -0400' 
--- 
I don't know if it is necessarily anyone's fault or anything, it just isn't working out. It started with the 
installation taking fucking forever, then during the training he informed me I could have done it myself. Great. 
Then it was the marketing folks, and a failure to launch from there. Then it was working with some Virtuozzo 
partners on somethings, and that never worked out. 

Then today I started messing with my cluster, I only have 1 VM on it that is running HostBill and my website. 
Well, I accidentally clicked the Reboot button when I was looking for something else and rebooted the server. No 
big deal, right? Well, after the 30 seconds it should have taken to come back up and it didn't I opened the 
console. Stuck at a grub prompt. I power-cycled the VM and got back to the grub menu, selected the first entry 
like you would expect, same thing. 

Sure, I could probably work it out and get the server running again, but that was really the only thing stopping 
me from tearing down the cluster and starting over, which assuming I can restore the off-site backups I've been 
taking, I am going to do. 

I bought some more networking equipment and will make a trip to TX at the end of the month. Once everything is 
wired and configured how I want (I made A LOT of mistakes when deploying, some that are not suitable really for 
hands to fix), I'll deploy a Kolla cluster with the 5 compute nodes and the 2 R610's for controllers for now. 
Hopefully, at some point I can actually sell a VPS and feel vindicated with this whole adventure. 
