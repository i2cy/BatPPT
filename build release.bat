@echo off
color
path=%path%;"C:\Program Files\WinRAR"
title File Builder
if NOT EXIST release md release
echo [BatPPT Release Builder] -by Icy
echo 按任意键开始build
set /a a=1
pause >nul
:start
echo [第 %a% 次build]
set /a a=%a%+1
rar a pack.rar pack
rd /s /q release
md release
echo Start...
copy /b main.bat+pack.rar "release\batppt.bat"
echo OK，release文件“batppt.bat”已生成至release文件夹下
del pack.rar
echo (按任意键重建)
pause >nul
cls
goto start
