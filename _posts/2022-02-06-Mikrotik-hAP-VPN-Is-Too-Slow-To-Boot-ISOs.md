--- 
layout: post 
title: Mikrotik hAP VPN Is Too Slow To Boot ISOs 
date: '2022-02-06  7:04:10.32 -0400' 
--- 
This sounds kind of weird to say, but my little Mikrotik hAP Lite VPN tunnel is just too slow to boot ISOs to OOB on my 
servers. I tried this a few months ago or something with those two SuperMicro servers that live in the rack and are doing 
nothing, and I could never get Ubuntu to boot past the part where it first turns purple and shows a logo.

Fast forward and I'm working on a different server (the twin r610 to the server that is currently running) and it's the same 
exact thing; won't ever get past that part of the boot. 

I try Debian because it has a lightweight network-based installer, and it actually gets to the install part, but for whatever 
reason the network is not functioning on it as it should. I spent a considerable amount of time entering network info but it 
just wouldn't do it. I gave up for a time and went back to doing other stuff. 

Later on I figured out that I could probably prop up a quick VM on that other server with pfSense or something, enable DHCP, 
and just let that server get a lease and do it that way. In doing that I could theoretically complete the network install then 
SSH from my existing server to that one to perform the actual external network config. 

Sometimes you just have to marinate on a problem for a bit to find a solution!
