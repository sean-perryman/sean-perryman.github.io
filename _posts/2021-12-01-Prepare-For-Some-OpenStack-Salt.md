--- 
layout: post 
title: Prepare For Some OpenStack Salt 
date: '2021-12-01 13:15:54.82 -0400' 
--- 
After messing with Juju and stuff for a while, I've become re-invigorated for OpenStack I guess. I would really 
like to deploy this at the accounting firm, I think it could make things a LOT nicer than they are right now 
with VMware. Not that there is anything inherently wrong with VMware, just that it is VERY expensive and if you 
don't have that budget you lose basically ALL of the "cloudy" features. OpenStack is free in the grandest sense 
of it only requires a VERY specific skill set to utilize properly, and in that it could prove a much more robust 
platform for this whole thing. 

Juju didn't go well. Firstly, there are like literally 1000 commands you have to run and it seems that you have 
to let the previous one complete before running the next one (I've experienced it shitting the bed and having to 
go back and re-run a command to get this going), though I did make some progress on at least completing the 
install guide without error.

Most of the OpenStack problems I have had are all based around Networking in some form or another. Like most of 
the other parts of the system, I only have a basic cursory knowledge of Neutron. Maybe I need to figure out how 
to dig into that further because I feel that this shit shouldn't be THIS hard. 
