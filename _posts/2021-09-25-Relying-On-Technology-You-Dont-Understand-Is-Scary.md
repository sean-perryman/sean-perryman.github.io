--- 
layout: post 
title: Relying On Technology You Dont Understand Is Scary 
date: '2021-09-25 10:27:19.66 -0400' 
--- 
A while back I had a postiion as a system administrator for a farm services company. They had previously been 
with an MSP who treated them poorly, and were looking to hire in so here I came. I won't bore you with the 
details, but at some point I needed to decomission an OOOOLLLDDDD netapp disk shelf thing and replace it, so I 
decided to try my hand at created an iSCSI lun on a physical linux host. I don't recall the exact circumstances 
surrounding it, but needless to say it shit the bed one morning. One of the luns, anyway. I don't remember if I 
panicked and had to just figure something else out or what, but I ended up rolling Windows Server and deploying 
the StarWind iSCSI software on that server. When I left it was still running solid, but the real question is 
what the hell could have possibly happened with the targetcli setup? 

After going through targetcli setup again on a new system, it is actually really intuitive. I admit I know 
significantly more about Linux administration now than I did, but I can't really think of a scenario where this 
thing would poop out like that. I mean, maybe the disk the LUN was on filled up or something? I think it 
staticly allocated the data so that's probably not the case. In any manner, at the end of the day I don't really 
understand this software, just basically how to set it up. 

This can be a scary prospect. It's not like VMware, which I've been using for 10 years at this point and am completely comfortable with. Or even to a lesser extent 
Linux as a server OS, which I've also been using for a long time and am fully comfortable with. Getting elevated 
at work to an increased resposnibility position has helped with this immensely. Before Chris left, he told me 
that "you're going to have to start googling more shit and trying to figure it out yourself", and he was 
absolutely right. 
