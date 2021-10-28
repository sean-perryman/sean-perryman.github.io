--- 
layout: post 
title: Them Citrix Problems 
date: '2021-10-23 13:00:16.12 -0400' 
--- 
I may have written about this previously, but I am in the process of refreshing Citrix Xen App hosts. For the 
most part this works, once you learn al the quirks, at least insofar as users can log in. After that it is 
anyone's guess as to whether or not you will run into any game-breaking problems. 

One big one lately is remembering to get "per-machine" installs rather than "per-user" installs. A per-user 
install will run, typically without extra permissions, but will install under your user directory (e.g. 
%appdata%) instead of in Program Files. This also means that none of the other users on the server will be able 
to see or use the application properly. 

Next is making sure that you run a repair install on Acrobat and Office after you have the servers in 
production. I don't know why, but before doing this people would have all sorts of weird issues with files 
locking and not letting go until closing the program out. Luckily, a quick reinstall without anyone online was 
able to get that sorted, as I was rapidly running out of options on how to fix that. 

Finally, setting default applications is wonky in an RDS environment. You are supposed to be able to set it with 
a GPO, but this doesn't seem to work very well. In the end, I just circulated instructions for the users to set 
it themselves as it will be likely they will need to do it when logging into a different host (there are 3 
generally). 
