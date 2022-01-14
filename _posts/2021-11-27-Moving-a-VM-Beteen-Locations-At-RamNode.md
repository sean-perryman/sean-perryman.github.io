--- 
layout: post 
title: Moving a VM Beteen Locations At RamNode 
date: '2021-11-27 19:38:56.70 -0400' 
--- 
This subject comes up a lot, so I thought I would post this here in case someone was searching for it. Hopefully 
it helps. Currently, Fleio is not capable of moving anything between regions; every location has to have their 
own images, VMs, etc..

1. [Install the OpenStack commandline client on Ubuntu 
20.04](https://seanperryman.com/2021/11/26/New-Way-To-Install-OpenStack-Client.html)
2. Grab your openrc from the API Users tab for the SOURCE location. You can go ahead and grab one for the 
destination as well. 
3. Source the openrc file (source openrc, duh)
4. You can then do 
> openstack image list
to get a list of the images available to you. Grab the UUID of the one you want to download
5. Execute
> openstack image save --file <filename> <image uuid>
To download the image to your local machine. There is no progress indicator, just let it do its thing. 
6. Source the desintation openrc
7. Execute
> openstack image create --disk-format qcow2 --container-format bare --file <file name> <image name (no spaces)>
To create the new image. Again, no progress indicator here.
8. If you want to just make a new VM now, you can do the following
> openstack flavor list 
To get the UUID of the flavor you want
> openstack server create --image <new image uuid, gotten from openstack image list if needed> --flavor <flavor 
uuid> <server-name (no spaces)>

And thats it! You are moved from one location to the other. Remember to terminate any resources no in use to 
save some money there, as even a stopped instance will continue to incur charges. 
