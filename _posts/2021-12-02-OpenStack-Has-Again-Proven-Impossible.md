--- 
layout: post 
title: OpenStack Has Again Proven Impossible 
date: '2021-12-02  9:03:59.61 -0400' 
--- 
I've gone through every approved method of installing and setting up OpenStack, and literally none of them work 
as they are supposed to according to their own documents. The one that gets the closest is MicroStack by 
Canonical. While I could reliably get a VM up and running, it never has any network access. I messed around with 
changing networks and such, but since I can't tell what VLAN it thinks it is on I am unable to get anywhere with 
it. 

PackStack is probably the worst offender of them all, since it has all of these claims of getting an AIO up and 
running so easily. Yeah, not so. I went through all of the commands and, in the end, the packstack setup command 
just times out. I found a forum post on this talking about increasing the timeout value if you are on older 
hardware (I am), so I did to their recommended 600s up from 300s. No dice. I even went so far as to increase it 
to 30000s and still times out. 

At least if I try and use OSA(OpenStack Ansible) there are people I can talk to about what is going on. I got 
pretty far with that one, might be worth another look. 

One thing I will say for the whole Canonical/Juju setup is that it introduced me to MAAS (Metal as a Service). 
That is absolutely fantastic and would have saved me TONS of time had I know more about it when I first started 
on this stuff. 
