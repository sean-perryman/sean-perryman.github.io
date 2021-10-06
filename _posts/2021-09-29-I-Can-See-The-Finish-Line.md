--- 
layout: post 
title: I Can See The Finish Line 
date: '2021-09-29  9:20:27.12 -0400' 
--- 
Sometimes you have a project that just hangs over your head forever, feeling like it can never be completed. 
Yesterday I did the last part of the Exchange migration I had started so long ago, and can finally see the end 
of that damned server in sight. It is the majority of the nessus warnings I get every day, and nothing was ever 
able to be done about it until now. I was able to complete the public folder migration with very little issues, 
it actually went WAY smoother than I anticipated. I feel stupid for being so worried about it for so long that I 
put it off to the detriment of my users. My bad. 

One thing that the instructions I used didn't mention is that it seems like if you migrate mail-enabled public 
folders from Exchange 2010, on the new server you have to mail-disable them and re-mail-enable them afterward. 
They weren't receiving messages and finally at the end of the day someone mentioned it, so I started messing 
around and found that to be the fix. Other than that, the next step is to uninstall Exchange 2010 from the 
server (apparently this performs a bunch of clean-up duties in active directory), then dcpromo the server to 
remove it from being a DC (thanks TT), then finally turn the server down permanently. Then, I only have the 
other DC to decommision and we are good to go! That one is hosting the majority of the firms rds profiles, so 
that migration will be fun. Not. 
