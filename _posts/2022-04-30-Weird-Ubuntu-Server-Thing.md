--- 
layout: post 
title: Weird Ubuntu Server Thing 
date: '2022-04-30 18:58:24.19 -0400' 
--- 
I run a minecraft server on a friend's office network for his kids. A couple of months ago I turned it off 
because they weren't using it. He asked for it on tonight so I powered it on, and nothing is working. Really 
weird, like netplan was missing or something. Ended up having to add the IP and default route manually, along 
with having to administratively set the network port up. Then I updated and rebooted, same thing. I ended up 
reinstalling netplan.io and rebooted, now it seems OK. Pain in the ass!
