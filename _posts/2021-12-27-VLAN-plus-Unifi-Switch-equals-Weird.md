--- 
layout: post 
title: VLAN + Unifi Switch = Weird 
date: '2021-12-27 10:07:39.56 -0400' 
--- 
I have a small Mikrotik router that segregates my lab from my home network. Part of this was so I can run a DHCP 
server for MaaS inside that stub, but also because I wanted to get more familiar with Mikrotik operations. Which 
I have done and it has been fantastic. 

Today I started messing with OpenStack Ansible, which has some very quirky requirements for bridges and vlans 
and such. I was able to get the VLANs working without issue on the Mikrotik device, no worries there. In MaaS 
you can pretty easily setup and deploy VLANs, so I did that there too. All good.

None of the VMs or hosts could communicate over the VLAN with the router. Damnit. 

I messed around for a while, then finally I added a VLAN in the same manner to my Mac Mini "jump" box and had 
the same result. So it's probably not the fault of MaaS. Since all of this shit is plugged into the same Unifi 
switch, I just took the cable from the switch for the jump box and plugged it right into the router. Pings 
started right away.

Plugging the jump box back into the Unifi switch stopped them again. Bummer, I thought these were set by default 
to pass VLAN traffic. Maybe not. 

I plugged a patch cable from that "back rack" switch into my PoE switch and discovered it on my Unifi 
controller. All of the settings were default and looked like they should work, but obviously they weren't.

I created a new switch profile and just selected "all" networks (I had previously created VLAN networks for 
OpenStack Ansible but they weren't in use), and applied that to all the switch ports on the new Unifi switch. 
Once that change propagated pings resumed.

MaaS started failing to deploy at this time, I am assuming because I had a patch cable and now there was another 
DHCP server competing. I removed the patch cable and was still able to ping the switch (I guess through the 
router somehow? Doesn't make any sense). MaaS started working again without issue, so that must have been it.

This has also been a good test for when I deploy a router at the DC, where I have to be able to act as the 
gateway for all the ranges I am renting. Here is hoping to that going well!
