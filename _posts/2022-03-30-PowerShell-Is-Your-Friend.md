--- 
layout: post 
title: PowerShell Is Your Friend 
date: '2022-03-30  6:45:16.23 -0400' 
--- 
I like a web interface, I really do. There is just something about shell scripting that is so much more rewarding. Take 
exporting mailboxes for example. If you have one, sure, just log into the web interface and do that one. If you have a few? 
Much easier to create an array with the usernames, and loop through the New-MailboxExportRequest and hit each one in turn. 
Same thing with every other task that you have to do more than once, or in my case things that have to repeat automatically. 
Cron in Linux, Task scheduler in windows. Write a script, test it, tune it, then put it on a schedule. 

It took me a long time to learn the value in this. 
