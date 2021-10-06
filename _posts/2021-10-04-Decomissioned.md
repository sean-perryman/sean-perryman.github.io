--- 
layout: post 
title: Decomissioned 
date: '2021-10-04  6:58:01.26 -0400' 
--- 
I am in the final stages of removing Windows Server 2008 R2 from one of the environments I manage. I finally got 
Exchange 2010 migrated and turned down that server (which was also a DC, why? I have no idea), and am finalizing 
turning down the last 2008 R2 server which is only holding terminal services profiles at this point. I've 
written about that before, it is a shitshow to say the least. 

What I am going to do is after I dcpromo it and remove the AD components, I'm going to do a final robocopy of 
those tsprofile files over to the new tsprofile host. I'll power down the server, then I'll go into my AD DNS 
and change the A record for that server to the IP address of the new server. I've tested this out by making a 
"test" A record pointed at that server, and the shares came up.

Doing it this way, I hope that I won't have to make any drastic changes to anyone's user profile; at least not 
yet. That is another mess waiting to happen. Hoping that by combining all of them, I can just push that registry 
fix out and have people basically fix their own problems. Hopefully.

Maybe I can make it a logout script? I'd have to see if getting booted triggers it, as many people just stay 
logged into Citrix until the system boots them out at reboot. Who knows. 
