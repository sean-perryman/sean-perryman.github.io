--- 
layout: post 
title: I Did A Full Reboot Of My Kolla Environment 
date: '2022-01-05 16:40:20.48 -0400' 
--- 
And the shit actually came back up and is working as intended! I really feel like Kolla has shone a new light on 
OpenStack for me, much much easier than OSA and Juju-based deployments, though certainly not a pretty (I really 
like the Ubuntu Charmed-Horizon theme, maybe I'll see about stealing it heh). 

All of the instances were shut down, but that was kind of to be expected. I am wondering if there is some way to 
automatically start them back up when they are available other than scripting it or running a cron job or 
something. 

Anyway, this has been a MUCH better outcome than with Juju which basically shat the MySQL cluster when I did a 
full-power-down and up. After all of these installs I can say that none are technically easier to use than the 
other, though Kolla installs with basically 3 commands and seems to continue working even after you get mad at 
it, so there is that!
