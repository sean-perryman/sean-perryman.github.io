--- 
layout: post 
title: A New Way Of Thinking About Virtualization 
date: '2021-12-29 16:18:11.24 -0400' 
--- 
As far as virtualization goes, you might typically picture virtual machines and things like VMware, Hyper-V, 
VPS', and even OpenStack or containers. There is a lot more to virtualization than just that, as evidenced by a 
recent research expedition into OpenVSwitch and SDN (software defined networking). What started out as a way of 
automating the blocking of certain troublesome ports by default turned into this whole thing where you can 
provision a server and have it unblock particular ports by default, then you can have a user submit specific 
pieces of information and have that trigger another unlock system for other ports and so on. 

Virtualization is much more than just the basic "take a hardware node and split it up into a bunch of virtual 
environments" anymore because you can virtualize so many other things. Virtual switches have been around for a 
long time in my view inside of VMware, but I never really had any use for them. All the networks I worked on 
were pretty simple and didn't require extensive segregation or routing changes. 

Then I started working at a VPS host and the complication of networks increased, so I started trying to learn 
more about it. I've done some fairly basic switching and routing stuff at my house, at least equivalent to what 
a small VPS provider might need to do, but in some of these things it gets pretty hairy. Way beyond my 
understanding. 

I know that I am probably searching for the wrong stuff, but finding info on OpenVSwitch and how it integrates 
with hardware has been difficult. It's pretty easy to figure out on a base-virtualization level, as you can just 
interact with the vSwitch as though it was a physical switch. You have your VMs "plugged" into specific ports on 
the switch and you can do whatever with it. 

Anyway, virtualization applies to much more than just VMs anymore. I like how most of these posts devolve into 
some weird incoherent rant that vaguely borders on the subject in the original title. 
