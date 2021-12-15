--- 
layout: post 
title: Docker Is Magical Sometimes 
date: '2021-11-25 19:31:27.18 -0400' 
--- 
In a company chat I saw someone mention spinning up a [SmokePing](https://oss.oetiker.ch/smokeping/) instance to 
monitor for some weird drops, 
which 
piqued my interest. For those who don't know, SmokePing is an open source monitoring application for network 
apps and such. I spent a little time trying to get it to work on my Raspberry Pi Zero and it just doens't have 
the memory needed to get it going.

I started thinking and came up with Docker as a possible solution. A little bit of searching and I found a 
suitable [Docker whatever-you-call-it](https://hub.docker.com/r/linuxserver/smokeping), complete with 
instructions on how to get it rolling. 

Of course that won't run on the Zero either, which is why I kind of started trying to get a "reliable" OpenStack 
AIO home-lab setup going. So I could roll a VM that I don't have to pay for and test it out.

That is a whole other damn bag of worms. 
