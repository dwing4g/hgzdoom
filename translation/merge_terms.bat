@echo off
setlocal
pushd %~dp0

luajit terms_merge.lua terms.csv ^
MAP01.terms ^
MAP02.terms ^
MAP03.terms ^
MAP04.terms ^
MAP05.terms ^
MAP06.terms ^
MAP07.terms ^
MAP08.terms ^
MAP09.terms ^
MAP10.terms ^
MAP11.terms ^
MAP12.terms ^
MAP13.terms ^
MAP14.terms ^
MAP15.terms ^
MAP16.terms ^
MAP17.terms ^
MAP18.terms ^
MAP19.terms ^
MAP20.terms ^
MAP21.terms ^
MAP22.terms ^
MAP31.terms ^
TITLEMAP.terms

pause
