--- 
layout: post 
title: Damn You LineageOS 
date: '2022-07-08 18:57:52.57 -0400' 
--- 
I decided I am embedded in LineageOS, so I went ahead and ordered a Pixel 4 XL and a case and all that. It has a bigger battery and 
turns out it does a bunch of other stuff I want, so that's cool. The problem is with the backup/restore functionality, or lack there 
of. 

The built-in SeedVault backup for LineageOS does not work. Do not rely on it. Instead, at least for now, you can take an adb backup 
which will catch most of your stuff. Things like photos and contacts do not come with it, but there are other ways to get that. 

On the source phone
> adb root
> adb backup -apk -obb -shared -all -system -f fullbackup.ab
> adb pull /data/data/com.android.providers.contacts/databases/contacts2.db

On the destination phone
> abd root
> adb restore fullbackup.ab
> adb push contacts2.db /data/data/com.android.providers.contacts/databases/contacts2.db

Restart the destination phone and you are good! This should get most of your apps (not all of the app data comes along, have to 
re-login to email/voip apps, missing some game data), text messages, and phone history. The final adb push should get your contacts 
back as they were on the old phone. 
