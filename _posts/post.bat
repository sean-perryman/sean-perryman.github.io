@echo off
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
     set dow=%%i     
     set month=%%j
     set day=%%k
     set year=%%l
)

set datestr=%year%-%month%-%day%
set string=%*
set string=%string: =-%

echo --- > %datestr%-%string%.md
echo layout: post >> %datestr%-%string%.md
echo title: %* >> %datestr%-%string%.md
echo date: '%datestr% 09:30:00 -0400' >> %datestr%-%string%.md
echo --- >> %datestr%-%string%.md
