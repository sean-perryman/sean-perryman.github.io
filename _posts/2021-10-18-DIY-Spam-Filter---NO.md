--- 
layout: post 
title: DIY Spam Filter? NO!
date: '2021-10-18 12:53:59.75 -0400' 
--- 
The biggest problem with Linux in general is the prevalence of how to do certain things, but the inherent 
differences between distros or even major versions. I have a small WHMCS install that is CONSTANTLY getting hit 
with spam tickets, I've written about this before. Instead of paying for a spam filtering service I started 
looking for a way to filter spam myself with a VPS. This turned out to be a daunting task due, in part, due to 
the inconsistencies mentioned above.

For the most part, when doing stuff you have done before Linux is significantly easier to set up than a 
comparable Windows server. Of course most of your work is on the "command line", but that means you are more apt 
to use (or even create) scripts to automate these processes. There are similar things on Windows, most most 
server-specific software was not natively built to run on Windows (except for IIS I guess, but that is shit in 
my opinion). 

Anyway, this neat-looking tutorial on how to create your own spam-filtered system (external to the mail server) 
started off pretty well, but when it got to the point of installing MailScanner it realy shit the bed. 
Apparently, MailScanner has come a long way since this article was written; so much so that it will install the 
MTA (mail transfer agent) and SpamAssassin for you. I was still trying to follow the instructions and got hung 
up at this point, so I assume that the bed was shit. 

I should just pay someone and not fuck around with this anymore. 
