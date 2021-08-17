---
layout: post
title: Backups Are Only Important When You Need Them
date: '2021-08-17 09:30:00 -0400'
---
Working for a web hosting company we sporadically get requests from clients to restore some piece (or a whole server) from backup for them. Newsflash: that 
$3/mo VPS you pay for doesn't have any backups; at least not on our end. We used to keep some sort of rudimentary backups of OpenVZ servers, but that was when 
their system was file-based. Now they use Ploop devices, so it becomes infinitely more hard to back them up on our end. We always tell them that they should 
have ahad their own backups in place, but it is almost always too late. How do you disseminate the need for people to back their own servers up without 
sounding preachy or like you are just trying to sell another product? 

I don't know that you can, to be honest. The only way I've ever been able to reckon this in my own head would be to increase the base-price of the VPS and 
just include backups, though even at that you will have problems. Just like a landlord with the built-in microwave in his rental property, you are now 
responsible for those backups. 

This is something that we have seen with our cPanel shared hosts in that sometimes if the backups run long they conflict and 
end up trying to back up multiple hosts at one time to storage infrastructure that just cannot handle it. If you have to monitor the backups, you have at 
least some small obligation to test them as well, leading to more labor cost and effort and probably a worse outcome. 

Maybe if there was some system like Veeam for KVM virtual machines that you could just script adding that VM to the system when it was created, but even then you would still need to account for 
when that VM is destroyed. The i/o requirements for that would probably be ridiculous. I think in the end the only thing we could possibly do is just insert 
something into the "VPS Welcome EMail" stating that you are responsible for your own backups, and here is a link to a KB article with some resources you could 
use. 

That's actually a pretty good idea. Maybe I could write something up that would explain in slight detail how to set up a storage VPS and something like 
UrBackup or R1Soft to back up a VPS to it. Hmmmm. Maybe I'll wait until I get that new keyboard :)
