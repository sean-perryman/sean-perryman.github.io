--- 
layout: post 
title: Fixed Assets CS Wont Run Without Administrator Permissions 
date: '2021-10-22 12:03:18.14 -0400' 
--- 
I am writing this up here in the hopes that the next time I do this install I remember to look here first. Lol

This program will not run correctly unless you give "users" full access to the directory (and subs) that the 
program was installed in (e.g. c:\wincsi). Why is this? No fucking idea. 

I've spent significant amounts of time on trying to figure this out in the past because I was never clever enough to write it down. Just goes to show you that the number one enemy of some in IT is themselves. There is no one (except, of course, technical writers) who wants to documetn what they have done. They want to fix that shit and get on with life. 

EDIT: I ended up having to copy over the entire c:\winsci directory to a server, even after fixing the perms. 
That worked. It was giving me a weird looping thing trying to apply the license. 
