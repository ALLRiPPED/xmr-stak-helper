; XMR-Stak Mining Helper v0.7.0
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
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force ; Keeps you from running more than one of these at once, that can get really messy.
IfNotExist, thepitster.jpg
	URLDownloadToFile, http://www.allripped.net/files/thepitster.jpg, thepitster.jpg
IfNotExist, app.ico
	URLDownloadToFile, https://raw.githubusercontent.com/ALLRiPPED/xmr-stak-helper/master/app.ico, app.ico
	if(FileExist(A_ScriptDir "\app.ico"))
	Menu,Tray,Icon,app.ico
	Gui, Margin, 0,0
	Gui +LastFound
	GUI_ID:=WinExist()
	Gui, -Caption +AlwaysOnTop +Border
	Gui, Add, Picture, , thepitster.jpg
	Gui,Show, AutoSize Hide, XMR-Stak Mining Helper v0.7.0
	DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0xa0000)
	Sleep 1000
	DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0x90000)
	Gui, Destroy

IfNotExist, XMR-Stak-Helper.ini
{
	Fileappend, [XMR-STAK]`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, [POOL 1]`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, pool1=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, address1=Wallet`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, rigid1=Rig ID`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, pword1=Password`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, coin1=monero`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, htport1=41000`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, vender1=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, vamd1=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, vnvidia1=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, nocpu1=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, noamd1=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, nonvidia1=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, nicehash1=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, `r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, [POOL 2]`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, pool2=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, address2=Wallet`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, rigid2=Rig ID`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, pword2=Password`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, coin2=monero`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, htport2=42000`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, vender2=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, vamd2=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, vnvidia2=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, nocpu2=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, noamd2=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, nonvidia2=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, nicehash2=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, `r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, [POOL 3]`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, pool3=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, address3=Wallet`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, rigid3=Rig ID`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, pword3=Password`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, coin3=monero`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, htport3=43000`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, vender3=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, vamd3=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, vnvidia3=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, nocpu3=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, noamd3=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, nonvidia3=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, nicehash3=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, `r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, [POOL 4]`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, pool4=Pool Host/IP:Port`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, address4=Wallet`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, rigid4=Rig ID`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, pword4=Password`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, coin4=monero`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, htport4=44000`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, vender4=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, vamd4=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, vnvidia4=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, nocpu4=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, noamd4=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, nonvidia4=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, nicehash4=0`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, `r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, [DIR]`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
	Fileappend, stakdir=%A_ScriptDir%`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
}

	Menu, Tray, Add, Show, GuiShow
	Menu, Tray, Add
	Menu, Tray, Add, XMR-Stak-Helper &Updates, ButtonXSHelper
	Menu, Tray, Add, XMR-Stak-Helper.&ini, TrayEditini
	Menu, Tray, Add
	Menu, Tray, Add, &ARHash.xyz, ButtonARHash
	Menu, Tray, Add, &XMR-Stak , ButtonXMR-Stak
	Menu, Tray, Add
	Menu, Tray, Add, &Reload Helper, TrayReload
	Menu, Tray, Add
	Menu, Tray, Add, &Edit Script, TrayEdit
	Menu, Tray, Add
	Menu, Tray, Default, Show
	Menu, Tray, Click, 1
	Menu, Tray, NoStandard

	IniRead, pool1, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, pool1, %A_space%
	IniRead, address1, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, address1, %A_space%
	IniRead, rigid1, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, rigid1, %A_space%
	IniRead, pword1, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, pword1, %A_space%
	IniRead, coin1, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, coin1, %A_space%
	IniRead, htport1, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, htport1, %A_space%
	IniRead, vender1,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, vender1, %A_space%
	IniRead, vamd1,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, vamd1, %A_space%
	IniRead, vnvidia1,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, vnvidia1, %A_space%
	IniRead, nocpu1, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, nocpu1, %A_space%
	IniRead, noamd1, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, noamd1, %A_space%
	IniRead, nonvidia1, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, nonvidia1, %A_space%
	IniRead, nicehash1, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, nicehash1, %A_space%
	IniRead, pool2, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, pool2, %A_space%
	IniRead, address2, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, address2, %A_space%
	IniRead, rigid2, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, rigid2, %A_space%
	IniRead, pword2, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, pword2, %A_space%
	IniRead, coin2, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, coin2, %A_space%
	IniRead, htport2, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, htport2, %A_space%
	IniRead, vender2,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, vender2, %A_space%
	IniRead, vamd2,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, vamd2, %A_space%
	IniRead, vnvidia2,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, vnvidia2, %A_space%
	IniRead, nocpu2, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, nocpu2, %A_space%
	IniRead, noamd2, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, noamd2, %A_space%
	IniRead, nonvidia2, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, nonvidia2, %A_space%
	IniRead, nicehash2, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, nicehash2, %A_space%
	IniRead, pool3, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, pool3, %A_space%
	IniRead, address3, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, address3, %A_space%
	IniRead, rigid3, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, rigid3, %A_space%
	IniRead, pword3, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, pword3, %A_space%
	IniRead, coin3, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, coin3, %A_space%
	IniRead, htport3, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, htport3, %A_space%
	IniRead, vender3,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, vender3, %A_space%
	IniRead, vamd3,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, vamd3, %A_space%
	IniRead, vnvidia3,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, vnvidia3, %A_space%
	IniRead, nocpu3, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, nocpu3, %A_space%
	IniRead, noamd3, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, noamd3, %A_space%
	IniRead, nonvidia3, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, nonvidia3, %A_space%
	IniRead, nicehash3, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, nicehash3, %A_space%
	IniRead, pool4, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, pool4, %A_space%
	IniRead, address4, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, address4, %A_space%
	IniRead, rigid4, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, rigid4, %A_space%
	IniRead, pword4, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, pword4, %A_space%
	IniRead, coin4, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, coin4, %A_space%
	IniRead, htport4, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, htport4, %A_space%
	IniRead, vender4,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, vender4, %A_space%
	IniRead, vamd4,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, vamd4, %A_space%
	IniRead, vnvidia4,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, vnvidia4, %A_space%
	IniRead, nocpu4, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, nocpu4, %A_space%
	IniRead, noamd4, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, noamd4, %A_space%
	IniRead, nonvidia4, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, nonvidia4, %A_space%
	IniRead, nicehash4, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, nicehash4, %A_space%
	IniRead, stakdir, %A_ScriptDir%\XMR-Stak-Helper.ini, DIR, stakdir, %A_space%

Main:
Gui, Add, Button, x12 y450 w70 h30 , Monero
Gui, Add, Button, x12 y530 w70 h30 , Alloy
Gui, Add, Button, x12 y490 w70 h30 , MUTEX
Gui, Add, Button, x92 y490 w70 h30 , ARQMA
Gui, Add, Button, x252 y490 w70 h30 , XSHelper
Gui, Add, Button, x172 y490 w70 h30 , Veronite
Gui, Add, Button, x172 y450 w70 h30 , X-CASH
Gui, Add, Button, x172 y530 w70 h30 , Xaria
Gui, Add, Button, x332 y450 w70 h30 , About
Gui, Add, Button, x332 y490 w70 h30 , HideMe
Gui, Add, Button, x332 y530 w70 h30 , Close
Gui, Add, Button, x652 y500 w70 h30 , ARHash
Gui, Add, Button, x782 y500 w70 h30 , XMR-Stak
Gui, Add, Tab, x2 y0 w890 h430 , Info|Pool Info|Directory Info
Gui, Tab, Info
Gui, Add, Text, x32 y30 w780 h310 , Just a little something I came up with to help with crypto mining with XMR-Stak. With xmr-stak.exe and this script's SHIFT+F# hotkeys with your pool login information setup correctly, you can then easily connect to your crypto pools. So all you have to do is press a key combo and the info is placed in the miner for you, but you have to manually add every pool you want to mine. If you want to edit the hotkeys all you have to do is open the script, edit the correct areas, run the script and press desired hotkeys. Oh and be sure you have autohotkey installed http://www.autohotkey.com/download.
Gui, Tab, Pool Info
Gui, Add, GroupBox, x32 y30 w350 h170 , Mining Pool 1:
Gui, Add, Text, x42 y50 w60 h20 , Pool 1:
Gui, Add, Edit, x102 y50 w170 h20 vpool1, %pool1%
Gui, Add, Text, x42 y70 w60 h20 , Wallet 1:
Gui, Add, Edit, x102 y70 w170 h20 vaddress1, %address1%
Gui, Add, Text, x42 y90 w60 h20 , Rig ID 1:
Gui, Add, Edit, x102 y90 w170 h20 vrigid1, %rigid1%
Gui, Add, Text, x42 y110 w60 h20 , Password 1:
Gui, Add, Edit, x102 y110 w170 h20 vpword1, %pword1%
Gui, Add, Text, x42 y130 w60 h20 , Currency 1:
Gui, Add, Edit, x102 y130 w170 h20 vcoin1, %coin1%
Gui, Add, Text, x42 y150 w60 h20 , Port 1:
Gui, Add, Edit, x102 y150 w170 h20 vhtport1, %htport1%
Gui, Add, CheckBox, x42 y170 w100 h20 vvender1 gSub1 Checked%vender1%, --openCLVendor
Gui, Add, Radio, x152 y170 w50 h20 vvamd1 Checked%vamd1%, AMD
Gui, Add, Radio, x212 y170 w60 h20 vvnvidia1 Checked%vnvidia1%, NVIDIA
Gui, Add, CheckBox, x292 y50 w60 h20 vnocpu1 Checked%nocpu1%, --noCPU
Gui, Add, CheckBox, x292 y80 w60 h20 vnoamd1 Checked%noamd1%, --noAMD
Gui, Add, CheckBox, x292 y110 w80 h20 vnonvidia1 Checked%nonvidia1%, --noNVIDIA
Gui, Add, CheckBox, x292 y140 w70 h20 vnicehash1 Checked%nicehash1%, --nicehash
Gui, Add, Button, x292 y170 w80 h20 gLP1, Launch Pool 1
Gui, Add, GroupBox, x482 y30 w350 h170 , Mining Pool 2:
Gui, Add, Text, x492 y50 w60 h20 , Pool 2:
Gui, Add, Edit, x552 y50 w170 h20 vpool2, %pool2%
Gui, Add, Text, x492 y70 w60 h20 , Wallet 2:
Gui, Add, Edit, x552 y70 w170 h20 vaddress2, %address2%
Gui, Add, Text, x492 y90 w60 h20 , Rig ID 2:
Gui, Add, Edit, x552 y90 w170 h20 vrigid2, %rigid2%
Gui, Add, Text, x492 y110 w60 h20 , Password 2:
Gui, Add, Edit, x552 y110 w170 h20 vpword2, %pword2%
Gui, Add, Text, x492 y130 w60 h20 , Currency 2:
Gui, Add, Edit, x552 y130 w170 h20 vcoin2, %coin2%
Gui, Add, Text, x492 y150 w60 h20 , Port 2:
Gui, Add, Edit, x552 y150 w170 h20 vhtport2, %htport2%
Gui, Add, CheckBox, x492 y170 w100 h20 vvender2 gSub2 Checked%vender2%, --openCLVendor
Gui, Add, Radio, x602 y170 w50 h20 vvamd2 Checked%vamd2%, AMD
Gui, Add, Radio, x662 y170 w60 h20 vvnvidia2 Checked%vnvidia2%, NVIDIA
Gui, Add, CheckBox, x742 y50 w60 h20 vnocpu2 Checked%nocpu2%, --noCPU
Gui, Add, CheckBox, x742 y80 w60 h20 vnoamd2 Checked%noamd2%, --noAMD
Gui, Add, CheckBox, x742 y110 w80 h20 vnonvidia2 Checked%nonvidia2%, --noNVIDIA
Gui, Add, CheckBox, x742 y140 w70 h20 vnicehash2 Checked%nicehash2%, --nicehash
Gui, Add, Button, x742 y170 w80 h20 gLP2, Launch Pool 2
Gui, Add, GroupBox, x32 y210 w350 h170 , Mining Pool 3:
Gui, Add, Text, x42 y230 w60 h20 , Pool 3:
Gui, Add, Edit, x102 y230 w170 h20 vpool3, %pool3%
Gui, Add, Text, x42 y250 w60 h20 , Wallet 3:
Gui, Add, Edit, x102 y250 w170 h20 vaddress3, %address3%
Gui, Add, Text, x42 y270 w60 h20 , Rig ID 3:
Gui, Add, Edit, x102 y270 w170 h20 vrigid3, %rigid3%
Gui, Add, Text, x42 y290 w60 h20 , Password 3:
Gui, Add, Edit, x102 y290 w170 h20 vpword3, %pword3%
Gui, Add, Text, x42 y310 w60 h20 , Currency 3:
Gui, Add, Edit, x102 y310 w170 h20 vcoin3, %coin3%
Gui, Add, Text, x42 y330 w60 h20 , Port 3:
Gui, Add, Edit, x102 y330 w170 h20 vhtport3, %htport3%
Gui, Add, CheckBox, x42 y350 w100 h20 vvender3 gSub3 Checked%vender3%, --openCLVendor
Gui, Add, Radio, x152 y350 w50 h20 vvamd3 Checked%vamd3%, AMD
Gui, Add, Radio, x212 y350 w60 h20 vvnvidia3 Checked%vnvidia3%, NVIDIA
Gui, Add, CheckBox, x292 y230 w60 h20 vnocpu3 Checked%nocpu3%, --noCPU
Gui, Add, CheckBox, x292 y260 w60 h20 vnoamd3 Checked%noamd3%, --noAMD
Gui, Add, CheckBox, x292 y290 w80 h20 vnonvidia3 Checked%nonvidia3%, --noNVIDIA
Gui, Add, CheckBox, x292 y320 w70 h20 vnicehash3 Checked%nicehash3%, --nicehash
Gui, Add, Button, x292 y350 w80 h20 gLP3, Launch Pool 3
Gui, Add, GroupBox, x482 y210 w350 h170 , Mining Pool 4:
Gui, Add, Text, x492 y230 w60 h20 , Pool 4:
Gui, Add, Edit, x552 y230 w170 h20 vpool4, %pool4%
Gui, Add, Text, x492 y250 w60 h20 , Wallet 4:
Gui, Add, Edit, x552 y250 w170 h20 vaddress4, %address4%
Gui, Add, Text, x492 y270 w60 h20 , Rig ID 4:
Gui, Add, Edit, x552 y270 w170 h20 vrigid4, %rigid4%
Gui, Add, Text, x492 y290 w60 h20 , Password 4:
Gui, Add, Edit, x552 y290 w170 h20 vpword4, %pword4%
Gui, Add, Text, x492 y310 w60 h20 , Currency 4:
Gui, Add, Edit, x552 y310 w170 h20 vcoin4, %coin4%
Gui, Add, Text, x492 y330 w60 h20 , Port 4:
Gui, Add, Edit, x552 y330 w170 h20 vhtport4, %htport4%
Gui, Add, CheckBox, x492 y350 w100 h20 vvender4 gSub4 Checked%vender4%, --openCLVendor
Gui, Add, Radio, x602 y350 w50 h20 vvamd4 Checked%vamd4%, AMD
Gui, Add, Radio, x662 y350 w60 h20 vvnvidia4 Checked%vnvidia4%, NVIDIA
Gui, Add, CheckBox, x742 y230 w60 h20 vnocpu4 Checked%nocpu4%, --noCPU
Gui, Add, CheckBox, x742 y260 w60 h20 vnoamd4 Checked%noamd4%, --noAMD
Gui, Add, CheckBox, x742 y290 w80 h20 vnonvidia4 Checked%nonvidia4%, --noNVIDIA
Gui, Add, CheckBox, x742 y320 w70 h20 vnicehash4 Checked%nicehash4%, --nicehash
Gui, Add, Button, x742 y350 w80 h20 gLP4, Launch Pool 4
Gui, Add, Button, x382 y400 w100 h20 gOK, OK
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
Gui, Show, x341 y133 h611 w887, XMR-Stak Mining Helper v0.7.0
DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0xa0000)
If (vender1 = 0) {
	GuiControl, Disable, vamd1
	GuiControl, Disable, vnvidia1
}Else{
	GuiControl, Enable, vamd1
	GuiControl, Enable, vnvidia1
}
If (vender2 = 0) {
	GuiControl, Disable, vamd2
	GuiControl, Disable, vnvidia2
}Else{
	GuiControl, Enable, vamd2
	GuiControl, Enable, vnvidia2
}
If (vender3 = 0) {
	GuiControl, Disable, vamd3
	GuiControl, Disable, vnvidia3
}Else{
	GuiControl, Enable, vamd3
	GuiControl, Enable, vnvidia3
}
If (vender4 = 0) {
	GuiControl, Disable, vamd4
	GuiControl, Disable, vnvidia4
}Else{
	GuiControl, Enable, vamd4
	GuiControl, Enable, vnvidia4
}
Return
Sub1:
GuiControlGet, vender1
If (vender1 = 0) {
	GuiControl, Disable, vamd1
	GuiControl, Disable, vnvidia1
}Else{
	GuiControl, Enable, vamd1
	GuiControl, Enable, vnvidia1
}
Return
Sub2:
GuiControlGet, vender2
If (vender2 = 0) {
	GuiControl, Disable, vamd2
	GuiControl, Disable, vnvidia2
}Else{
	GuiControl, Enable, vamd2
	GuiControl, Enable, vnvidia2
}
Return
Sub3:
GuiControlGet, vender3
If (vender3 = 0) {
	GuiControl, Disable, vamd3
	GuiControl, Disable, vnvidia3
}Else{
	GuiControl, Enable, vamd3
	GuiControl, Enable, vnvidia3
}
Return
Sub4:
GuiControlGet, vender4
If (vender4 = 0) {
	GuiControl, Disable, vamd4
	GuiControl, Disable, vnvidia4
}Else{
	GuiControl, Enable, vamd4
	GuiControl, Enable, vnvidia4
}
Return
;############################## HIDDEN WINDOWS MOD ##############################
mwt_MaxWindows = 50
mwt_Hotkey = #h  ; Win+H
mwt_UnHotkey = #u  ; Win+U
mwt_StandardMenu = N
#HotkeyModifierTimeout 100
SetWinDelay 10
SetKeyDelay 0
Hotkey, %mwt_Hotkey%, mwt_Minimize
Hotkey, %mwt_UnHotkey%, mwt_UnMinimize

OnExit, mwt_RestoreAllThenExit

if mwt_StandardMenu = Y
    Menu, Tray, Add
else
{
    Menu, Tray, NoStandard
    Menu, Tray, Add, E&xit and Unhide All, mwt_RestoreAllThenExit
}
Menu, Tray, Add, &Unhide All Hidden Windows, mwt_RestoreAll
Menu, Tray, Add  ; Another separator line to make the above more special.

if A_AhkVersion =   ; Since it's blank, version is older than 1.0.22.
    mwt_MaxLength = 100
else
    mwt_MaxLength = 260  ; Reduce this to restrict the width of the menu.
return  ; End of auto-execute section.

mwt_Minimize:
if mwt_WindowCount >= %mwt_MaxWindows%
{
    MsgBox No more than %mwt_MaxWindows% may be hidden simultaneously.
    return
}

WinWait, A,, 2
if ErrorLevel <> 0  ; It timed out, so do nothing.
    return

WinGet, mwt_ActiveID, ID
WinGetTitle, mwt_ActiveTitle
WinGetClass, mwt_ActiveClass
if mwt_ActiveClass in Shell_TrayWnd,Progman
{
    MsgBox The desktop and taskbar cannot be hidden.
    return
}
Send, !{esc}
WinHide

if mwt_ActiveTitle =
    mwt_ActiveTitle = ahk_class %mwt_ActiveClass%

StringLeft, mwt_ActiveTitle, mwt_ActiveTitle, %mwt_MaxLength%

Loop, %mwt_MaxWindows%
{
    if mwt_WindowTitle%A_Index% = %mwt_ActiveTitle%
    {
        StringTrimLeft, mwt_ActiveIDShort, mwt_ActiveID, 2
        StringLen, mwt_ActiveIDShortLength, mwt_ActiveIDShort
        StringLen, mwt_ActiveTitleLength, mwt_ActiveTitle
        mwt_ActiveTitleLength += %mwt_ActiveIDShortLength%
        mwt_ActiveTitleLength += 1 ; +1 the 1 space between title & ID.
        if mwt_ActiveTitleLength > %mwt_MaxLength%
        {
            TrimCount = %mwt_ActiveTitleLength%
            TrimCount -= %mwt_MaxLength%
            StringTrimRight, mwt_ActiveTitle, mwt_ActiveTitle, %TrimCount%
        }
        mwt_ActiveTitle = %mwt_ActiveTitle% %mwt_ActiveIDShort%
        break
    }
}

mwt_AlreadyExists = n
Loop, %mwt_MaxWindows%
{
    if mwt_WindowID%A_Index% = %mwt_ActiveID%
    {
        mwt_AlreadyExists = y
        break
    }
}

if mwt_AlreadyExists = n
{
    Menu, Tray, add, %mwt_ActiveTitle%, RestoreFromTrayMenu
    mwt_WindowCount += 1
    Loop, %mwt_MaxWindows%  ; Search for a free slot.
    {
        ; It should always find a free slot if things are designed right.
        if mwt_WindowID%A_Index% =  ; An empty slot was found.
        {
            mwt_WindowID%A_Index% = %mwt_ActiveID%
            mwt_WindowTitle%A_Index% = %mwt_ActiveTitle%
            break
        }
    }
}
return

RestoreFromTrayMenu:
Menu, Tray, delete, %A_ThisMenuItem%

Loop, %mwt_MaxWindows%
{
    if mwt_WindowTitle%A_Index% = %A_ThisMenuItem%  ; Match found.
    {
        StringTrimRight, IDToRestore, mwt_WindowID%A_Index%, 0
        WinShow, ahk_id %IDToRestore%
        WinActivate ahk_id %IDToRestore%  ; Sometimes needed.
        mwt_WindowID%A_Index% =  ; Make it blank to free up a slot.
        mwt_WindowTitle%A_Index% =
        mwt_WindowCount -= 1
        break
    }
}
return

mwt_UnMinimize:
if mwt_WindowCount > 0 
{
    StringTrimRight, IDToRestore, mwt_WindowID%mwt_WindowCount%, 0
    WinShow, ahk_id %IDToRestore%
    WinActivate ahk_id %IDToRestore%
    StringTrimRight, MenuToRemove, mwt_WindowTitle%mwt_WindowCount%, 0
    Menu, Tray, delete, %MenuToRemove%
    mwt_WindowID%mwt_WindowCount% =
    mwt_WindowTitle%mwt_WindowCount% = 
    mwt_WindowCount -= 1
}
return

mwt_RestoreAllThenExit:
Gosub, mwt_RestoreAll
	Gui, Submit, ; Save the input from the user to each control's associated variable.
	Iniwrite, %pool1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, pool1
	Iniwrite, %address1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, address1
	Iniwrite, %rigid1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, rigid1
	Iniwrite, %pword1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, pword1
	Iniwrite, %coin1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, coin1
	Iniwrite, %htport1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, htport1
	Iniwrite, %vender1%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, vender1
	Iniwrite, %vamd1%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, vamd1
	Iniwrite, %vnvidia1%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, vnvidia1
	Iniwrite, %nocpu1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, nocpu1
	Iniwrite, %noamd1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, noamd1
	Iniwrite, %nonvidia1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, nonvidia1
	Iniwrite, %nicehash1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, nicehash1
	Iniwrite, %pool2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, pool2
	Iniwrite, %address2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, address2
	Iniwrite, %rigid2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, rigid2
	Iniwrite, %pword2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, pword2
	Iniwrite, %coin2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, coin2
	Iniwrite, %htport2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, htport2
	Iniwrite, %vender2%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, vender2
	Iniwrite, %vamd2%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, vamd2
	Iniwrite, %vnvidia2%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, vnvidia2
	Iniwrite, %nocpu2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, nocpu2
	Iniwrite, %noamd2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, noamd2
	Iniwrite, %nonvidia2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, nonvidia2
	Iniwrite, %nicehash2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, nicehash2
	Iniwrite, %pool3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, pool3
	Iniwrite, %address3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, address3
	Iniwrite, %rigid3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, rigid3
	Iniwrite, %pword3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, pword3
	Iniwrite, %coin3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, coin3
	Iniwrite, %htport3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, htport3
	Iniwrite, %vender3%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, vender3
	Iniwrite, %vamd3%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, vamd3
	Iniwrite, %vnvidia3%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, vnvidia3
	Iniwrite, %nocpu3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, nocpu3
	Iniwrite, %noamd3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, noamd3
	Iniwrite, %nonvidia3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, nonvidia3
	Iniwrite, %nicehash3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, nicehash3
	Iniwrite, %pool4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, pool4
	Iniwrite, %address4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, address4
	Iniwrite, %rigid4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, rigid4
	Iniwrite, %pword4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, pword4
	Iniwrite, %coin4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, coin4
	Iniwrite, %htport4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, htport4
	Iniwrite, %vender4%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, vender4
	Iniwrite, %vamd4%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, vamd4
	Iniwrite, %vnvidia4%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, vnvidia4
	Iniwrite, %nocpu4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, nocpu4
	Iniwrite, %noamd4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, noamd4
	Iniwrite, %nonvidia4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, nonvidia4
	Iniwrite, %nicehash4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, nicehash4
ExitApp  ; Do a true exit.

mwt_RestoreAll:
Loop, %mwt_MaxWindows%
{
    if mwt_WindowID%A_Index% <>
    {
        StringTrimRight, IDToRestore, mwt_WindowID%A_Index%, 0
        WinShow, ahk_id %IDToRestore%
        WinActivate ahk_id %IDToRestore%  ; Sometimes needed.
        StringTrimRight, MenuToRemove, mwt_WindowTitle%A_Index%, 0
        Menu, Tray, delete, %MenuToRemove%
        mwt_WindowID%A_Index% =  ; Make it blank to free up a slot.
        mwt_WindowTitle%A_Index% =
        mwt_WindowCount -= 1
    }
    if mwt_WindowCount = 0
        break
}
return
;############################## HIDDEN WINDOWS MOD ##############################
OK:
	Gui, Submit, NoHide  ; Save the input from the user to each control's associated variable.
	Iniwrite, %pool1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, pool1
	Iniwrite, %address1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, address1
	Iniwrite, %rigid1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, rigid1
	Iniwrite, %pword1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, pword1
	Iniwrite, %coin1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, coin1
	Iniwrite, %htport1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, htport1
	Iniwrite, %vender1%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, vender1
	Iniwrite, %vamd1%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, vamd1
	Iniwrite, %vnvidia1%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, vnvidia1
	Iniwrite, %nocpu1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, nocpu1
	Iniwrite, %noamd1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, noamd1
	Iniwrite, %nonvidia1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, nonvidia1
	Iniwrite, %nicehash1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, nicehash1
	Iniwrite, %pool2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, pool2
	Iniwrite, %address2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, address2
	Iniwrite, %rigid2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, rigid2
	Iniwrite, %pword2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, pword2
	Iniwrite, %coin2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, coin2
	Iniwrite, %htport2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, htport2
	Iniwrite, %vender2%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, vender2
	Iniwrite, %vamd2%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, vamd2
	Iniwrite, %vnvidia2%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, vnvidia2
	Iniwrite, %nocpu2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, nocpu2
	Iniwrite, %noamd2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, noamd2
	Iniwrite, %nonvidia2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, nonvidia2
	Iniwrite, %nicehash2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, nicehash2
	Iniwrite, %pool3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, pool3
	Iniwrite, %address3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, address3
	Iniwrite, %rigid3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, rigid3
	Iniwrite, %pword3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, pword3
	Iniwrite, %coin3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, coin3
	Iniwrite, %htport3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, htport3
	Iniwrite, %vender3%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, vender3
	Iniwrite, %vamd3%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, vamd3
	Iniwrite, %vnvidia3%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, vnvidia3
	Iniwrite, %nocpu3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, nocpu3
	Iniwrite, %noamd3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, noamd3
	Iniwrite, %nonvidia3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, nonvidia3
	Iniwrite, %nicehash3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, nicehash3
	Iniwrite, %pool4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, pool4
	Iniwrite, %address4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, address4
	Iniwrite, %rigid4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, rigid4
	Iniwrite, %pword4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, pword4
	Iniwrite, %coin4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, coin4
	Iniwrite, %htport4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, htport4
	Iniwrite, %vender4%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, vender4
	Iniwrite, %vamd4%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, vamd4
	Iniwrite, %vnvidia4%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, vnvidia4
	Iniwrite, %nocpu4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, nocpu4
	Iniwrite, %noamd4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, noamd4
	Iniwrite, %nonvidia4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, nonvidia4
	Iniwrite, %nicehash4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, nicehash4
Return
ButtonAbout:
	Gui, Destroy
	Gui, Margin, 0,0
	Gui +LastFound
	GUI_ID:=WinExist()
	Gui, -Caption +AlwaysOnTop +Border
	Gui, Add, Picture, , thepitster.jpg
	Gui,Show,Autosize Hide,xmr-stak Helper v0.7.0
	DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0xa0000)
	Sleep 3000
	DllCall("AnimateWindow",UInt,GUI_ID,Int,500,UInt,0x90000)
	Gui, Destroy
	Goto, Main
Return
GuiEscape:
GuiClose:
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
	Gui, Submit, Hide
Return
GuiMinimize:
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
	Gui, Submit, Hide
Return
GuiShow:
	Gui, Margin, 0,0
	Gui +LastFound
	GUI_ID:=WinExist()
	Gui, Show, x341 y133 h611 w887, XMR-Stak Mining Helper v0.7.0
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0xa0000)
Return
#X::
	Gui % (MainGui:=!MainGui) ? "Hide" : "Show", x341 y133 h611 w887, XMR-Stak Mining Helper v0.7.0
	Goto, OK
return
TrayReload:
	Gui, Submit
	Reload
Return
TrayEdit:
	Run, C:\Program Files\Notepad++\notepad++.exe %A_ScriptDir%\%A_ScriptName%
Return
TrayEditini:
	Run, C:\Program Files\Notepad++\notepad++.exe %A_ScriptDir%\XMR-Stak-Helper.ini
Return
ButtonBrowse:
	Gui, Submit, NoHide
	FileSelectFolder, stakdir
	Iniwrite, %stakdir%, %A_ScriptDir%\XMR-Stak-Helper.ini, DIR, stakdir
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
	Run, https://github.com/ALLRiPPED/xmr-stak-helper
Return
ButtonARHash:
	Run, https://arhash.xyz/
Return
ButtonXMR-Stak:
	Run, https://github.com/ALLRiPPED/ar-xmr-stak/releases
Return
ButtonHideMe:
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
	Gui, Submit, Hide
Return
ButtonClose:
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0x90000)
	Gui, Submit  ; Save the input from the user to each control's associated variable.
	Iniwrite, %pool1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, pool1
	Iniwrite, %address1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, address1
	Iniwrite, %rigid1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, rigid1
	Iniwrite, %pword1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, pword1
	Iniwrite, %coin1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, coin1
	Iniwrite, %htport1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, htport1
	Iniwrite, %vender1%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, vender1
	Iniwrite, %vamd1%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, vamd1
	Iniwrite, %vnvidia1%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, vnvidia1
	Iniwrite, %nocpu1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, nocpu1
	Iniwrite, %noamd1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, noamd1
	Iniwrite, %nonvidia1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, nonvidia1
	Iniwrite, %nicehash1%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 1, nicehash1
	Iniwrite, %pool2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, pool2
	Iniwrite, %address2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, address2
	Iniwrite, %rigid2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, rigid2
	Iniwrite, %pword2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, pword2
	Iniwrite, %coin2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, coin2
	Iniwrite, %htport2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, htport2
	Iniwrite, %vender2%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, vender2
	Iniwrite, %vamd2%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, vamd2
	Iniwrite, %vnvidia2%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, vnvidia2
	Iniwrite, %nocpu2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, nocpu2
	Iniwrite, %noamd2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, noamd2
	Iniwrite, %nonvidia2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, nonvidia2
	Iniwrite, %nicehash2%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 2, nicehash2
	Iniwrite, %pool3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, pool3
	Iniwrite, %address3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, address3
	Iniwrite, %rigid3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, rigid3
	Iniwrite, %pword3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, pword3
	Iniwrite, %coin3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, coin3
	Iniwrite, %htport3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, htport3
	Iniwrite, %vender3%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, vender3
	Iniwrite, %vamd3%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, vamd3
	Iniwrite, %vnvidia3%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, vnvidia3
	Iniwrite, %nocpu3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, nocpu3
	Iniwrite, %noamd3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, noamd3
	Iniwrite, %nonvidia3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, nonvidia3
	Iniwrite, %nicehash3%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 3, nicehash3
	Iniwrite, %pool4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, pool4
	Iniwrite, %address4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, address4
	Iniwrite, %rigid4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, rigid4
	Iniwrite, %pword4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, pword4
	Iniwrite, %coin4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, coin4
	Iniwrite, %htport4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, htport4
	Iniwrite, %vender4%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, vender4
	Iniwrite, %vamd4%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, vamd4
	Iniwrite, %vnvidia4%,%A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, vnvidia4
	Iniwrite, %nocpu4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, nocpu4
	Iniwrite, %noamd4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, noamd4
	Iniwrite, %nonvidia4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, nonvidia4
	Iniwrite, %nicehash4%, %A_ScriptDir%\XMR-Stak-Helper.ini, POOL 4, nicehash4
ExitApp
LP1:
+F5::
	Gui, Submit, NoHide
	SetWorkingDir %stakdir%
	if (vender1 = 1) AND (vamd1 = 1)
		clv1 := "--openCLVendor AMD "
	else if (vender1 = 1) AND (vnvidia1 = 1)
		clv1 := "--openCLVendor NVIDIA "
	else
		clv1 :=
	if (nocpu1 = 1)
		cpu1 := "--noCPU "
	else
		cpu1 :=
	if (noamd1 = 1)
		amd1 := "--noAMD "
	else
		amd1 :=
	if (nonvidia1 = 1) 
		nvidia1 := "--noNVIDIA "
	else
		nvidia1 :=
	if (nicehash1 = 1)
		nh1 := "--use-nicehash"
	else
		nh1 :=
	Run, %stakdir%\xmr-stak.exe %clv1%%cpu1%%amd1%%nvidia1%-i %htport1% -o %pool1% -u %address1% -r %rigid1% -p %pword1% --currency %coin1% %nh1%
return
LP2:
+F6::
	Gui, Submit, NoHide
	SetWorkingDir %stakdir%
	if (vender2 = 1) AND (vamd2 = 1)
		clv2 := "--openCLVendor AMD "
	else if (vender2 = 1) AND (vnvidia2 = 1)
		clv2 := "--openCLVendor NVIDIA "
	else
		clv2 :=
	if (nocpu2 = 1)
		cpu2 := "--noCPU "
	else
		cpu2 :=
	if (noamd2 = 1)
		amd2 := "--noAMD "
	else
		amd2 :=
	if (nonvidia2 = 1) 
		nvidia2 := "--noNVIDIA "
	else
		nvidia2 :=
	if (nicehash2 = 1)
		nh2 := "--use-nicehash"
	else
		nh2 :=
	Run, %stakdir%\xmr-stak.exe %clv2%%cpu2%%amd2%%nvidia2%-i %htport2% -o %pool2% -u %address2% -r %rigid2% -p %pword2% --currency %coin2% %nh2%
return
LP3:
+F7::
	Gui, Submit, NoHide
	SetWorkingDir %stakdir%
	if (vender3 = 1) AND (vamd3 = 1)
		clv3 := "--openCLVendor AMD "
	else if (vender3 = 1) AND (vnvidia3 = 1)
		clv3 := "--openCLVendor NVIDIA "
	else
		clv3 :=
	if (nocpu3 = 1)
		cpu3 := "--noCPU "
	else
		cpu3 :=
	if (noamd3 = 1)
		amd3 := "--noAMD "
	else
		amd3 :=
	if (nonvidia3 = 1) 
		nvidia3 := "--noNVIDIA "
	else
		nvidia3 :=
	if (nicehash3 = 1)
		nh3 := "--use-nicehash"
	else
		nh3 :=
	Run, %stakdir%\xmr-stak.exe %clv3%%cpu3%%amd3%%nvidia3%-i %htport3% -o %pool3% -u %address3% -r %rigid3% -p %pword3% --currency %coin3% %nh3%
return
LP4:
+F8::
	Gui, Submit, NoHide
	SetWorkingDir %xmrigdir%
	if (vender4 = 1) AND (vamd4 = 1)
		clv4 := "--openCLVendor AMD "
	else if (vender4 = 1) AND (vnvidia4 = 1)
		clv4 := "--openCLVendor NVIDIA "
	else
		clv4 :=
	if (nocpu4 = 1)
		cpu4 := "--noCPU "
	else
		cpu4 :=
	if (noamd4 = 1)
		amd4 := "--noAMD "
	else
		amd4 :=
	if (nonvidia4 = 1) 
		nvidia4 := "--noNVIDIA "
	else
		nvidia4 :=
	if (nicehash4 = 1)
		nh4 := "--use-nicehash"
	else
		nh4 :=
	Run, %stakdir%\xmr-stak.exe %clv4%%cpu4%%amd4%%nvidia4%-i %htport4% -o %pool4% -u %address4% -r %rigid4% -p %pword4% --currency %coin4% %nh4%
return
