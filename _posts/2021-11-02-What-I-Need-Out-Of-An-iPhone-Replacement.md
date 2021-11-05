--- 
layout: post 
title: What I Need Out Of An iPhone Replacement 
date: '2021-11-02 10:35:10.51 -0400' 
--- 
I know I have talked about this several times already, I really want to get rid of my iPhone. I purchased a 
Pixel 2 XL and installed Graphene on it. At the time, this didn't work for me because I believed I needed push 
notifications to do what I needed to do in life. Turns out, I don't. Though I sent that phone back, I eventually 
did buy another Pixel 2 XL and installed Calyx on it. This is technically OK I guess, but it just seems like 
Google still has their claws in you with this. Like, for most things you have to install a play store 
replacement, you are still running Android basically, and you still are beholden to some of the stuff that comes 
with that. It just doesn't feel right, if I'm going to do that why don't I just stay with my iPhone? Taking that 
line of reasoning I did purchase a PinePhone and received that. It is... buggy to say the least. But I think, 
for what I ultimately NEED, I can make it work. The ultimate needs are: 

Ability to make and receive phone calls 
Ability to send and receive SMS text messages
Ability to generate OTP (One Time Password) tokens
Email with notifications (Exchange would be nice, but can be worked-around)
Web browser compatible with Firefox or Chrome basically

The app store is not needed, push notifications are not needed, voip apps are not needed, I need a basic phone 
that can text message, email would be nice (I could probably use SMS to set up alerts that I could check on my 
PC or through web interface if needed), and a web browser. 

I've found a system at https://totp.app that I can transfer all of my OTP stuff too, with the capacity to backup 
and restore those tokens. I still need to test bringing it down to a phone from the PC, but so far with the 
sites I've tested it does work. I had planned on using the app Authy instead of Duo that I use now, since Authy 
has a nice method of backing up and restoring those 2fa tokens. Duo has this ability, but it is restricted to 
Google Drive only, which kind of defeats the purpose of this attempt to leave "big tech". Authy didn't seem to 
require this, but unfortunately needs to be installed via SnapCraft, which is incompatible currently with these 
mobile OS's. 

Obviously texting and voice calls are a must for a system like this. From what I have seen, the utility of this 
is mixed with my carrier (Verizon). No, I'm not going to switch to another because someone else pays for this 
phone, so that is effectively a non-starter. Some people have said that for the PinePhone you have to call 
Verizon and ask them for help with a "request form" to all your IMEI on their network. Just searching for it on 
their website produces an error page saying we don't support this phone. Apparently, this is false and they can 
manually allow it. 

Email is another sticking point, as I would really like to be able to receive emails and get a specific 
notification on my phone for it. This seems to be possible with several apps available (Dekka 2 comes to mind), 
but none of them seem to support MAPI/Microsoft Exchange. I do have an Exchange account that I need access to, 
but I could potentially just enable IMAP support and run it that way. That is not out of the question, it is 
just opening up another avenue for intrusion that I would rather not. Another potential option is to just use 
the webmail interface, but this would require the ability for a web browser to have notifications that function. 
From the limited testing I have done, Morph-Browser (UBPorts) does not support this. This is a fairly firm 
inidcator that the other mobile Linux browsers probably don't support it either. 

This leaves an option of writing a small Python program that could tap my inbox and send me an email to my  
vtext.com address (<phone number>@vtext.com sends a text to your phone with the email contents) maybe with the  
sender and subject or something. The content you can send this way is pretty limited, but I'm already using it 
for notifications (after I got rid of Pulseway) and it works nicely. This could be done pretty easily with a 
"Scheduled Task" on one of the Windows 2016 servers there, even the Exchange server itself. That reminds me, I 
need to set up another Python script I've already wrote on a schduled task. Oh well, add it to the list I guess.  

Unfortunately, in my haste to mess with this phone I bent a pin on my PinePhone mainboard and it seems to have 
caused a bit of a ruckus. The sim card is not detected when I insert it, which sucks. I think the path forward, 
for me at least, is to buy another mainboard and swap it out, then get a "standard size" sim card and get that 
activated. After all that, I can then call Verizon and ask them about allowing this new IMEI on their network.  
That is, assuming I continue on this path at all. 

I mentioned previously about a Google Pixel 2 XL that I purchased and install CalyxOS on. I did some poking 
around and apparently UBPorts supports that phone, and even the features that I need from it. So I went though 
the whole mostly automated process of installing UBPorts after downgrading the original Google firmware back to 
an earlier version. The phone boots and is snappy. After googling up the Verizon APN info and installing the sim 
card that seemed to work as well, but would not make any phone calls or send/receive text messages. I checked 
the IMEI on Verizon and it is supported, so who knows. It never reflected the change in my account or whatever, 
so maybe I need to call them or something. I feel like in the past when I put my sim in a different phone it 
just updated automatically. Maybe I just need to leave it in there longer or something. Who knows. 

Overall, this whole experience has been disheartening to say the least. I would say that I am an advanced Linux 
user, and have struggled with several steps along the way. Something I have talked on my blog about before is 
the fact that Linux "tutorials" are seemingly sparse on purpose to force you to figure out stuff. This is both a 
good and a bad thing, as it immediately discourages people who are unwilling to go the extra mile, but on the 
otherhand it also discourages people who are not fully invested but do want to experience it. This is the case 
for most Linux-based stuff that isn't just like "Install Ubuntu On Your Old Laptop!" kind of stuff. When you 
really want to dig into it, you must prepare to go as far down the rabbit hole as possible to get this 
accomplished. I've done this several times in my life, wasting days on end trying to get something working that 
would just be a double-click installer on Windows. But that is beside the point. Linux phones present as a 
viable alternative in other countries, but it doesn't seem like the US is quite ready for it. 

Pine64 is making leaps and bounds in this with developing hardware and having specific OS' picked out for it 
already that have a lot of functionality. Sure, it's not at the level that the new iPhone or Pixel is at, but 
the currently-available PinePhone is $150. Cheap enough to play with it and break it and not have a stroke, 
unlike with the iPhone or Android devices. There are a lot of positives for these phones, and this PinePhone in 
general, you just have to be willing to do the research and the work to get it where you need it.

Now, if you will excuse me, I am going to order a new mainboard for my PinePhone and pretend that this time will 
be different than all the others. What I mean by that, is that this time I will actually fix the device instead 
of breaking the replacement parts like usual. 

