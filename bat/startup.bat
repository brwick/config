:: Alt Drag
:: START "" ".\AltDrag\AltDrag.exe"
:: Auto Hotkeys
IF EXIST %sugar%\Setup GOTO LOADFKEYS
START "" ".\AutoHotkey\AutoHotkey.exe" ".\AutoHotkey\Auto-F-Keys.ahk"
START "" ".\AutoHotkey\AutoHotkey.exe" ".\AutoHotkey\DragToScroll.ahk"
GOTO PASSFKEYS
:LOADFKEYS
START "" ".\AutoHotkey\AutoHotkey.exe" "%sugar%\setup\autohotkey.files\Auto-F-Keys.ahk"
START "" ".\AutoHotkey\AutoHotkey.exe" "%sugar%\setup\autohotkey.files\DragToScroll.ahk"
:PASSFKEYS
:: DiskLEDs
START "" ".\DiskLEDC\DiskLED.exe"
IF NOT EXIST D:\ GOTO SKIPD
START "" ".\DiskLEDD\DiskLED.exe"
:SKIPD
IF NOT EXIST E:\ GOTO SKIPE
START "" ".\DiskLEDE\DiskLED.exe"
:SKIPE
:: Ditto
START "" ".\Ditto\Ditto.exe"
:: Listary
START "" ".\listary\Listary.exe"
:: Strokes Plus
REM START .\StrokesPlus_x64\StrokesPlus.exe
REM START "" ".\strokeit\strokeit.exe"
:: Stroke It
START .\StrokeIt\bin\strokeit.exe
:: Proc Exp
START "" /MIN ".\procexp64.exe"
:: BG Info
IF NOT EXIST %portable%\BGInfo GOTO SKIPBG
:: CALL %portable%\BGInfo\bg.bat
:SKIPBG 
ping 1.1.1.1 -n 1 -w 12000 >NUL
