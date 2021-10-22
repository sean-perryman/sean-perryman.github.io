--- 
layout: post 
title: Sometimes Citrix is a real shit 
date: '2021-10-20 19:56:40.07 -0400' 
--- 
I spent most of the afternoon trying to roll out a replacement XenApp host. After trying to install the latest 
minor version and that not working, I worked backward through all the subversions until I got to the base major 
version. Still wouldn't register the server on the controller. Damnit. 

I did some farting around, and it turns out that it is just bitchy about what you put in for the DDC URL. While 
the local fqdn and the external fqdn both resolve to the same local IP, apparently the it just won't register 
when looking for the external fqdn; have to use the internal. I won't get this afternoon back. 
