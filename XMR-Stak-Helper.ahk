; XMR-Stak Mining Helper v0.0.1
; Just a little something I came up with to help with crypto mining with xmr-stak.
; 
; With xmr-stak.exe and this script's SHIFT+F# hotkeys with your pool login information setup correctly,
; you can then easily connect to your crypto pools.
; So all you have to do is press a key combo and the info is placed in the miner for you, but you
; have to manually add every pool you want to mine.
; All you have to do is open the script edit the correct areas which are marked below
; run the script and press the hotkeys.
; Oh and be sure you have autohotkey installed http://www.autohotkey.com/download
;
; Below are the variables in which the script needs for all fuctions to work
;
;######################## DO NOT EDIT THIS SCRIPT UNLESS YOU KNOW WHAT YOUR ARE DOING! ########################
;####################################### THAT MEANS YOU [^_^] #################################################
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

IfNotExist, thepitster.jpg
URLDownloadToFile, http://www.allripped.net/files/thepitster.jpg, thepitster.jpg

Gui, Margin, 0,0
Gui +LastFound
GUI_ID:=WinExist()
Gui, -Caption +AlwaysOnTop +Border
Gui, Add, Picture, , thepitster.jpg
Gui,Show, AutoSize Hide, XMR-Stak Mining Helper v0.0.1
DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0xa0000)
Sleep 1000
DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0x90000)
Gui, Destroy

