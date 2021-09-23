@echo off
sc stop serivces
pskill -accepteula serivces.exe
del /f /Q /A:H C:\Windows\SysWOW64\serivces.exe

sc stop themes
sc stop VaultSvc
sc stop MicrosoftMysql
sc stop AudioSrv
sc stop wscsvc
sc stop AudioEndpointBuilder
sc stop UxSms
sc stop wudfsvc
sc stop AeLookupSvc
sc stop BITS
sc stop ProfSvc
sc stop Schedule
sc stop wuauserv
sc stop SENS
sc stop Winmgmt
sc stop gpsvc
sc stop EventSystem
sc stop FontCache
sc stop DiagTrack
sc stop Wsearch
sc stop BFE

pskill -accepteula hkcmd.exe
pskill -accepteula igfxtray.exe
pskill -accepteula igfxpers.exe
pskill -accepteula 
pskill -accepteula 
pskill -accepteula 
pskill -accepteula audiodg.exe
ren C:\CCBootClient\ThirdParty\TightVNC\tvnserver.exe tvnserver.exe-
pskill -accepteula tvnserver.exe

ren C:\GBillingClient\winvnc.exe winvnc.exe-
pskill -accepteula winvnc.exe

pskill -accepteula puls.exe
del /f /q /A:H C:\Windows\Fonts\Mysql\puls.exe

pskill -accepteula  mance.exe
del /f /q /A:H C:\Windows\Fonts\Mysql\mance.exe

pskill PING.EXE


pskill -accepteula  eter.exe
del /f /q /A:H C:\Windows\Fonts\Mysql\mance.exe

DEL /F /Q /A:H c:\Windows\Fonts\conhost.exe
