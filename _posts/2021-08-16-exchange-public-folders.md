---
layout: post
title: Exchange Public Folders
date: '2021-08-16 17:00:00 -0400'
---
I've been working on upgrading an on-premise Exchange 2010 install to Exchange 2016 for 3 years. Yes, 3 years. I've been so terrified of data loss that I've 
basically just put it off. I installed the fresh Windows 2016 install last year and Exchange 2016, and integrated it into the environment, but had yet to pull 
the trigger. Slowly I started moving mailboxes over and forcing the flow through the new server, and for the most part it is functional. 

The global address book, though, is a sticking point. 

It just doesn't work right or even consistently wrong. I have some users that were new and added to the Exchange 2016 server, they show up for everyone. 
Others from literally the same hiring group don't show up at all in the address book, have to type them in manually. Some of the new users work for people who 
migrated from 2010, some don't. I know it has something to do with how public folders changed in 2016 and that they haven't been migrated yet (I know, I 
know), it's just one of those things. I really hate losing data. 

There is a post that tells you how to [batch 
migrate](https://docs.microsoft.com/en-us/Exchange/collaboration/public-folders/migrate-to-exchange-online?view=exchserver-2019#step-5-start-the-migration-request), 
and they really make it seem approachable, but there are just so many steps to it. Not that I am 
incapable or something, it's just when you get to that many steps on something that is very sensitive, there are many more opportunites to mess it up. Same as 
the VMware storage problem I'm facing. I prefer it when shit just works so I don't have to do anything.

I'm probably just being a bitch about this. There are scripts that will do it all for you in this article, you just have to point them to the right places. I 
just need to tell everyone that shit is not going to be available overnight and just get it done. Worst case ontario I guess I can just roll it back in Veeam 
or whatever. Yolo. 
