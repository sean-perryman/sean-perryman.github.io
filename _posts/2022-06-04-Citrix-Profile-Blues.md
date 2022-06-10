--- 
layout: post 
title: Citrix Profile Blues 
date: '2022-06-04  7:22:08.51 -0400' 
--- 
I didn't really have another idea for a title here, though in all honesty I am just trying to do these as much 
as I can to get caught up. Though I am pretty far behind, I think I can catch up. 

My users are having an issue with the XenApp hosts I created last year where a couple of preferences aren't 
saving correctly; namely .PDF with Acrobat and the defaults for Chrome. Nothing I have tried works, including a 
fucking login script that sets the associations manually. Really frustrating.

I ended up just creating a storefront application that users can launch to manually set those associations. 
While this is technically functional, it is certainly not ideal. I am probably going to try and implement Citrix 
Profile Management and see if that might help the situation.

I am also hoping that it goes well so I can move the XA hosts up to Windows 2016. I tried it before, and 
profiles were all fucky because 2016 implements a new profile version. My test user account had to recreate 
their Outlook profile, which is not acceptable for a large rollout. 

By all accounts, this should be much simpler to accomplish. I guess we'll see!
