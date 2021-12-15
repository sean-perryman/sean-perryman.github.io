--- 
layout: post 
title: Maybe Im Just Not Cut Out For OpenStack 
date: '2021-11-23 19:05:43.91 -0400' 
--- 
* Backdated post
I found a kind of walkthrough on getting networking working on MicroStack. Side Note: WHY THE FUCK DID YOU 
RELEASE THIS WITHOUT NETWORKING BEING FUNCTIONAL? It doesn't make sense. The guy that runs the project commented 
on this post that it would be good to add in. Yeah, no fucking shit. 

Anyway, I go through this whole thing once and my system shits the bed. Can't connect. I use MAAS to burn it and 
start over. Get back to the same point and make a script that will perform all the commands so hopefully it 
won't dump me out. I'm able to get in on a different IP now, and when I try and change it back to my original IP 
and reboot it never comes back up. Shit. MAAS release and deploy again, this time pre-adding a netwokr bridge to 
the adapter and retaining the storage config for the deploy. Now the default instance won't deploy. Shit. The. 
Bed.

I know I have to keep at it if I ever want to get this working, but it is REALLY frustrating. This one in 
particular is supposed to be "OpenStack for Dummies", but it has, again, proven itself to be more complicated 
than it is worth. 
