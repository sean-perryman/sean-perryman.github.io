--- 
layout: post 
title: Sometimes The Easiest Solution Is The Best 
date: '2021-10-21  8:45:45.16 -0400' 
--- 
When I first started doing this, I was unaware that most people rebuild their Citrix/RDS servers annually. I 
found this out in like, 2019 I think after the servers had been in place for a bit over 2 years. At that time I 
started planning on replacing them, but never quite got around to it. I started at it a couple of times, but 
never really got very far. By that time my version of Storefront was too out of date to easily upgrade to a new 
version, so I was stuck on an older version and with an older XA version too. This is not the end of the world, 
as I did have the forethought to install an LTSR (long term service release) version of the software, so it has 
received updates as late as August of 2021. So that's not a huge deal. 

I've been working on a 2016 server (currently using 2012R2) and I got it all prepped and all the apps installed. 
I wrote earlier about my trouble getting XA to register, but I got past that as well. I started testing it 
yesterday, and it absolutely would not pull down my roaming profile. Damn. I started looking more and it turns 
out that every fucking version of Windows server has quirks with profiles, and as such, it implemented a 
<profile dir>.V6. The .V2 from 2012 was bad enough, now everyone is supposed to have 3 directories in the 
terminal services profile folder. Ugh.

I was sitting there and I thought about just rolling a new 2012R2 server. Why not? It's not technically EOL 
until 2023, which will give me the time to figure out a proper solution to this problem and roll out new 
2016/2019 servers after the next season. Sweet!
