--- 
layout: post 
title: You Cannot Guarantee 100 Percent Uptime 
date: '2022-01-11 15:17:15.19 -0400' 
--- 
Let's start off by looking at what the nines metric of measuring service or system availability is. Nines refer 
to the percentage of time that a service is unavailable or down over a given period, typically a year. You can 
see by this chart that it varies from nine-nines being about 30 milliseconds per 365 day period to one nine 
allowing for almost 37 days of downtime in that same period. 

Most service providers fall somewhere in the middle and select either three-nines at about 9 hours of acceptable 
downtime per year or five nines with just over 5 minutes of allowable downtime per year. This is certainly 
achievable with modern high availability, at least as far as the provider's hardware goes. Using Ceph for the 
storage backend can allow you to live migrate virtual machines with no downtime. VMware, Hyper-V, and OpenStack 
all have provisions for this. Redundant switching and multi-port network cards can maintain network 
connectivity. Virtual Router Redundancy Protocol will allow multiple routers to share a configuration and a 
virtual IP. When one goes down, another one immediately takes over. Data centers typically have redundant power, 
cooling, and network connections. 

What is not accounted for is the upstream problems you can face. 

What happens when a route that goes to a particular set of your clients goes down? Technically your service is 
still up and running. It's just not available to those who use it. Similarly, what happens if a quick reboot 
turns into 6 minutes? You have instantly busted your nines guarantee. There are scenarios where a node will go 
unresponsive, but will still respond to SSH initiation and pings, which are the typical monitoring targets. In 
this case the virtual machine guests on this host are unusable, but the monitoring system does not see a reason 
to alert. 

These are perhaps edge cases, but are still wholly valid for discusson. In my case, I had a server with an 
uptime of about 2.5 years. No reboots during this period. Does that mean automatically that it hit 100% uptime? 
Nope. In that time I had completely overhauled the network, taking it down for an entire weekend once. 

Were my users affected? No, because the downtimes were planned and provisions were made. This can be a way to 
sort of get around the nines guarantee. One could say that they guarantee five nines from unexpected outages, 
which is completely acceptable in my opinion. This could potentially give you some breathing room for routine 
maintenance that would otherwise shatter that guarantee. 

The point is here is that no one is perfect, and since no one is perfect, the technology that they make and 
manage cannot be either. Perhaps in the case of some massive infrastructure like Amazon you can make that 
guarantee. It is highly unlikely that all of the redundancies will fail at the same time. Even with that, what 
happens if you have a disaster like what happened with OVH? The datacenter caught fire and tons of data was 
lost. Something to think about. 
