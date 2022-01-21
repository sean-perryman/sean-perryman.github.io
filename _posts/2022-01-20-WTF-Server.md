--- 
layout: post 
title: WTF Server!?
date: '2022-01-20 19:54:29.83 -0400' 
--- 
I hav a pair of these old SuperMicro E3-1230v1 servers in a colo. When I was there last week, I wanted to reset 
the IPMI passwords on them just to make sure I had them. I didn't get to it, and I also didn't have the correct 
passwords recorded. 

It happens. 

I ended up having the DC connect a spider to the one I couldn't get into and rebooting into single user mode to 
reset the root password (I decommissioned the server that had the ssh key for it), then I used IPMICFG to reset 
the IPMI password. Easy peesy.

Now I am trying to install a new OS and it's just sticking there. It hits the initial boot, and I think that it 
is (for some reason) hanging at trying to load the ISO over. 

I'm going to try connecting to IPMI from a server on site and see if it goes any better. But seriously though, 
wtf? This thing is giving me tons of problems.
