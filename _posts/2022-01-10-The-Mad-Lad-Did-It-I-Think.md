--- 
layout: post 
title: The Mad Lad Did It! (I Think)
date: '2022-01-10  8:19:03.90 -0400' 
--- 
In one of the environments I manage I had one hold-out Windows 2008 R2 server. The only role it provided was to 
serve some terminal services profiles to users who have been with the firm a while. You might think "why don't 
you just robocopy the profiles and then redirect them?" Not that easy unfortunately. There is a registry entry 
under User Shell Folders that somehow was set up incorrectly with a hard-link to that user profile. If I 
manually change that entry for them back to the correct default I can fix it, but that would mean doing it on a 
per-user and in that process they seem to lose a bunch of their preferences. Not good for a group of people who 
do not like things to change (understandably). 

My solution in this case was to create a Windows 10 VM and robocopy the shared folder over to that server, then 
decommission the original 2k& VM and rename the new Win10 VM to it's name and share the folder. So far so good! 

I had previously tried just DNS-aliasing the new TS profile server I have with the old name, but that failed 
spectacularly. What came of that, though, was I built a task-scheduler + powershell scripting system that alerts 
me when a temporary profile is created. Not something that happens often any more, but it does happen on 
occasion. 

A few users have logged in and I haven't heard any complaints so I am hopeful that this thing will go well.

That server was the last thing with critical vulns that was showing up in Nessus so after that I think I am 
rolling. 
