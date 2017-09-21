@echo off
set TGT=.\backups
if not exist %TGT% md %TGT%
:ST
set DRV=_
set /p DRV=Drive:
set DRV=%DRV:~0%
if _%DRV%_ == ___ goto :eof
set RES=%TGT%\%DRV%_%DATE%.zip
nulzip.exe %DRV%:\.\ %RES%
echo __________________________
echo DONE: %RES%
goto :ST
