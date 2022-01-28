--- 
layout: post 
title: Ugh - One of the iSCSI Targets Is Having Trouble 
date: '2022-01-28 16:41:35.08 -0400' 
--- 
This particular unit is a new SuperMicro 1u server with an NVMe drive to boot and 4x 1.92T Intel DC ssds. There 
are three of them total, I had originally intended to use them with Ceph. In the time I was on site for this 
deployment i was unable to get it to work, so I abandoned that and went back to what I know; a raw OS with 
targetcli installed presenting iSCSI storage to my VMware hosts. 

Lately, when there is some weirdness on the server it just goes into a hard freeze. No error logs, no blue 
screen, nothing on the console, just stuck. I have to hit the IPMI and reboot it, then when it comes back up I 
wait a few minutes then force off all of the VMs that live on there, then power them back on and all is well. 

This has historically happened after restarting my Exchange server so I bet it has something to do with I/O, but 
I can't quite put my finger on it. Sometimes when I reboot the Exchange server it poops, sometimes it just poops 
on it's own. Like yesterday. At 2pm.

While it is annoying, assuming I am at my computer it is relatively easy to fix. If I am not at my computer, I'm 
going to have a bad day. 
