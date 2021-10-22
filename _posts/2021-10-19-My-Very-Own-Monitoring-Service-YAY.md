--- 
layout: post 
title: My Very Own Monitoring Service YAY 
date: '2021-10-19 16:11:31.09 -0400' 
--- 
Literally for YEARS I have wanted to make my own monitoring service, something that is not easily covered by 
publicly available services like NodePing and UptimeRobot. Something that is all internal, and will alert on an 
internal service or server down. Historically, I have always wanted to approach this with using an agent 
installed on the machine and reporting back, and missing however many reports would trigger an alert. I have 
really been overthinking this whole thing for a long time. 

Instead of writing an agent and a backend and all that, I can just use the simple php ping function outlined 
[here](https://tournasdimitrios1.wordpress.com/2010/10/15/check-your-server-status-a-basic-ping-with-php/). The 
author even provides a simple web interface for it as well, though I already have some ideas about how I would 
want to go about it instead, but the principle is solid. I could even deploy this on raspberry pi machines at 
remote sites to give some correlation for alert confirmation. 

The concept is to build a simple web interface where you can monitor machine and add/delete them. These would 
write to a MySQL DB. A cron job would poll that DB for end points, check them, and write that data back to the 
DB. If a server is down after (let's say) 3 attempts it would trigger the alert, but would be a PHP script that 
sends a text to my phone. 

Doing it this way I can also view historical data; perhaps I can capture the latency from the ping as well as 
success/fail and try and view any network issues? I can't image that would be super helpful though as everything 
is in the same rack, and in many cases, on the same hypervisor, but you never know I guess. 

I should probably put this on a separate machine with it's own power supply and stuff, if I was trying to be 
classy about it I guess. Oh well, maybe later. lol
