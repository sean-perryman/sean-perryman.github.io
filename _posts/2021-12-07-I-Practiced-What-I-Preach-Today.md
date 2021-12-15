--- 
layout: post 
title: I Practiced What I Preach Today 
date: '2021-12-07 14:01:03.20 -0400' 
--- 
I like the concept of using scripting to save myself the trouble of repetitive tasks. As I was going through 
unzipping files and copying them over to another folder, I had a thought that I could probably do it in 
PowerShell really easily. Here is the process:

1. Unzip a .zip file to a specific directory
2. Move the original .zip file to a "done" folder
3. Wait 60 seconds (to give it time to upload to the cloud)

This process is the culmination of moving from CCH/Wolters Kluwer "Portal" (File sharing solution) to Citrix 
Sharefile. We have like 500 "portals" which came down as individual .zip files. This process made things MUCH 
easier on me, I'm just going to start it at the end of the day and let it run over night. Sweet!

> $ClientFiles = Get-ChildItem -Path '<path>' -Filter *.zip
>
> $ClientFiles | ForEach-Object { 
>   $_path = [IO.Path]::GetFileNameWithoutExtension($_.Name)
>  echo "Expanding and uploading $_path"
>  # Expand File, Output to ShareFile Drive
>  Expand-Archive -Path $_.FullName -DestinationPath "<Destination Parent>\$_path\"
>
>  # Move archive to Uploaded folder
>  Move-Item -Path $_.FullName -Destination '<Done destination>'
>
>  echo "Sleeping 60 seconds..."
>  Start-Sleep -s 60
>}

By the way, I'm counting this as my daily "Make a little something every day". 
