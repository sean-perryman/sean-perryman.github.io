--- 
layout: post 
title: It May Seem Small, But I Was Able To Reboot A Node 
date: '2022-01-07  6:30:08.82 -0400' 
--- 
I have had this Kolla cluster running for about a week now, just kind of there in the background running some 
VMs and doing nothing in particular. I have been meaning to update, so I did and I rebooted the first node in 
the cluster that normally holds the virtual IP for Horizon. When I did that, the vIP moved itself to another 
node and continued working like normal. After a few moments the compute and network services showed as down, and 
the VMs that are on that node showed as shut off. I haven't checked to see if they were properly shutdown or 
not, but I assume they were not. This is not a huge problem as I would probably manually shut them down anyway. 

What is great, though, is that everything came back on its own without issue. No problems at all. It took 
probably 5 minutes or so, then conductor service came up, then the rest of it. I was able to power back on the 
VMs and they are responding to ping and ssh again like before. This is fantastic as it is another hurdle in the 
direction of getting a production OpenStack cloud going for myself.

Very exciting!
