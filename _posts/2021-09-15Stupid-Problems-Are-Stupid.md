--- 
layout: post 
title: Stupid Problems Are Stupid 
date: '2021-09-15 16:02:59.95 -0400' 
--- 
Do you ever genuinely mean to do something, and then completely forget about it until you see that person is 
calling you? I did that this morning, and had plenty of time to finsih as well. One problem: the spam filter is 
all wonky and won't let new users email through. They say it's my server that is rejecting it, which could 
certainly be, but I can find no evidence that it is making it that far. The only real recourse I have is to keep 
mucking about with settings until I find whatever works. It does this with aliases and distribution groups as 
well. 

I have a backup spam filter system that I could swap the MX records around and implement, but I am worried about 
what that might cause in the long run. I might try and do that after hours tonight just to see what happens. 
I've got to figure something out, this is beginning to cause me real issues. 

I heard back from the spam filter provider and they want me to delete her account and recreate it. On a normal 
mail server that would be no problem, but Exchange doesn't work like that for internal users. Instead, it uses 
some wonky ass UUID looking address and when you recreate a mailbox that changes. So, inevitably, anyone 
internally that needs to email her will have to stop, erase her name from their .NK2 file, and re-type it in 
manually. PITA!

Actually, thinking about it I might be good because this is a new account that I don't think anyone has emailed 
specifically yet, so who knows. I might give it a shot and see what happens. 