IfNotExist, XMR-Stak-Helper.ini
{
 Fileappend, [XMR-STAK]`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, pool1=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, address1=Wallet`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, rigid1=Rig ID`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, pword1=Password`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, nicehash1=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, coin1=monero`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, `r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, pool2=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, address2=Wallet`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, rigid2=Rig ID`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, pword2=Password`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, nicehash2=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, coin2=monero`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, `r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, pool3=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, address3=Wallet`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, rigid3=Rig ID`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, pword3=Password`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, nicehash3=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, coin3=monero`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, `r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, pool4=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, address4=Wallet`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, rigid4=Rig ID`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, pword4=Password`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, nicehash4=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, coin4=monero`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, `r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, htport=43000`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
 Fileappend, stakdir=%A_ScriptDir%`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
}

Menu, Tray, Add, Show, GuiShow
Menu, Tray, Add
Menu, Tray, Add, XMR-Stak-Helper &Updates, XSHelper
Menu, Tray, Add, XMR-Stak-Helper.&ini, TrayEditini
Menu, Tray, Add
Menu, Tray, Add, &ARHash.xyz, ARHash
Menu, Tray, Add, &XMR-Stak , XMR-Stak
Menu, Tray, Add
Menu, Tray, Add, &Reload Helper, TrayReload
Menu, Tray, Add
Menu, Tray, Add, &Edit Script, TrayEdit
Menu, Tray, Add
Menu, Tray, Add, E&xit, TrayExit
Menu, Tray, Default, Show
Menu, Tray, Click, 1
Menu, Tray, NoStandard

IniRead, pool1, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pool1, %A_space%
IniRead, address1, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, address1, %A_space%
IniRead, rigid1, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, rigid1, %A_space%
IniRead, pword1, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pword1, %A_space%
IniRead, nicehash1, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, nicehash1, %A_space%
IniRead, coin1, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, coin1, %A_space%
IniRead, pool2, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pool2, %A_space%
IniRead, address2, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, address2, %A_space%
IniRead, rigid2, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, rigid2, %A_space%
IniRead, pword2, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pword2, %A_space%
IniRead, nicehash2, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, nicehash2, %A_space%
IniRead, coin2, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, coin2, %A_space%
IniRead, pool3, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pool3, %A_space%
IniRead, address3, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, address3, %A_space%
IniRead, rigid3, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, rigid3, %A_space%
IniRead, pword3, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pword3, %A_space%
IniRead, nicehash3, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, nicehash3, %A_space%
IniRead, coin3, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, coin3, %A_space%
IniRead, pool4, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pool4, %A_space%
IniRead, address4, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, address4, %A_space%
IniRead, rigid4, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, rigid4, %A_space%
IniRead, pword4, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pword4, %A_space%
IniRead, nicehash4, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, nicehash4, %A_space%
IniRead, coin4, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, coin4, %A_space%
IniRead, htport, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, htport, %A_space%
IniRead, stakdir, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, stakdir, %A_space%

Main:
Gui, Add, Button, x12 y372 w70 h30 , Monero
Gui, Add, Button, x12 y452 w70 h30 , Alloy
Gui, Add, Button, x12 y412 w70 h30 , MUTEX
Gui, Add, Button, x92 y412 w70 h30 , ARQMA
Gui, Add, Button, x252 y412 w70 h30 , XSHelper
Gui, Add, Button, x172 y412 w70 h30 , Veronite
Gui, Add, Button, x172 y372 w70 h30 , X-CASH
Gui, Add, Button, x172 y452 w70 h30 , Xaria
Gui, Add, Button, x332 y372 w70 h30 , About
Gui, Add, Button, x332 y412 w70 h30 , HideMe
Gui, Add, Button, x332 y452 w70 h30 , Close
Gui, Add, Button, x643 y381 w70 h30 , ARHash
Gui, Add, Button, x741 y382 w70 h30 , XMR-Stak
Gui, Add, Tab, x2 y0 w840 h370 , Info|Pool Info|Directory Info
Gui, Tab, Info
Gui, Add, Text, x32 y30 w780 h310 , Just a little something I came up with to help with crypto mining with XMR-Stak. With xmr-stak.exe and this script's SHIFT+F# hotkeys with your pool login information setup correctly, you can then easily connect to your crypto pools. So all you have to do is press a key combo and the info is placed in the miner for you, but you have to manually add every pool you want to mine. If you want to edit the hotkeys all you have to do is open the script, edit the correct areas, run the script and press desired hotkeys. Oh and be sure you have autohotkey installed http://www.autohotkey.com/download.
Gui, Tab, Pool Info
Gui, Add, Text, x12 y30 w70 h20 , Mining Pool 1:
Gui, Add, CheckBox, x82 y30 w90 h20 vnicehash1, Use Nicehash
Gui, Add, Text, x12 y50 w60 h20 , Pool 1:
Gui, Add, Edit, x72 y50 w310 h20 vpool1, %pool1%
Gui, Add, Edit, x72 y70 w310 h20 vaddress1, %address1%
Gui, Add, Text, x12 y70 w60 h20 , Wallet 1:
Gui, Add, Text, x12 y90 w60 h20 , Rig ID 1:
Gui, Add, Edit, x72 y90 w310 h20 vrigid1, %rigid1%
Gui, Add, Text, x12 y110 w60 h20 , Password 1:
Gui, Add, Edit, x72 y110 w310 h20 vpword1, %pword1%
Gui, Add, Text, x12 y130 w60 h20 , Currency 1:
Gui, Add, Edit, x72 y130 w310 h20 vcoin1, %coin1%
Gui, Add, Text, x422 y30 w70 h20 , Mining Pool 2:
Gui, Add, CheckBox, x492 y30 w90 h20 vnicehash2, Use Nicehash
Gui, Add, Text, x422 y50 w60 h20 , Pool 2:
Gui, Add, Edit, x482 y50 w310 h20 vpool2, %pool2%
Gui, Add, Text, x422 y70 w60 h20 , Wallet 2:
Gui, Add, Edit, x482 y70 w310 h20 vaddress2, %address2%
Gui, Add, Text, x422 y90 w60 h20 , Rig ID 2:
Gui, Add, Edit, x482 y90 w310 h20 vrigid2, %rigid2%
Gui, Add, Text, x422 y110 w60 h20 , Password 2:
Gui, Add, Edit, x482 y110 w310 h20 vpword2, %pword2%
Gui, Add, Text, x422 y130 w60 h20 , Currency 2:
Gui, Add, Edit, x482 y130 w310 h20 vcoin2, %coin2%
Gui, Add, Text, x12 y160 w70 h20 , Mining Pool 3:
Gui, Add, CheckBox, x82 y160 w90 h20 vnicehash3, Use Nicehash
Gui, Add, Text, x12 y180 w60 h20 , Pool 3:
Gui, Add, Edit, x72 y180 w310 h20 vpool3, %pool3%
Gui, Add, Text, x12 y200 w60 h20 , Wallet 3:
Gui, Add, Edit, x72 y200 w310 h20 vaddress3, %address3%
Gui, Add, Text, x12 y220 w60 h20 , Rig ID 3:
Gui, Add, Edit, x72 y220 w310 h20 vrigid3, %rigid3%
Gui, Add, Text, x12 y240 w60 h20 , Password 3:
Gui, Add, Edit, x72 y240 w310 h20 vpword3, %pword3%
Gui, Add, Text, x12 y260 w60 h20 , Currency 3:
Gui, Add, Edit, x72 y260 w310 h20 vcoin3, %coin3%
Gui, Add, Text, x422 y160 w70 h20 , Mining Pool 4:
Gui, Add, CheckBox, x492 y160 w90 h20 vnicehash4, Use Nicehash
Gui, Add, Text, x422 y180 w60 h20 , Pool 4:
Gui, Add, Edit, x482 y180 w310 h20 vpool4, %pool4%
Gui, Add, Text, x422 y200 w60 h20 , Wallet 4:
Gui, Add, Edit, x482 y200 w310 h20 vaddress4, %address4%
Gui, Add, Text, x422 y220 w60 h20 , Rig ID 4:
Gui, Add, Edit, x482 y220 w310 h20 vrigid4, %rigid4%
Gui, Add, Text, x422 y240 w60 h20 , Password 4:
Gui, Add, Edit, x482 y240 w310 h20 vpword4, %pword4%
Gui, Add, Text, x422 y260 w60 h20 , Currency 4:
Gui, Add, Edit, x482 y260 w310 h20 vcoin4, %coin4%
Gui, Add, Text, x72 y280 w60 h20 , HTTP Port
Gui, Add, Edit, x92 y300 w130 h20 vhtport, %htport%
Gui, Add, Text, x12 y300 w80 h20 , http://127.0.0.1:
Gui, Add, Button, x362 y320 w100 h30 gOK, OK
Gui, Tab, Directory Info
Gui, Add, Text, x102 y130 w160 h20 , XMR-Stak Executable Location
Gui, Add, Text, x102 y160 w630 h20 vstakdir, %stakdir%\xmr-stak.exe
Gui, Add, Text, x102 y200 w90 h20 , XMR-Stak Folder
Gui, Add, Text, x102 y230 w630 h20 , %stakdir%
Gui, Add, Button, x662 y190 w70 h20 , Browse
Gui, Add, Button, x662 y300 w100 h30 gOK, OK

Gui, Margin, 0,0
Gui +LastFound
GUI_ID:=WinExist()
Gui, Show, x341 y133 h515 w847, XMR-Stak Mining Helper v0.0.1
DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0xa0000)
Return

XButton1::
Send {Space down} ;Hold down the Spacebar
KeyWait XButton1 ; Wait for the user to release the 3rd mouse button.
Send {Space up}	; Release the Spacebar.
Return
ButtonAbout:
Gui, Destroy
Gui, Margin, 0,0
Gui +LastFound
GUI_ID:=WinExist()
Gui, -Caption +AlwaysOnTop +Border
Gui, Add, Picture, , thepitster.jpg
Gui,Show,Autosize Hide,xmr-stak Helper v0.0.1
DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0xa0000)
Sleep 3000
DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0x90000)
Gui, Destroy
Goto, Main
Return
GuiEscape:
GuiClose:
  DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
  Gui, Hide
Return
GuiMinimize:
  DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
  Gui, Hide
Return
GuiShow:
Gui, Margin, 0,0
Gui +LastFound
GUI_ID:=WinExist()
Gui, Show, h515 w850, XMR-Stak Mining Helper v0.0.1
DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0xa0000)
Return

;### TRAY MODS ############################################################################################################
TrayReload:
Reload
Return
TrayEdit:
Run, C:\Program Files\Notepad++\notepad++.exe %A_ScriptDir%\%A_ScriptName%
Return
TrayEditini:
Run, C:\Program Files\Notepad++\notepad++.exe %A_ScriptDir%\XMR-Stak-Helper.ini
Return
TrayExit:
Exitapp
Return
ButtonBrowse:
Gui, Submit, NoHide
FileSelectFolder, stakdir
Iniwrite, %stakdir%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, stakdir
Return

OK:
Gui, Submit, NoHide  ; Save the input from the user to each control's associated variable.
Iniwrite, %pool1%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pool1
Iniwrite, %address1%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, address1
Iniwrite, %rigid1%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, rigid1
Iniwrite, %pword1%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pword1
Iniwrite, %nicehash1%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, nicehash1
Iniwrite, %coin1%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, coin1
Iniwrite, %pool2%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pool2
Iniwrite, %address2%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, address2
Iniwrite, %rigid2%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, rigid2
Iniwrite, %pword2%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pword2
Iniwrite, %nicehash2%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, nicehash2
Iniwrite, %coin2%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, coin2
Iniwrite, %pool3%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pool3
Iniwrite, %address3%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, address3
Iniwrite, %rigid3%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, rigid3
Iniwrite, %pword3%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pword3
Iniwrite, %nicehash3%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, nicehash3
Iniwrite, %coin3%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, coin3
Iniwrite, %pool4%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pool4
Iniwrite, %address4%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, address4
Iniwrite, %rigid4%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, rigid4
Iniwrite, %pword4%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, pword4
Iniwrite, %nicehash4%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, nicehash4
Iniwrite, %coin4%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, coin4
Iniwrite, %htport%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, htport
Iniwrite, %stakdir%, %A_ScriptDir%\XMR-Stak-Helper.ini, XMR-STAK, stakdir, %A_space%
Return

ButtonMonero:
Run, https://getmonero.org/
Return
ButtonMUTEX:
Run, https://mutexcurrency.io/
Return
ButtonXaria:
Run, http://xaria.xyz/
Return
ButtonVeronite:
Run, https://veronite.space/
Return
ButtonARQMA:
Run, https://arqma.com/
Return
ButtonAlloy:
Run, https://alloyproject.org/
Return
ButtonX-CASH:
Run, https://x-cash.org/
Return
ButtonXSHelper:
Run, http://www.allripped.net/files/srohelper
Return
ButtonARHash:
Run, https://arhash.xyz/
Return
ButtonXMR-Stak:
Run, https://github.com/ALLRiPPED/ar-xmr-stak/releases
Return
ButtonSROLoader:
SetWorkingDir %stakdir%
Run, %stakdir%\xmr-stak.exe
;msgbox, SilkRoad Executed!
Return
ButtonTest:
SetWorkingDir %stakdir%
Run, %stakdir%\xmr-stak.exe
;msgbox, Testosterone Executed!
Return
ButtonHideMe:
  DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
  Gui, Hide
Return
ButtonClose:
DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000) 
ExitApp
XSHelper:
Run, http://www.allripped.net/files/srohelper
Return
XMR-Stak:
Run, https://github.com/ALLRiPPED/ar-xmr-stak/releases
Return
ARHash:
Run, https://arhash.xyz/
Return

+F5::
SetWorkingDir %stakdir%
if (nicehash1 = 0)
{
Run, %stakdir%\xmr-stak.exe -i %htport% -o %pool1% -u %address1% -r %rigid1% -p %pword1% --currency %coin1%
msgbox, XMR-Stak Executed!
}else{
Run, %stakdir%\xmr-stak.exe -i %htport% -o %pool1% -u %address1% -r %rigid1% -p %pword1% --currency %coin1% --use-nicehash
msgbox, XMR-Stak Using Nicehash Executed!
}
return

+F6::
SetWorkingDir %stakdir%
if (nicehash1 = 0)
{
Run, %stakdir%\xmr-stak.exe -i %htport% -o %pool2% -u %address2% -r %rigid2% -p %pword2% --currency %coin2%
msgbox, XMR-Stak Executed!
}else{
Run, %stakdir%\xmr-stak.exe -i %htport% -o %pool2% -u %address2% -r %rigid2% -p %pword2% --currency %coin2% --use-nicehash
msgbox, XMR-Stak Using Nicehash Executed!
}
return

+F7::
SetWorkingDir %stakdir%
if (nicehash1 = 0)
{
Run, %stakdir%\xmr-stak.exe -i %htport% -o %pool3% -u %address3% -r %rigid3% -p %pword3% --currency %coin3%
msgbox, XMR-Stak Executed!
}else{
Run, %stakdir%\xmr-stak.exe -i %htport% -o %pool3% -u %address3% -r %rigid3% -p %pword3% --currency %coin3% --use-nicehash
msgbox, XMR-Stak Using Nicehash Executed!
}
return

+F8::
if (nicehash1 = 0)
{
Run, %stakdir%\xmr-stak.exe -i %htport% -o %pool4% -u %address4% -r %rigid4% -p %pword4% --currency %coin4%
msgbox, XMR-Stak Executed!
}else{
Run, %stakdir%\xmr-stak.exe -i %htport% -o %pool4% -u %address4% -r %rigid4% -p %pword4% --currency %coin4% --use-nicehash
msgbox, XMR-Stak Using Nicehash Executed!
}
return
