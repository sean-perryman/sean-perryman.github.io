--- 
layout: post 
title: Supposed Redundancy 
date: '2021-10-24 13:05:09.65 -0400' 
--- 
I mentioned last time that I run 3 Citrix XenApp hosts. I actually run 5, 3 for one team, 1 for another team, 
and 1 for testing/my own use. Even though any of the three would technically be able to hold the whole company 
and probably let them work fairly well, I like to split it up in case there is an issue with 1 or more, or a 
host is having a problem. Each of the three primary VM hosts has a Citrix XenApp host on it. This way, in 
theory, if I drop a host most other shit will keep running. lol

The rest of the infrastructure is spread out among those hosts, meaning if I drop a host I could potentially 
lose a lot more functionality. VMware has some HA functions, but that would mean that I would need centralized 
storage so that the HA could just basically move the connection from the dead host over to a live one. 

I do have centralized storage, 3 physcal nodes with iSCSI targets on each. There is no redundancy between them, 
so if I drop one of those I lose access to whatever is on it. Sure, I could restore from a backup, but that will 
take a while depending on what I need to restore. 

There has to be some easier way of doing this shit. Some way that makes it all more compact and way more fault 
tolerant. I know that, technically, running OpenStack over CEPH could achieve this, but I am still skeptical 
after seeing the CEPH performance during my testing. It was literally shit, like 50MB/s where the RAID10 was 
running at 1GB/s+ consistently. Maybe I was just doing something wrong, who knows. 

Probably just need to try harder to learn it and get the test system working the way I wanted. Really would be 
nice to have some true redundancy in place. 
