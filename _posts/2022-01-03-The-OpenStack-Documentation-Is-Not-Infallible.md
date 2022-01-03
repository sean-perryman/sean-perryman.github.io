--- 
layout: post 
title: The OpenStack Documentation Is Not Infallible 
date: '2022-01-03  8:36:50.68 -0400' 
--- 
I spend a fairly significant amount of my time installing and testing different OpenStack deployment methods. As 
such I am pretty familiar with the documentation, though I will say it hasn't always been that way. When I first 
started doing this I kind of just tried to yolo it and that ended up not working well. Eventually you learn that 
you have to pay attention to the documentation, sometimes pretty intently like in the case of Kolla as they are 
providing you with a couple of different options at the early steps of the process. You don't want to do every 
step listed, just the ones for the deployment you are actively working on. 

Lately, I have been experimenting with Juju Charmed OpenStack that was created and maintained by Canonical who 
also create and maintain the Ubuntu Linux distribution. I don't have a really good reason for this as the system 
is, in my opinion, overly complicated for what you get. To do the install as they have it on their deployment 
page is somewhere in the neighboorhood of 100 separate commands, after you have already installed MaaS and the 
Juju client. This obviously isn't a deal-breaking condition though, as it is theoretically possible to script 
this whole thing. Theoretically.

Right on the deployment instructions page there is a little blue box with a note that says:

> You do not need to wait for a Juju command to complete before issuing further ones. However, it can be very 
instructive to see the effect one command has on the current state of the cloud. 

This statement is INCREDIBLY misleading. I can tell you straight up that if you just batch all the commands in 
shit will not work at all. I know the concept is that Juju just queues commands up one after another, but in 
practice it does not work that way. Maybe it is that commands in the queue time out if a previous operation 
takes too long (the deployment of the ceph-osd charm is of particular note because that is when the nodes 
themselves are provisioned), or if commands just fail without any feedback (it happens), this doesn't work. 

Even going so far as to creating a script with all the commands (which I have done) with pauses after after juju 
deploy command didn't work 100%, because there was some sort of bed-shit in the nova-cloud-controller and the 
mysql cluster. When going to the Instances page for Admin that was fine, but trying to go under the Admin 
project produced an error I've never seen before. Likewise, trying to look at Volumes in any capacity caused a 
strange python error that seemed unsolvable. 

I went so far as to SSH to several of the containers and check through logs, the logs I could find anyway, and 
it seems that somewhere along the way the cinder mysql database never got created, or maybe was incorrectly 
created. I thought that maybe removing all the cinder stuff and re-installing would help, it didn't. The 
database had still not been created. I was able to get the nova cloud controller working by doing this same 
process as there weren't any errors in the logs, but it just goes to show you that automation isn't always the 
answer. 

Now, could I modify my script so that at each step the process watches the output of juju status and greps for 
the individual charms (e.g. ceph-osd) then makes sure the workload is blocked or active and the agent is idle? 
Sure, that is actually a good thought. Should I go that far into something that I don't view as a production 
environment (at least not in my case)? Probably not. 

My use cases are small, and besides having 3 hyper-converged nodes I would have to have at least one other node 
running virtual machines for the MaaS controller, the Juju controller, and a jump box, though I guess the jump 
box could just be my laptop. 

Anyway, if you are running through the Charmed-OpenStack deployment quickstart, make sure you let each command 
finish before getting into the next one. 
