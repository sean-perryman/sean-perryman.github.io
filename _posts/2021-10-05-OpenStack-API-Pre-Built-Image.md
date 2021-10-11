--- 
layout: post 
title: OpenStack API Pre-Built Image 
date: '2021-10-05 11:15:00.97 -0400' 
--- 
Working with OpenStack, I find myself often needing an API client that is close to the region that I am working 
in. I use this to mostly upload and download images, but you can also deploy VMs and do other stuff with it as 
well. 

[OpenStack API Client QCOW2 - 2.6GB](https://worxtech.com/iso/openstack-api.qcow2)

You can deploy this image to any OpenStack-based provider that lets you roll your own qcow2 image. After you 
boot this image, get your openrc/API key and get connected (e.g. source openrc) then you can run OpenStack 
commands right from the terminal:

openstack image list

This is a simple Debian 10 install with the Python OpenStack client pre-installed, and the necessary files 
[fixed](https://kyle.pericak.com/openstack-fix-cli.html); thanks Kyle!
