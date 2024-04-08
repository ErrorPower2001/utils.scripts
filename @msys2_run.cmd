@ECHO OFF

SET "MSYS2=C:\msys2;%UserProfile%\scoop\apps\msys2\current\usr\bin;%UserProfile%\scoop\apps\msys2-cn\current\usr\bin"
SET "PATH=%MSYS2%;%PATH%"
%~n0.exe %*

@ECHO ON
