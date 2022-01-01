--- 
layout: post 
title: What Is Hyper-Converged Anyway 
date: '2021-12-18 16:39:22.15 -0400' 
--- 
Hyper-Converged, hyperconverged, hyper converged, however you say it or spell it the same meaning applies. 
Infrastructure that brings together several services in a way that provides for highly-available and often 
performant computing. This is accomplished with OpenStack via having compute nodes with ceph OSDs that replicate 
between them. Copies of the data reside on multiple hosts, so that in the event of a host failure you can pick 
up right where you left off. Some systems (virtuozzo hybrid infrastructure) for example will even move those VMs 
and re-start them after a failure like that, so you don't even have to intervene. 

It's really a neat concept that I want to explore more and eventually implement in the environments that I 
manage. 
