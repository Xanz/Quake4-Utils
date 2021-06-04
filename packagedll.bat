@echo off
rename ".\xanzcoop\game000.pk4" game000.zip
del "C:\Git\Win32\Debug\gamex86.dll"
rename "C:\Git\Win32\Debug\mpgamex86.dll" gamex86.dll
xcopy /Y "C:\Git\Win32\Debug\gamex86.dll" "C:\Program Files (x86)\Steam\steamapps\common\Quake 4\xanzcoop"
"C:\Program Files\7-Zip\7z" u -tzip "./xanzcoop/game000.zip" "C:\Git\Win32\Debug\gamex86.dll"
rename ".\xanzcoop\game000.zip" game000.pk4
del ".\xanzcoop\MPGamex86.dll"
./cleandlls.bat