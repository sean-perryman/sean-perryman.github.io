--- 
layout: post 
title: Remote Administration Can Sometimes Be Scary 
date: '2021-09-30  7:19:53.25 -0400' 
--- 
I've probably written about this before, but sometimes performing remote administration tasks can be scary. For 
example I have a small VPS that hosts a unifi controller that my house and some small businesses I support route 
their unifi devices to. For this most part this has worked great. I had a couple of people still on local 
controllers, so I thought I would take a shot at moving them up. The first site went great, no problems at all. 
The second site shit the bed. 

While I never lost connectivity, all of the devices (2 WAP, 1 switch, 1 gateway) started looping in the Adopting 
state on the controller. I was able to get the 2 WAPs and the switch fixed up by rebooting and quickly 
cancelling the migration (there is a button for this, great!) but the USG is stuck. Ass. I rebooted it several 
times, and upgraded the firmware manually, but it seems that I am stuck here; have to factory default. The 
problem is this office is across the country from me. I do have someone local-ish that may be able to go by, but 
dropping them from the network in the middle of the day is disquieting to say the least. 

Might just have to suck it up and do it. Or, I could buy them another USG and pre-config it, then send it out. 
That might be the safer way to go, those that is another $250 or so I'll have to spend to fix what amounts to a 
problem that didn't exist. Ugh. 
