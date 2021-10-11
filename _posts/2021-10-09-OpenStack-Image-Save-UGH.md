--- 
layout: post 
title: OpenStack Image Save UGH 
date: '2021-10-09 19:18:02.65 -0400' 
--- 
OpenStack is a wonderful platform, once you learn all of the intricacies and weirdness that goes along with it. 
Would I personally want a production environment consisting of just that? Probably not. 

Users have this impression that OpenStack is functional in all the weird shit they want to do. This could not be 
further from the truth. Take the API client, for example. First off, I have explained before that the fucking 
client is broken from the factory. See an older post about it for the fix; basically there is a broken python 
library and you have to edit a couple of files. 

To download an image, for example, the syntax is:

> openstack image save <uuid>

Simple, right? WRONG BITCH! You have to have AS MUCH FUCKING MEMORY AVAILABLE AS THE IMAGE IS LARGE! What the 
fuck! It saves the entire image in RAM before writing anything to disk. And if you run out of memory during this 
process? FUCK YOU. 

I learned this after hours and hours of messing with it and burning an untold amount of credits of trying to 
figure out why I could easily download a 300MB image, but a 3GB image would shit the bed. 

A customer asked about downloading a 750GB image. Great. I fired up a 12GB instance (has the most amount of disk 
available) and started the download. Well, son of a bitch, watching top the process shit itself right around the 
99% memory usage mark. What did I do? 

I created a damn 800GB SWAPFILE! The process is at about 30GB downloaded now and doesn't *appear* to hav any end 
in sight. We'll see if it can actually finish or not, I might update this post with the progess or the failure. 
Who knows.
