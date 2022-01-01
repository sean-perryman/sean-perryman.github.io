--- 
layout: post 
title: Juju Strikes Again 
date: '2021-12-11  9:42:38.85 -0400' 
--- 
I gave Juju Charmed OpenStack another try. Shit. 

I went all through the whole setup and everything seemed to be going great. There are a SHIT load of commands to 
entry, but thankfully at the end I cut out my .bash_history so I have them in a straight 1-to-1 file now. There 
are several times where you have to pause and do other things (unsealing vault for example), but I can probably 
do some bash-trickery so that I could like paste in a key and hit enter and pass that to the command, then rinse 
and repeat for everything else I need to do. 

Anyway, at the end of the whole thing I had what appeared to be a functional OpenStack install. I created my 
flta physical network and uploaded and image, then deployed. No network access. Just like always. This time, I 
have literally no idea how to troubleshoot it or how to even continue on. I don't know if I am maybe just not 
searching for the right thing or what, but I could not at all figure out how to look into this. 

The error was something about not being able to bind to the network port and it told me to check the neutron log 
for more info. At the time I hadn't thought about this, but now I feel like I probably could have just used ssh 
to connect to the neutron container and check there. Nevermind there is no indicator of which container to check 
(there are 3 of them in this default-ish setup), but even checking all three might have been fruitful.

I guess I could have even just opened 3 terminal windows and just tail -f the neutron log on each and tried to 
launch a new instance. 

Maybe I am smarter than I feel afterall. 
