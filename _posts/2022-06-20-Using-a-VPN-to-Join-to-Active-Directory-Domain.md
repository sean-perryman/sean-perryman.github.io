--- 
layout: post 
title: Using a VPN to Join to Active Directory Domain 
date: '2022-06-20  7:01:31.30 -0400' 
--- 
I'm only posting this because it is something I had trouble with recently. Sometimes a default VPN configuration 
will allow you to access internal resources, but will not force all your traffic over the connection. When 
working with Active Directory, you have to force all your traffic over the VPN instead of doing it the other way 
around. Why this is I do not know. Without forcing all traffic I had access to all internal resources, and was 
able to resolve all of the necessary records to join a computer to the domain. For whatever reason it just 
wouldn't work. 

After switching the VPN config to force all traffic over the VPN, everything worked as expected. Weird, I know. 
