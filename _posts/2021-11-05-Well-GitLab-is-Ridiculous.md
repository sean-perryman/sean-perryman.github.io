--- 
layout: post 
title: Well, GitLab is Ridiculous 
date: '2021-11-05 12:32:06.04 -0400' 
--- 
Well, after like 4 hours or so I was able to get a working GitLab instance going on a VPS. The first problem? I 
had been creating my non-root use with the name git, which (after doing it several times; I should learn to read 
error messages) I eventually figured out that git is a protected username that GitLab requires be created during 
the install process. Ugh. 

The second hurdle is that it seems that Gitlab requires an inordinate amount of resources for what it provides. 
Definitely crashed on the install on a 512M VPS. I was finally able to get it to install on a 2GB VPS, but the 
load was at 15 and climbing when I decided to upgrade it. At 4GB it runs well enough with the load under 1.0, 
but that is perhaps a road to far for a single-purpose VPS. It's not running anything else by GItlab and 
requires 4GB of ram. No thanks. 

I came across another system called Gogs, but really by this point I am over it. I have a BitBucket account, as 
well as a GitHub account from school that has free private repos, so there really is no point to continuing on 
this. I did some poking around and apparently Microsoft purchased Github last year, but really that doesn't 
effect me. Nothing that I would ever do on Github would be anywhere near construed as a product, much less 
something that anyone would be interested in looking over and/or stealing from.

What I think is a better choice is to just make something and stop messing around. If I get to the point where I 
have something that is not total shit, I will go ahead and either dump it in a private report of roll my own 
huge Gitlab instance at that point. 
