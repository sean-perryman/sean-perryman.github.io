--- 
layout: post 
title: Another Rowdy Outage 
date: '2022-03-21 17:04:24.81 -0400' 
--- 
A power distribution unit failed. There is spare on site. Instead of swapping it, which apparently the tech 
on-shift was incapable of doing, he just moved all of the cables from the dead PDU to the live one. This 
overloaded it and tripped the breaker. Now a full rack is down instead of just half a rack, which lead to no 
OpenStack functionality in a region until it was fixed. At this point he threw his hands up and escalated it to 
the next person shift, which would occur after about 6 hours or so. 

I know that stuff like this happens from time to time, but when it happens one after another in a short period 
of time it is really sucky. Just have to try and keep additional spare equipment on site, I guess. 
