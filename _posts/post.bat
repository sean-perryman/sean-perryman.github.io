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

copy post_template %datestr%-%string%.md
