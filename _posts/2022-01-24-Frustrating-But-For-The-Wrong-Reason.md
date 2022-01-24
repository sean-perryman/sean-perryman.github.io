--- 
layout: post 
title: Frustrating, But For The Wrong Reason 
date: '2022-01-24  7:22:38.09 -0400' 
--- 
I used to use this system called Pulseway to do some from-the-phone remote IT management tasks. Things like 
locking and unlocking user accounts, resetting passwords, checking statuses, things like that. Nothing too 
heavy. Pulseway had this feature where it could run scripts for you in the user context as well, which makes 
doing things like killing specific programs or clearing print queues easy. 

As it was costing me quite a bit and I am handy with a script, I decided to just go on my own with it. Turns out 
that scripts require some massaging when working through a different environment like the one I already have set 
up. Some things work; locking and unlocking user accounts and checking their current status for example. 
Clearing out the ENTIRE print queue from a server works too, but you can't differentiate between printers or 
jobs or anything (that I have figured out yet, anyway). The one thing that I want to work that doesn't (yet) is 
enabling and disabling maintenance mode for Citrix XenApp hosts. 

While I don't have to do this often, it would be nice to automate it somewhat so I could turn off a server 
(usually for someone to log out and back in and get on a different server) without having to get on my computer, 
but sometimes these things don't work out. 

I can potentially hard-code in some user credentials to the batch file that calls the powershell script, but 
that doesn't seem like a really safe thing to do so I probably won't do that. 

Anyway, it is a frustrating problem, but I am sure there is some workable solution somewhere. 
