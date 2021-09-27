--- 
layout: post 
title: Sometimes You Find A Solution You Didnt Know You Were Looking For 
date: '2021-09-27  7:59:26.41 -0400' 
--- 
I have had this little pet project I guess you could call it, trying to get rid of all of the "ghost printers" 
on terminal servers. These are printers that were shared from hosts that no logner exist, they are just hanging 
around. You delete them, and then the next time someone logs in they come right back. Really annoying. Somehow, 
this morning, I stumbed across the answer here: 
https://serverfault.com/questions/604161/deleted-printers-keeps-coming-back-and-multiply

> I had this exact same problem. After I deleted a Group Policy printers kept coming back all over the place.

> The only solution for me was:

>    Downloading PSTools
>    Running CMD as administrator
>    Run the command psexec -i -s c:\windows\regedit.exe (make sure you don't have regedit open already, otherwise it gives an error)
>    Delete all keys under HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\SWD\PRINTENUM which contained the printer name that keeps coming back.

> You have to use the PStools option, because otherwise you will get an access denied error when deleting the regkeys.

So I spent about 20 minutes going through and deleting all of those printers I didn't want to exist any more. 
Tedious, but hopefully worth it. After a reboot, every damn one of them came back in the list. Shit. 

I went through and removed a good subset of the returned printers, probably 50-60 instances. There are still 
many more. Reboot again. That didn't fix it. 

Going back to that SO post, I found this comment down the page:

> Hate having to dive into the registry but it looks like going into the Client Side Rending Print Provider keys under the HKLM\Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Print\Providers\ and cleaning out anywhere there s a reference to the persistent "zombie" printers.

And the change worked! It persisted after a reboot, so now the printer page is nice and trim. I guess the 
combination of both of those "fixes" was the ticket after all. Now I just have to go through and burn all the 
other printers on the other terminal servers so I can get on with my life!
