@echo off
SET projectName=SDCar
rem copy files to hw_handoff
xcopy .\%projectName%.srcs\sources_1\bd\design_1\ip ..\src\ip\ /E/Y