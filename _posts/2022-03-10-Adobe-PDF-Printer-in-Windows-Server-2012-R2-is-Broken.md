--- 
layout: post 
title: Adobe PDF Printer in Windows Server 2012 R2 is Broken 
date: '2022-03-10  6:56:00.01 -0400' 
--- 
So, I found the cause of the missing Documents\*.PDF printer port, but not the solution for it. A bit of a story first.I work 
for a tax firm, and this is one of our most heavily used pieces of software. It breaks FREQUENTLY. I often have to engage in 
early morning repair-installs or even remove and replace to get it working as expected (btw, I noticed this morning that repair 
or installing will remove you from TS install mode. Not cool.) 

Yesterday, the PDF printer just broke on one of my servers. Woudln't print, even though everything looked good. I noticed it 
had been renamed to Adobe PDF (Copy), which was a big red flag. Turns out that normal users can install updates for PDF, why 
that is I have no idea and haven't investigated, because usually a repair install fixes it. That is, until the hundreds to 
thousands of document pile up in the spooler.It would seem that the updater specifically removes the existing PDF printer and 
replaces it with the broken one using the COM1: port. 

I tested this theory by removing and reinstalling, and before applying ANY update the Adobe PDF printer port was correct.I 
tried applying the update from within acrobat (Check for Updates) and that broke the printer port. I tried re-downloading the 
package and installing the update from the included .MSI file, that broke the printer port. I removed the printer before  
applying the update, that broke the printer.

In my case, the Adobe PDF (Copy) came about because a user either was able to or forced the update to go through between my 
usual check window, and because the print spooler is usually full of PDFs it couldn't delete the printer like normal, so it 
sat there in limbo until the queue was cleared. Then the original printer went away and the new one was able to be renamed.

Anyway, I don't see any immediate way to fix this. I have a secondary PDF printer loaded on my servers (PDF reDirect v2) and 
that works well enough when things like this happen. Perhaps it will be better when I get up to 2016 or later, but I cannot 
say for sure.
