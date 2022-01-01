--- 
layout: post 
title: I Feel Like A Real Dumbass 
date: '2021-12-13 16:22:25.15 -0400' 
--- 
The only OpenStack platform I have had fairly consistent success with is Kolla. Maybe that is because it 
requires relatively little pre-setup for the nodes, or perhaps more likely the error messages actually fucking 
return actionable items (Fuck you OpenStack-Ansible for this reason alone). Regardless, I did a one-node install 
today and it went fine. I uploaded my standard Debian 10 image, created the public network and an instance, and 
couldn't ping it. Shit. 

I destroyed the instance and the public network and ran the "init-once" script to have it create all the default 
shit for me. I added an approprate address on my node and was able to ping an instance then without issue. I 
removed the default networks and routers and re-added my "public" network and that worked, great.

I've had this happen before where networking didn't work until I ran that init script, so I thought what the 
hell I'll look through it.

Turns out the default OpenStack security group looks to be wide-ass open, but in reality it is incredibly 
restrictive. That script adds two interesting entries to the default security group, I'll let you decipher what 
they actually do:

> openstack security group rule create --ingress --ethertype IPv4 --protocol icmp default
> openstack security group rule create --ingress --ethertype IPv4 --protocol tcp --dst-port 22 default

Now I feel like a fucking idiot because what if all the Juju installs I did actually worked? Now I have to do 
ANOTHER one to see if that is the case or not. Might be a good case-study to see what happens if I just shove 
all the commands in at once instead of waiting for the previous to finish before running the next one. I'm sure 
I'll let you know how it goes. 
