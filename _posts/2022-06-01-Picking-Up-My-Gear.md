--- 
layout: post 
title: Picking Up My Gear 
date: '2022-06-01  7:27:02.46 -0400' 
--- 
I am going to head to Texas at some point to pick up my servers and stuff. I have decided to just bring 
everything back here so I can hopefully experiment and get the ssetup the way I want before re-deploying 
somewhere closer. 

If I can combine with a California trip, I can bring home a bunch of extra servers that I might be able to use 
to make the system work the way I want. Separating ceph and compute might make things better. 

I know I should have, but I didn't research Ceph enough before trying to deploy. Not only does it require a 
bunch of CPU, but it needs A BUNCH of RAM; like 2-4G per OSD. So with 6 OSDs per node, and 64GB of RAM per node, 
I'm not left with much for VM use. Separating the OSDs off to another node would allieviate that, hopefully 
enough to make the system usable. 
