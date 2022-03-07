--- 
layout: post 
title: Selling VPN Services 
date: '2022-02-10  6:56:13.63 -0400' 
--- 
Selling VPN services is something I've always wondered about. How do you provision the accounts and such? Do you have some sort 
of automation that generates the OpenVPN client certs and stuff? 

Turns out you can use a system called RADIUS (remote access dial in user service I think) to provision user accounts which 
OpenVPN can authenticate against. I haven't gone down the rabbit hole on how to actually do this, but it looks to be relatively 
easy. HostBill has a FreeRadius module that can automate account provisioning and such, so that might be another avenue toward 
making a few bucks with my little hosting venture. 

Or at least offer me a shiny new distraction to disrupt me from completing it!
