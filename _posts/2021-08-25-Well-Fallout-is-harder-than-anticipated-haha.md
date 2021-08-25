--- 
layout: post 
title: Well, Fallout Is Harder Than Anticipated HAHA 
date: '2021-08-25 10:00:00 -0400' 
--- 
I decided I would go ahead and try and complete Fallout but figuring out what this lab was and destroying it. The problem with that is, they don't give you 
any hints. I think that in modern games we have gotten used to just being handed everything straight away, then having the challenge of the game be defeating 
those enemies or whatever. Old games like this don't bother, you just figure it out for yourself. I think I am on the right track though, I went back to The 
Hub and signed on for a caravan which is likely to be attacked. I am hoping that these attacks are from Super Mutants, though I am hardly in the right shape 
to deal with them. Maybe I need to walk around the overworld some more and level up so that when I go on this trip I can actually complete it competently. 

This whole situation is kind of like IT. There are several processes and procedures that are so widely documented, they might as well be on easy mode. Others, 
however, there is literally no documentation and perhaps no indication that anyone else has ever faced this problem. For example, between offices I have a 
back office VPN connection between two Watchguard FireBox devices. These are relatively new devices, both with recent firmware, and are configured following 
their VPN reliability best practices. These tunnels drop out multiple times a day, and the only way to get them back up is to re-key the VPN. After having to 
manually do this in the web interface for a good while, I figured out I could script it. It started out that I wrote a script to do this and left it on one of 
my Linux servers, so that from my phone I could open a terminal and quickly type in ./go.sh.

After doing this for a few months, I decided to figure out how I could script it. Using nc (netcat) and targeting a static device on the other end, I was able 
to make a rapid determination of whether or not the tunnel was up. If it was, nothing. If not, a function would fire that would issue this re-key command and 
send me an email letting me know the tunnel is back up. There have been several times where I woke up to hundreds of these emails (they fire every minute with 
no stopping), but for the most part it just works as intended. Very strange that a simple re-key will fix the problem in 99.99999% of the cases, but such is 
life. I did, at one point, stumble across someone else with this same problem. I should probably post a copy of my script for them to see what I did, in case 
they are still struggling with it.

Regardless of the capacity to resolve the problem in a minute or so, the connection still blips for people in the office. Now this has not been such a huge 
deal since covid, but since they have started coming back in periodically it has reared its ugly head. The drops seem to correlate most often with traffic 
density, but other than that I can't really pinpoint a cause. WatchGuard does have anothe bovpn type called TLS, which is meant for places where ipsec will 
not work, so I may try that out. Having persoanlly been connected to OpenVPN connections for literally months with no drops at all, it's quite possible that 
this other VPN type will be more reliable. We will see!
