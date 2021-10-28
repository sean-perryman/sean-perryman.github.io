--- 
layout: post 
title: So I Tried One Of Those Bootleg cPanel Licenses 
date: '2021-10-27 11:21:46.49 -0400' 
--- 
And it went about as well as one would expect. I've done this for someone before and it seemed super simply, 
plus my license was about up so I thought what the hell. Save a few bucks. Immediately after installing the 
license I start getting emails from a root login from localhost from the whostmgr service, so obviously they are 
doing something fucky that I don't want them to be. I should have known; there is no such thing as a free lunch. 
Anyway, it is a simple matter to move all accounts to another server when its possible for them to have the same 
IP, so that's what I am going to do tomorrow morning. 

The problem is the age of this server; and that many users on it are using EOL PHP versions. New cPanel versions 
do not support any EOL PHP versions at all, which means now I have to buy CloudLinux as well to get this thing 
functioning.

So an action that was intended to save me a few dollars ended up costing me an additional $12/mo. Wonderful. 
