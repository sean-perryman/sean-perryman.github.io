--- 
layout: post 
title: Falling Behind 
date: '2021-09-28 16:22:36.15 -0400' 
--- 
So many times I realize that I haven't yet written my post for the day, but I still don't do it. No real reason 
why other than just getting wrapped up in something else I guess. It has certainly been a lot better since I 
quit browsing those websites I've sworn off, but even at that they do creep in a little here and there. I think 
it is like with a drug addiction or overeating or something; when you quit before you are really ready, you just 
replace it with something else. 

On another note, I'm cruising right along with my projects and getting all caught up. The next one is moving 
some terminal services profiles away from an old 2008R2 server, which is the one I am really dreading. The 
problem is that either by my misconfiguration, or someone elses, the TS profile locations are hard-coded into 
the registry for users who are more than a couple of years old. This means that I have to either manually clear 
that, or set up a login script that resets that particular registry key to what it should be. My intiial testing 
shows that if you do that, they lose some settings that these folks deem critical. 

I tried once to tell them I was just going to do it and they should expect these things to change, but it didn't 
really go over as well as I'd hoped. I thought about maybe checking to see if the registry key needs to be 
reset, and if it does do it then tell them, log them out, and copy the profile from the old profile to the new 
one. That might still work, just need to kick it off. Who knows, will probably just end up manually resetting 
everyone's profile myself. 
