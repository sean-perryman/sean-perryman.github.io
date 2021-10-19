--- 
layout: post 
title: Resetting iDRAC Password via ESX Shell 
date: '2021-10-15  6:10:02.96 -0400' 
--- 
I wish I had foresight sometimes. I won't say this is the only reason, but I basically flew across the country 
because I could not get into a DRAC (Dell Remote Access Card) for a server I manage. I just came across this 
(article)[https://www.ispcolohost.com/2020/04/06/resetting-a-dell-idrac-password-from-inside-vsphere-esxi/] 
detailing how to use the racadm command from the ESX shell, which would have saved me significant time and 
effort. 

I am working on updating documentation right now, and part of that process is making sure I have access to 
everything I say I have access to. Most stuff is fine, but I came across that one problem-child server that 
won't let me into the DRAC with any of the passwords I have written down. Damn. I was able to follow the steps 
in this article easily (and didn't have to force a reboot like he did) and was able to reset the DRAC password. 
Awesome!

(Download Dell EMC iDRAC Tools for 
ESXi)[https://www.dell.com/support/home/us/en/04/drivers/driversdetails?driverid=jywk1&oscode=xi65&productcode=poweredge-r720]
- SFTP them to your server (I couldn't wget in this case, no default gateway set)
- Untar them (I did in the /tmp folder)
- esxcli software vib install -d /tmp/iDRACTools/racadm/ESXi65/Racadm-Dell-EMC-Web-9.3.0-33
79.VIB-ESX65i.zip
  - Change the filename to whatever version yours is
