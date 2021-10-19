--- 
layout: post 
title: Again, Moving Away From iPhone 
date: '2021-10-16 11:10:52.22 -0400' 
--- 
I am moving away from iPhone. This time, I'm really going to do it. I've been approaching the whole thing wrong, 
I think, there are WAY easier ways to do things. Instead of having to write a native app to do push 
notifications, I can just set a 1m cron job to run and make a notification if there is something to notify 
about. Or I can use SMS messages for notifications. They are kind of annoying, but work on any platform. I am 
dumping Pulseway (which I have just been using for notifications for a long time anyway) in favor of a 
logon/logoff scripts that makes a call to a powershell script that makes a post call to a quick PHP site. From 
there, I can push out SMS text and write shit to a MySQL db for future analysis. I would be really nice if, at 
some point in the future, I could take something like the IP address they are logging in from (this rarely 
changes if they are at their normal location) and alert if it is a different one. That is basically what I was 
using the Pulseway notifications for, but now I have fixed that.

I actually might just try the SMS notifications now since I have everything else in place. Would be so much 
easier as I can just send a message to <phonenumber>@vtext.com and it comes through as a text message (thank you 
Verizon for this outdated and probably overlooked function). 
