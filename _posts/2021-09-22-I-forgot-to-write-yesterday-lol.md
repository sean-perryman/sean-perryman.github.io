--- 
layout: post 
title: I forgot to write yesterday lol 
date: '2021-09-22  7:22:31.56 -0400' 
--- 
Not like it wa an overly busy day or something, I just forgot I guess. I did have an interesting thing happen. I 
tried to install CrowdSec and set up iptables on my RMM server at work, and it shit the bed. The program would 
no longer start, and would give me this really weird Mono error that I was not having any luck troubleshooting. 
It took most of the day of troubleshooting, but I was eventually able to reinstall CentOS 7 and migrate 
everything over to it and get it working. This includes CrowdSec and iptables (which is not the most intuitive 
thing, as iptables works on the principal of least privilege. Outbound shit is blocked by default. I didn't know 
that at the time)

In other news, I received the "signature page" for my dissertation, which means I can submit to the school 
librarian for publication. She says she almost always has to send back for reference issues and such, so I'm 
looking forward to that, but the process is almost done done. Yay. 

Also started farting around with VHI a bit. I had a customer of mine who (I thought) would need a cloud server, 
so I told them what I could provide it for an started working on it a little. I later heard they were just going 
to host this mission-critical application on a desktop in their office, so it's whatever I guess. I'll set up a 
backup to their local NAS drive and hope for the best I guess. 
