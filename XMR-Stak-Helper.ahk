; XMR-Stak Mining Helper v1.0.0
; Just a little something I came up with to help with crypto mining with xmr-stak.
;#Warn
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force
IfNotExist, thepitster.jpg
	URLDownloadToFile, https://raw.githubusercontent.com/ALLRiPPED/xmr-stak-helper/master/thepitster.jpg, thepitster.jpg
IfNotExist, arcryptologo.png
	URLDownloadToFile, https://raw.githubusercontent.com/ALLRiPPED/xmrig-helper/master/arcryptologo.png, arcryptologo.png
IfNotExist, app.ico
	URLDownloadToFile, https://raw.githubusercontent.com/ALLRiPPED/xmr-stak-helper/master/app.ico, app.ico
	if(FileExist(A_ScriptDir "\app.ico"))
	Menu,Tray,Icon,app.ico
	Gui, Margin, 0,0
	Gui +LastFound
	GUI_ID:=WinExist()
	Gui, -Caption +AlwaysOnTop +Border
	Gui, Add, Picture, , thepitster.jpg
	Gui,Show, AutoSize Hide, XMR-Stak Mining Helper v1.0.0
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
	Fileappend, coin1=cryptonight_v8`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
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
	Fileappend, coin3=cryptonight_v7`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
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
	Fileappend, coin4=cryptonight-lite`r`n,%A_ScriptDir%\XMR-Stak-Helper.ini
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
	Gui, Color, 000000
	Gui, Font, c00FF00,
	Gui, Add, Button, x12 y450 w70 h30 hwndHMonero, Monero
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HMonero, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error Monero, % ImageButton.LastError
	Gui, Add, Button, x12 y530 w70 h30 hwndHAlloy, Alloy
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HAlloy, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error Alloy, % ImageButton.LastError
	Gui, Add, Button, x12 y490 w70 h30 hwndHMUTEX, MUTEX
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HMUTEX, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error MUTEX, % ImageButton.LastError
	Gui, Add, Button, x92 y490 w70 h30 hwndHARQMA, ARQMA
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HARQMA, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error ARQMA, % ImageButton.LastError
	Gui, Add, Button, x252 y490 w70 h30 hwndHXSHelper, XSHelper
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HXSHelper, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error XSHelper, % ImageButton.LastError
	Gui, Add, Button, x172 y490 w70 h30 hwndHVeronite, Veronite
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HVeronite, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error Veronite, % ImageButton.LastError
	Gui, Add, Button, x172 y450 w70 h30 hwndHXCA, X-CASH
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HXCA, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error X-CASH, % ImageButton.LastError
	Gui, Add, Button, x172 y530 w70 h30 hwndHXaria, Xaria
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HXaria, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error Xaria, % ImageButton.LastError
	Gui, Add, Button, x332 y450 w70 h30 hwndHAbout, About
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HAbout, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error About, % ImageButton.LastError
	Gui, Add, Button, x332 y490 w70 h30 hwndHHideMe, HideMe
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HHideMe, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error HideMe, % ImageButton.LastError
	Gui, Add, Button, x332 y530 w70 h30 hwndHClose, Close
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HClose, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error Close, % ImageButton.LastError
	Gui, Add, Button, x652 y500 w70 h30 hwndHARHash, ARHash
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HARHash, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error ARHash, % ImageButton.LastError
	Gui, Add, Button, x782 y500 w70 h30 hwndHStak, XMR-Stak
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HStak, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error XMR-Stak, % ImageButton.LastError
	Gui, Add, Tab, x2 y0 w885 h430 , Info|Pool Info|Directory Info
	Gui, Tab, Info
	Gui, Add, Text, x32 y30 w780 h310 , Just a little something I came up with to help with crypto mining with XMR-Stak. With xmr-stak.exe and this script's SHIFT+F# hotkeys with your pool login information setup correctly, you can then easily connect to your crypto pools. So all you have to do is press a key combo and the info is placed in the miner for you, but you have to manually add every pool you want to mine. If you want to edit the hotkeys all you have to do is open the script, edit the correct areas, run the script and press desired hotkeys. Oh and be sure you have autohotkey installed http://www.autohotkey.com/download.
	Gui, Add, Picture, x310 y170 w300 h104 +BackgroundTrans, arcryptologo.png
	Gui, Tab, Pool Info
	Gui, Add, GroupBox, x32 y30 w350 h170 , Mining Pool 1
	Gui, Add, Text, x42 y50 w60 h20 , Pool:
	Gui, Add, Edit, x102 y50 w170 h20 vpool1 hwndEdit1, %pool1%
	Gui, Add, Text, x42 y70 w60 h20 , Wallet:
	Gui, Add, Edit, x102 y70 w170 h20 vaddress1 hwndEdit2, %address1%
	Gui, Add, Text, x42 y90 w60 h20 , Rig ID:
	Gui, Add, Edit, x102 y90 w170 h20 vrigid1 hwndEdit3, %rigid1%
	Gui, Add, Text, x42 y110 w60 h20 , Pass:
	Gui, Add, Edit, x102 y110 w170 h20 vpword1 hwndEdit4, %pword1%
	Gui, Add, Text, x42 y130 w60 h20 , Currency:
	Gui, Add, Edit, x102 y130 w170 h20 vcoin1 hwndEdit5, %coin1%
	Gui, Add, Text, x42 y150 w60 h20 , Port:
	Gui, Add, Edit, x102 y150 w170 h20 vhtport1 hwndEdit6, %htport1%
	Gui, Add, CheckBox, x42 y170 w100 h20 vvender1 gSub1 Checked%vender1%, --openCLVendor
	Gui, Add, Radio, x152 y170 w50 h20 vvamd1 Checked%vamd1%, AMD
	Gui, Add, Radio, x212 y170 w60 h20 vvnvidia1 Checked%vnvidia1%, NVIDIA
	Gui, Add, CheckBox, x292 y50 w60 h20 vnocpu1 Checked%nocpu1%, --noCPU
	Gui, Add, CheckBox, x292 y80 w62 h20 vnoamd1 Checked%noamd1%, --noAMD
	Gui, Add, CheckBox, x292 y110 w80 h20 vnonvidia1 Checked%nonvidia1%, --noNVIDIA
	Gui, Add, CheckBox, x292 y140 w70 h20 vnicehash1 Checked%nicehash1%, --nicehash
	Gui, Add, Button, x292 y170 w80 h20 gLP1 hwndHLP1, Launch Pool 1
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HLP1, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error LP1, % ImageButton.LastError
	Gui, Add, GroupBox, x482 y30 w350 h170 , Mining Pool 2
	Gui, Add, Text, x492 y50 w60 h20 , Pool
	Gui, Add, Edit, x552 y50 w170 h20 vpool2 hwndEdit7, %pool2%
	Gui, Add, Text, x492 y70 w60 h20 , Wallet:
	Gui, Add, Edit, x552 y70 w170 h20 vaddress2 hwndEdit8, %address2%
	Gui, Add, Text, x492 y90 w60 h20 , Rig ID:
	Gui, Add, Edit, x552 y90 w170 h20 vrigid2 hwndEdit9, %rigid2%
	Gui, Add, Text, x492 y110 w60 h20 , Pass:
	Gui, Add, Edit, x552 y110 w170 h20 vpword2 hwndEdit10, %pword2%
	Gui, Add, Text, x492 y130 w60 h20 , Currency:
	Gui, Add, Edit, x552 y130 w170 h20 vcoin2 hwndEdit11, %coin2%
	Gui, Add, Text, x492 y150 w60 h20 , Port:
	Gui, Add, Edit, x552 y150 w170 h20 vhtport2 hwndEdit12, %htport2%
	Gui, Add, CheckBox, x492 y170 w100 h20 vvender2 gSub2 Checked%vender2%, --openCLVendor
	Gui, Add, Radio, x602 y170 w50 h20 vvamd2 Checked%vamd2%, AMD
	Gui, Add, Radio, x662 y170 w60 h20 vvnvidia2 Checked%vnvidia2%, NVIDIA
	Gui, Add, CheckBox, x742 y50 w60 h20 vnocpu2 Checked%nocpu2%, --noCPU
	Gui, Add, CheckBox, x742 y80 w62 h20 vnoamd2 Checked%noamd2%, --noAMD
	Gui, Add, CheckBox, x742 y110 w80 h20 vnonvidia2 Checked%nonvidia2%, --noNVIDIA
	Gui, Add, CheckBox, x742 y140 w70 h20 vnicehash2 Checked%nicehash2%, --nicehash
	Gui, Add, Button, x742 y170 w80 h20 gLP2 hwndHLP2, Launch Pool 2
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HLP2, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error LP2, % ImageButton.LastError
	Gui, Add, GroupBox, x32 y210 w350 h170 , Mining Pool 3
	Gui, Add, Text, x42 y230 w60 h20 , Pool:
	Gui, Add, Edit, x102 y230 w170 h20 vpool3 hwndEdit13, %pool3%
	Gui, Add, Text, x42 y250 w60 h20 , Wallet:
	Gui, Add, Edit, x102 y250 w170 h20 vaddress3 hwndEdit14, %address3%
	Gui, Add, Text, x42 y270 w60 h20 , Rig ID:
	Gui, Add, Edit, x102 y270 w170 h20 vrigid3 hwndEdit15, %rigid3%
	Gui, Add, Text, x42 y290 w60 h20 , Pass:
	Gui, Add, Edit, x102 y290 w170 h20 vpword3 hwndEdit16, %pword3%
	Gui, Add, Text, x42 y310 w60 h20 , Currency:
	Gui, Add, Edit, x102 y310 w170 h20 vcoin3 hwndEdit17, %coin3%
	Gui, Add, Text, x42 y330 w60 h20 , Port:
	Gui, Add, Edit, x102 y330 w170 h20 vhtport3 hwndEdit18, %htport3%
	Gui, Add, CheckBox, x42 y350 w100 h20 vvender3 gSub3 Checked%vender3%, --openCLVendor
	Gui, Add, Radio, x152 y350 w50 h20 vvamd3 Checked%vamd3%, AMD
	Gui, Add, Radio, x212 y350 w60 h20 vvnvidia3 Checked%vnvidia3%, NVIDIA
	Gui, Add, CheckBox, x292 y230 w60 h20 vnocpu3 Checked%nocpu3%, --noCPU
	Gui, Add, CheckBox, x292 y260 w62 h20 vnoamd3 Checked%noamd3%, --noAMD
	Gui, Add, CheckBox, x292 y290 w80 h20 vnonvidia3 Checked%nonvidia3%, --noNVIDIA
	Gui, Add, CheckBox, x292 y320 w70 h20 vnicehash3 Checked%nicehash3%, --nicehash
	Gui, Add, Button, x292 y350 w80 h20 gLP3 hwndHLP3, Launch Pool 3
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HLP3, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error LP3, % ImageButton.LastError
	Gui, Add, GroupBox, x482 y210 w350 h170 , Mining Pool 4
	Gui, Add, Text, x492 y230 w60 h20 , Pool:
	Gui, Add, Edit, x552 y230 w170 h20 vpool4 hwndEdit19, %pool4%
	Gui, Add, Text, x492 y250 w60 h20 , Wallet:
	Gui, Add, Edit, x552 y250 w170 h20 vaddress4 hwndEdit20, %address4%
	Gui, Add, Text, x492 y270 w60 h20 , Rig ID:
	Gui, Add, Edit, x552 y270 w170 h20 vrigid4 hwndEdit21, %rigid4%
	Gui, Add, Text, x492 y290 w60 h20 , Pass:
	Gui, Add, Edit, x552 y290 w170 h20 vpword4 hwndEdit22, %pword4%
	Gui, Add, Text, x492 y310 w60 h20 , Currency:
	Gui, Add, Edit, x552 y310 w170 h20 vcoin4 hwndEdit23, %coin4%
	Gui, Add, Text, x492 y330 w60 h20 , Port:
	Gui, Add, Edit, x552 y330 w170 h20 vhtport4 hwndEdit24, %htport4%
	Gui, Add, CheckBox, x492 y350 w100 h20 vvender4 gSub4 Checked%vender4%, --openCLVendor
	Gui, Add, Radio, x602 y350 w50 h20 vvamd4 Checked%vamd4%, AMD
	Gui, Add, Radio, x662 y350 w60 h20 vvnvidia4 Checked%vnvidia4%, NVIDIA
	Gui, Add, CheckBox, x742 y230 w60 h20 vnocpu4 Checked%nocpu4%, --noCPU
	Gui, Add, CheckBox, x742 y260 w62 h20 vnoamd4 Checked%noamd4%, --noAMD
	Gui, Add, CheckBox, x742 y290 w80 h20 vnonvidia4 Checked%nonvidia4%, --noNVIDIA
	Gui, Add, CheckBox, x742 y320 w70 h20 vnicehash4 Checked%nicehash4%, --nicehash
	Gui, Add, Button, x742 y350 w80 h20 gLP4 hwndHLP4, Launch Pool 4
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HLP4, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error LP4, % ImageButton.LastError
	Gui, Add, Button, x382 y400 w100 h20 gOK hwndHOK, OK
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HOK, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error OK, % ImageButton.LastError
	Gui, Tab, Directory Info
	Gui, Add, Text, x102 y130 w160 h20 , XMR-Stak Executable Location
	Gui, Add, Text, x102 y160 w630 h20 vstakdir, %stakdir%\xmr-stak.exe
	Gui, Add, Text, x102 y200 w90 h20 , XMR-Stak Folder
	Gui, Add, Text, x102 y230 w630 h20 , %stakdir%
	Gui, Add, Button, x662 y190 w70 h20 hwndHBrowse, Browse
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HBrowse, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error Browse, % ImageButton.LastError
	Gui, Add, Button, x662 y300 w100 h30 gOK hwndHOK, OK
	Opt1 := [6, "Black", "Lime", "Black"]
	Opt2 := [ , "Black", "Black", "Lime"]
	Opt3 := {4: "Red"}
	Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]
	If !ImageButton.Create(HOK, Opt1, Opt2, Opt3, Opt4)
		MsgBox, 0, ImageButton Error OK, % ImageButton.LastError
	CtlColors.Attach(Edit1, "122710", "00FF00")
	CtlColors.Attach(Edit2, "122710", "00FF00")
	CtlColors.Attach(Edit3, "122710", "00FF00")
	CtlColors.Attach(Edit4, "122710", "00FF00")
	CtlColors.Attach(Edit5, "122710", "00FF00")
	CtlColors.Attach(Edit6, "122710", "00FF00")
	CtlColors.Attach(Edit7, "122710", "00FF00")
	CtlColors.Attach(Edit8, "122710", "00FF00")
	CtlColors.Attach(Edit9, "122710", "00FF00")
	CtlColors.Attach(Edit10, "122710", "00FF00")
	CtlColors.Attach(Edit11, "122710", "00FF00")
	CtlColors.Attach(Edit12, "122710", "00FF00")
	CtlColors.Attach(Edit13, "122710", "00FF00")
	CtlColors.Attach(Edit14, "122710", "00FF00")
	CtlColors.Attach(Edit15, "122710", "00FF00")
	CtlColors.Attach(Edit16, "122710", "00FF00")
	CtlColors.Attach(Edit17, "122710", "00FF00")
	CtlColors.Attach(Edit18, "122710", "00FF00")
	CtlColors.Attach(Edit19, "122710", "00FF00")
	CtlColors.Attach(Edit20, "122710", "00FF00")
	CtlColors.Attach(Edit21, "122710", "00FF00")
	CtlColors.Attach(Edit22, "122710", "00FF00")
	CtlColors.Attach(Edit23, "122710", "00FF00")
	CtlColors.Attach(Edit24, "122710", "00FF00")
	Gui, Margin, 0,0
	Gui +LastFound
	GUI_ID:=WinExist()
	Gui, Show, x341 y133 h611 w887, XMR-Stak Mining Helper v1.0.0
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
	Gui,Show,Autosize Hide,xmr-stak Helper v1.0.0
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
	Gui, Show, x341 y133 h611 w887, XMR-Stak Mining Helper v1.0.0
	DllCall("AnimateWindow",UInt,GUI_ID,UInt,750,UInt,0xa0000)
Return
#X::
	Gui % (MainGui:=!MainGui) ? "Hide" : "Show", x341 y133 h611 w887, XMR-Stak Mining Helper v1.0.0
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
Return
;######################## DO NOT EDIT THIS SCRIPT UNLESS YOU KNOW WHAT YOUR ARE DOING! ########################
;####################################### THAT MEANS YOU [^_^] #################################################
Class CtlColors {
   Static Attached := {}
   Static HandledMessages := {Edit: 0, ListBox: 0, Static: 0}
   Static MessageHandler := "CtlColors_OnMessage"
   Static WM_CTLCOLOR := {Edit: 0x0133, ListBox: 0x134, Static: 0x0138}
   Static HTML := {AQUA: 0xFFFF00, BLACK: 0x000000, BLUE: 0xFF0000, FUCHSIA: 0xFF00FF, GRAY: 0x808080, GREEN: 0x008000
                 , LIME: 0x00FF00, MAROON: 0x000080, NAVY: 0x800000, OLIVE: 0x008080, PURPLE: 0x800080, RED: 0x0000FF
                 , SILVER: 0xC0C0C0, TEAL: 0x808000, WHITE: 0xFFFFFF, YELLOW: 0x00FFFF}
   Static NullBrush := DllCall("GetStockObject", "Int", 5, "UPtr")
   Static SYSCOLORS := {Edit: "", ListBox: "", Static: ""}
   Static ErrorMsg := ""
   Static InitClass := CtlColors.ClassInit()
   __New() { ; You must not instantiate this class!
      If (This.InitClass == "!DONE!") { ; external call after class initialization
         This["!Access_Denied!"] := True
         Return False
      }
   }
   __Delete() {
      If This["!Access_Denied!"]
         Return
      This.Free() ; free GDI resources
   }
   ClassInit() {
      CtlColors := New CtlColors
      Return "!DONE!"
   }
   CheckBkColor(ByRef BkColor, Class) {
      This.ErrorMsg := ""
      If (BkColor != "") && !This.HTML.HasKey(BkColor) && !RegExMatch(BkColor, "^[[:xdigit:]]{6}$") {
         This.ErrorMsg := "Invalid parameter BkColor: " . BkColor
         Return False
      }
      BkColor := BkColor = "" ? This.SYSCOLORS[Class]
              :  This.HTML.HasKey(BkColor) ? This.HTML[BkColor]
              :  "0x" . SubStr(BkColor, 5, 2) . SubStr(BkColor, 3, 2) . SubStr(BkColor, 1, 2)
      Return True
   }
   CheckTxColor(ByRef TxColor) {
      This.ErrorMsg := ""
      If (TxColor != "") && !This.HTML.HasKey(TxColor) && !RegExMatch(TxColor, "i)^[[:xdigit:]]{6}$") {
         This.ErrorMsg := "Invalid parameter TextColor: " . TxColor
         Return False
      }
      TxColor := TxColor = "" ? ""
              :  This.HTML.HasKey(TxColor) ? This.HTML[TxColor]
              :  "0x" . SubStr(TxColor, 5, 2) . SubStr(TxColor, 3, 2) . SubStr(TxColor, 1, 2)
      Return True
   }
   Attach(HWND, BkColor, TxColor := "") {
      Static ClassNames := {Button: "", ComboBox: "", Edit: "", ListBox: "", Static: ""}
      Static BS_CHECKBOX := 0x2, BS_RADIOBUTTON := 0x8
      Static ES_READONLY := 0x800
      Static COLOR_3DFACE := 15, COLOR_WINDOW := 5
      If (This.SYSCOLORS.Edit = "") {
         This.SYSCOLORS.Static := DllCall("User32.dll\GetSysColor", "Int", COLOR_3DFACE, "UInt")
         This.SYSCOLORS.Edit := DllCall("User32.dll\GetSysColor", "Int", COLOR_WINDOW, "UInt")
         This.SYSCOLORS.ListBox := This.SYSCOLORS.Edit
      }
      This.ErrorMsg := ""
      If (BkColor = "") && (TxColor = "") {
         This.ErrorMsg := "Both parameters BkColor and TxColor are empty!"
         Return False
      }
      If !(CtrlHwnd := HWND + 0) || !DllCall("User32.dll\IsWindow", "UPtr", HWND, "UInt") {
         This.ErrorMsg := "Invalid parameter HWND: " . HWND
         Return False
      }
      If This.Attached.HasKey(HWND) {
         This.ErrorMsg := "Control " . HWND . " is already registered!"
         Return False
      }
      Hwnds := [CtrlHwnd]
      Classes := ""
      WinGetClass, CtrlClass, ahk_id %CtrlHwnd%
      This.ErrorMsg := "Unsupported control class: " . CtrlClass
      If !ClassNames.HasKey(CtrlClass)
         Return False
      ControlGet, CtrlStyle, Style, , , ahk_id %CtrlHwnd%
      If (CtrlClass = "Edit")
         Classes := ["Edit", "Static"]
      Else If (CtrlClass = "Button") {
         IF (CtrlStyle & BS_RADIOBUTTON) || (CtrlStyle & BS_CHECKBOX)
            Classes := ["Static"]
         Else
            Return False
      }
      Else If (CtrlClass = "ComboBox") {
         VarSetCapacity(CBBI, 40 + (A_PtrSize * 3), 0)
         NumPut(40 + (A_PtrSize * 3), CBBI, 0, "UInt")
         DllCall("User32.dll\GetComboBoxInfo", "Ptr", CtrlHwnd, "Ptr", &CBBI)
         Hwnds.Insert(NumGet(CBBI, 40 + (A_PtrSize * 2, "UPtr")) + 0)
         Hwnds.Insert(Numget(CBBI, 40 + A_PtrSize, "UPtr") + 0)
         Classes := ["Edit", "Static", "ListBox"]
      }
      If !IsObject(Classes)
         Classes := [CtrlClass]
      If (BkColor <> "Trans")
         If !This.CheckBkColor(BkColor, Classes[1])
            Return False
      If !This.CheckTxColor(TxColor)
         Return False
      For I, V In Classes {
         If (This.HandledMessages[V] = 0)
            OnMessage(This.WM_CTLCOLOR[V], This.MessageHandler)
         This.HandledMessages[V] += 1
      }
      If (BkColor = "Trans")
         Brush := This.NullBrush
      Else
         Brush := DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor, "UPtr")
      For I, V In Hwnds
         This.Attached[V] := {Brush: Brush, TxColor: TxColor, BkColor: BkColor, Classes: Classes, Hwnds: Hwnds}
      DllCall("User32.dll\InvalidateRect", "Ptr", HWND, "Ptr", 0, "Int", 1)
      This.ErrorMsg := ""
      Return True
   }
   Change(HWND, BkColor, TxColor := "") {
      This.ErrorMsg := ""
      HWND += 0
      If !This.Attached.HasKey(HWND)
         Return This.Attach(HWND, BkColor, TxColor)
      CTL := This.Attached[HWND]
      If (BkColor <> "Trans")
         If !This.CheckBkColor(BkColor, CTL.Classes[1])
            Return False
      If !This.CheckTxColor(TxColor)
         Return False
      If (BkColor <> CTL.BkColor) {
         If (CTL.Brush) {
            If (Ctl.Brush <> This.NullBrush)
               DllCall("Gdi32.dll\DeleteObject", "Prt", CTL.Brush)
            This.Attached[HWND].Brush := 0
         }
         If (BkColor = "Trans")
            Brush := This.NullBrush
         Else
            Brush := DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor, "UPtr")
         For I, V In CTL.Hwnds {
            This.Attached[V].Brush := Brush
            This.Attached[V].BkColor := BkColor
         }
      }
      For I, V In Ctl.Hwnds
         This.Attached[V].TxColor := TxColor
      This.ErrorMsg := ""
      DllCall("User32.dll\InvalidateRect", "Ptr", HWND, "Ptr", 0, "Int", 1)
      Return True
   }
   Detach(HWND) {
      This.ErrorMsg := ""
      HWND += 0
      If This.Attached.HasKey(HWND) {
         CTL := This.Attached[HWND].Clone()
         If (CTL.Brush) && (CTL.Brush <> This.NullBrush)
            DllCall("Gdi32.dll\DeleteObject", "Prt", CTL.Brush)
         For I, V In CTL.Classes {
            If This.HandledMessages[V] > 0 {
               This.HandledMessages[V] -= 1
               If This.HandledMessages[V] = 0
                  OnMessage(This.WM_CTLCOLOR[V], "")
         }  }
         For I, V In CTL.Hwnds
            This.Attached.Remove(V, "")
         DllCall("User32.dll\InvalidateRect", "Ptr", HWND, "Ptr", 0, "Int", 1)
         CTL := ""
         Return True
      }
      This.ErrorMsg := "Control " . HWND . " is not registered!"
      Return False
   }
   Free() {
      For K, V In This.Attached
         If (V.Brush) && (V.Brush <> This.NullBrush)
            DllCall("Gdi32.dll\DeleteObject", "Ptr", V.Brush)
      For K, V In This.HandledMessages
         If (V > 0) {
            OnMessage(This.WM_CTLCOLOR[K], "")
            This.HandledMessages[K] := 0
         }
      This.Attached := {}
      Return True
   }
   IsAttached(HWND) {
      Return This.Attached.HasKey(HWND)
   }
}
CtlColors_OnMessage(HDC, HWND) {
   Critical
   If CtlColors.IsAttached(HWND) {
      CTL := CtlColors.Attached[HWND]
      If (CTL.TxColor != "")
         DllCall("Gdi32.dll\SetTextColor", "Ptr", HDC, "UInt", CTL.TxColor)
      If (CTL.BkColor = "Trans")
         DllCall("Gdi32.dll\SetBkMode", "Ptr", HDC, "UInt", 1) ; TRANSPARENT = 1
      Else
         DllCall("Gdi32.dll\SetBkColor", "Ptr", HDC, "UInt", CTL.BkColor)
      Return CTL.Brush
   }
}
Class ImageButton {
   Static DefGuiColor  := ""
   Static DefTxtColor := "Black"
   Static LastError := ""
   Static BitMaps := []
   Static GDIPDll := 0
   Static GDIPToken := 0
   Static MaxOptions := 8
   Static HTML := {BLACK: 0x000000, GRAY: 0x808080, SILVER: 0xC0C0C0, WHITE: 0xFFFFFF, MAROON: 0x800000
                 , PURPLE: 0x800080, FUCHSIA: 0xFF00FF, RED: 0xFF0000, GREEN: 0x008000, OLIVE: 0x808000
                 , YELLOW: 0xFFFF00, LIME: 0x00FF00, NAVY: 0x000080, TEAL: 0x008080, AQUA: 0x00FFFF, BLUE: 0x0000FF}
   Static ClassInit := ImageButton.InitClass()
   __New(P*) {
      Return False
   }
   InitClass() {
      GuiColor := DllCall("User32.dll\GetSysColor", "Int", 15, "UInt")
      This.DefGuiColor := ((GuiColor >> 16) & 0xFF) | (GuiColor & 0x00FF00) | ((GuiColor & 0xFF) << 16)
      Return True
   }
   GdiplusStartup() {
      This.GDIPDll := This.GDIPToken := 0
      If (This.GDIPDll := DllCall("Kernel32.dll\LoadLibrary", "Str", "Gdiplus.dll", "Ptr")) {
         VarSetCapacity(SI, 24, 0)
         Numput(1, SI, 0, "Int")
         If !DllCall("Gdiplus.dll\GdiplusStartup", "PtrP", GDIPToken, "Ptr", &SI, "Ptr", 0)
            This.GDIPToken := GDIPToken
         Else
            This.GdiplusShutdown()
      }
      Return This.GDIPToken
   }
   GdiplusShutdown() {
      If This.GDIPToken
         DllCall("Gdiplus.dll\GdiplusShutdown", "Ptr", This.GDIPToken)
      If This.GDIPDll
         DllCall("Kernel32.dll\FreeLibrary", "Ptr", This.GDIPDll)
      This.GDIPDll := This.GDIPToken := 0
   }
   FreeBitmaps() {
      For I, HBITMAP In This.BitMaps
         DllCall("Gdi32.dll\DeleteObject", "Ptr", HBITMAP)
      This.BitMaps := []
   }
   GetARGB(RGB) {
      ARGB := This.HTML.HasKey(RGB) ? This.HTML[RGB] : RGB
      Return (ARGB & 0xFF000000) = 0 ? 0xFF000000 | ARGB : ARGB
   }
   PathAddRectangle(Path, X, Y, W, H) {
      Return DllCall("Gdiplus.dll\GdipAddPathRectangle", "Ptr", Path, "Float", X, "Float", Y, "Float", W, "Float", H)
   }
   PathAddRoundedRect(Path, X1, Y1, X2, Y2, R) {
      D := (R * 2), X2 -= D, Y2 -= D
      DllCall("Gdiplus.dll\GdipAddPathArc"
            , "Ptr", Path, "Float", X1, "Float", Y1, "Float", D, "Float", D, "Float", 180, "Float", 90)
      DllCall("Gdiplus.dll\GdipAddPathArc"
            , "Ptr", Path, "Float", X2, "Float", Y1, "Float", D, "Float", D, "Float", 270, "Float", 90)
      DllCall("Gdiplus.dll\GdipAddPathArc"
            , "Ptr", Path, "Float", X2, "Float", Y2, "Float", D, "Float", D, "Float", 0, "Float", 90)
      DllCall("Gdiplus.dll\GdipAddPathArc"
            , "Ptr", Path, "Float", X1, "Float", Y2, "Float", D, "Float", D, "Float", 90, "Float", 90)
      Return DllCall("Gdiplus.dll\GdipClosePathFigure", "Ptr", Path)
   }
   SetRect(ByRef Rect, X1, Y1, X2, Y2) {
      VarSetCapacity(Rect, 16, 0)
      NumPut(X1, Rect, 0, "Int"), NumPut(Y1, Rect, 4, "Int")
      NumPut(X2, Rect, 8, "Int"), NumPut(Y2, Rect, 12, "Int")
      Return True
   }
   SetRectF(ByRef Rect, X, Y, W, H) {
      VarSetCapacity(Rect, 16, 0)
      NumPut(X, Rect, 0, "Float"), NumPut(Y, Rect, 4, "Float")
      NumPut(W, Rect, 8, "Float"), NumPut(H, Rect, 12, "Float")
      Return True
   }
   SetError(Msg) {
      This.FreeBitmaps()
      This.GdiplusShutdown()
      This.LastError := Msg
      Return False
   }
   Create(HWND, Options*) {
      Static BCM_SETIMAGELIST := 0x1602
           , BS_CHECKBOX := 0x02, BS_RADIOBUTTON := 0x04, BS_GROUPBOX := 0x07, BS_AUTORADIOBUTTON := 0x09
           , BS_LEFT := 0x0100, BS_RIGHT := 0x0200, BS_CENTER := 0x0300, BS_TOP := 0x0400, BS_BOTTOM := 0x0800
           , BS_VCENTER := 0x0C00, BS_BITMAP := 0x0080
           , BUTTON_IMAGELIST_ALIGN_LEFT := 0, BUTTON_IMAGELIST_ALIGN_RIGHT := 1, BUTTON_IMAGELIST_ALIGN_CENTER := 4
           , ILC_COLOR32 := 0x20
           , OBJ_BITMAP := 7
           , RCBUTTONS := BS_CHECKBOX | BS_RADIOBUTTON | BS_AUTORADIOBUTTON
           , SA_LEFT := 0x00, SA_CENTER := 0x01, SA_RIGHT := 0x02
           , WM_GETFONT := 0x31
      This.LastError := ""
      If !DllCall("User32.dll\IsWindow", "Ptr", HWND)
         Return This.SetError("Invalid parameter HWND!")
      If !(IsObject(Options)) || (Options.MinIndex() <> 1) || (Options.MaxIndex() > This.MaxOptions)
         Return This.SetError("Invalid parameter Options!")
      WinGetClass, BtnClass, ahk_id %HWND%
      ControlGet, BtnStyle, Style, , , ahk_id %HWND%
      If (BtnClass != "Button") || ((BtnStyle & 0xF ^ BS_GROUPBOX) = 0) || ((BtnStyle & RCBUTTONS) > 1)
         Return This.SetError("The control must be a pushbutton!")
      If !This.GdiplusStartup()
         Return This.SetError("GDIPlus could not be started!")
      GDIPFont := 0
      HFONT := DllCall("User32.dll\SendMessage", "Ptr", HWND, "UInt", WM_GETFONT, "Ptr", 0, "Ptr", 0, "Ptr")
      DC := DllCall("User32.dll\GetDC", "Ptr", HWND, "Ptr")
      DllCall("Gdi32.dll\SelectObject", "Ptr", DC, "Ptr", HFONT)
      DllCall("Gdiplus.dll\GdipCreateFontFromDC", "Ptr", DC, "PtrP", PFONT)
      DllCall("User32.dll\ReleaseDC", "Ptr", HWND, "Ptr", DC)
      If !(PFONT)
         Return This.SetError("Couldn't get button's font!")
      VarSetCapacity(RECT, 16, 0)
      If !DllCall("User32.dll\GetWindowRect", "Ptr", HWND, "Ptr", &RECT)
         Return This.SetError("Couldn't get button's rectangle!")
      BtnW := NumGet(RECT,  8, "Int") - NumGet(RECT, 0, "Int")
      BtnH := NumGet(RECT, 12, "Int") - NumGet(RECT, 4, "Int")
      ControlGetText, BtnCaption, , ahk_id %HWND%
      If (ErrorLevel)
         Return This.SetError("Couldn't get button's caption!")
      This.BitMaps := []
      For Index, Option In Options {
         If !IsObject(Option)
            Continue
         BkgColor1 := BkgColor2 := TxtColor := Mode := Rounded := GuiColor := Image := ""
         Loop, % This.MaxOptions {
            If (Option[A_Index] = "")
               Option[A_Index] := Options.1[A_Index]
         }
         Mode := SubStr(Option.1, 1 ,1)
         If !InStr("0123456789", Mode)
            Return This.SetError("Invalid value for Mode in Options[" . Index . "]!")
         If (Mode = 0)
         && (FileExist(Option.2) || (DllCall("Gdi32.dll\GetObjectType", "Ptr", Option.2, "UInt") = OBJ_BITMAP))
            Image := Option.2
         Else {
            If !(Option.2 + 0) && !This.HTML.HasKey(Option.2)
               Return This.SetError("Invalid value for StartColor in Options[" . Index . "]!")
            BkgColor1 := This.GetARGB(Option.2)
            If (Option.3 = "")
               Option.3 := Option.2
            If !(Option.3 + 0) && !This.HTML.HasKey(Option.3)
               Return This.SetError("Invalid value for TargetColor in Options[" . Index . "]!")
            BkgColor2 := This.GetARGB(Option.3)
         }
         If (Option.4 = "")
            Option.4 := This.DefTxtColor
         If !(Option.4 + 0) && !This.HTML.HasKey(Option.4)
            Return This.SetError("Invalid value for TxtColor in Options[" . Index . "]!")
         TxtColor := This.GetARGB(Option.4)
         Rounded := Option.5
         If (Rounded = "H")
            Rounded := BtnH * 0.5
         If (Rounded = "W")
            Rounded := BtnW * 0.5
         If !(Rounded + 0)
            Rounded := 0
         If (Option.6 = "")
            Option.6 := This.DefGuiColor
         If !(Option.6 + 0) && !This.HTML.HasKey(Option.6)
            Return This.SetError("Invalid value for GuiColor in Options[" . Index . "]!")
         GuiColor := This.GetARGB(Option.6)
         BorderColor := ""
         If (Option.7 <> "") {
            If !(Option.7 + 0) && !This.HTML.HasKey(Option.7)
               Return This.SetError("Invalid value for BorderColor in Options[" . Index . "]!")
            BorderColor := 0xFF000000 | This.GetARGB(Option.7)
         }
         BorderWidth := Option.8 ? Option.8 : 1
         DllCall("Gdiplus.dll\GdipCreateBitmapFromScan0", "Int", BtnW, "Int", BtnH, "Int", 0
               , "UInt", 0x26200A, "Ptr", 0, "PtrP", PBITMAP)
         DllCall("Gdiplus.dll\GdipGetImageGraphicsContext", "Ptr", PBITMAP, "PtrP", PGRAPHICS)
         DllCall("Gdiplus.dll\GdipSetSmoothingMode", "Ptr", PGRAPHICS, "UInt", 4)
         DllCall("Gdiplus.dll\GdipSetInterpolationMode", "Ptr", PGRAPHICS, "Int", 7)
         DllCall("Gdiplus.dll\GdipSetCompositingQuality", "Ptr", PGRAPHICS, "UInt", 4)
         DllCall("Gdiplus.dll\GdipSetRenderingOrigin", "Ptr", PGRAPHICS, "Int", 0, "Int", 0)
         DllCall("Gdiplus.dll\GdipSetPixelOffsetMode", "Ptr", PGRAPHICS, "UInt", 4)
         DllCall("Gdiplus.dll\GdipGraphicsClear", "Ptr", PGRAPHICS, "UInt", GuiColor)
         If (Image = "") {
            PathX := PathY := 0, PathW := BtnW, PathH := BtnH
            DllCall("Gdiplus.dll\GdipCreatePath", "UInt", 0, "PtrP", PPATH)
            If (Rounded < 1)
               This.PathAddRectangle(PPATH, PathX, PathY, PathW, PathH)
            Else
               This.PathAddRoundedRect(PPATH, PathX, PathY, PathW, PathH, Rounded)
            If (BorderColor <> "") && (BorderWidth > 0) && (Mode <> 7) {
               DllCall("Gdiplus.dll\GdipCreateSolidFill", "UInt", BorderColor, "PtrP", PBRUSH)
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
               DllCall("Gdiplus.dll\GdipDeleteBrush", "Ptr", PBRUSH)
               DllCall("Gdiplus.dll\GdipResetPath", "Ptr", PPATH)
               PathX := PathY := BorderWidth, PathW -= BorderWidth, PathH -= BorderWidth, Rounded -= BorderWidth
               If (Rounded < 1)
                  This.PathAddRectangle(PPATH, PathX, PathY, PathW - PathX, PathH - PathY)
               Else
                  This.PathAddRoundedRect(PPATH, PathX, PathY, PathW, PathH, Rounded)
               BkgColor1 := 0xFF000000 | BkgColor1
               BkgColor2 := 0xFF000000 | BkgColor2               
            }
            PathW -= PathX
            PathH -= PathY
            If (Mode = 0) {
               DllCall("Gdiplus.dll\GdipCreateSolidFill", "UInt", BkgColor1, "PtrP", PBRUSH)
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
            }
            Else If (Mode = 1) || (Mode = 2) {
               This.SetRectF(RECTF, PathX, PathY, PathW, PathH)
               DllCall("Gdiplus.dll\GdipCreateLineBrushFromRect", "Ptr", &RECTF
                     , "UInt", BkgColor1, "UInt", BkgColor2, "Int", Mode & 1, "Int", 3, "PtrP", PBRUSH)
               DllCall("Gdiplus.dll\GdipSetLineGammaCorrection", "Ptr", PBRUSH, "Int", 1)
               This.SetRect(COLORS, BkgColor1, BkgColor1, BkgColor2, BkgColor2)
               This.SetRectF(POSITIONS, 0, 0.5, 0.5, 1)
               DllCall("Gdiplus.dll\GdipSetLinePresetBlend", "Ptr", PBRUSH
                     , "Ptr", &COLORS, "Ptr", &POSITIONS, "Int", 4)
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
            }
            Else If (Mode >= 3) && (Mode <= 6) {
               W := Mode = 6 ? PathW / 2 : PathW
               H := Mode = 5 ? PathH / 2 : PathH
               This.SetRectF(RECTF, PathX, PathY, W, H)
               DllCall("Gdiplus.dll\GdipCreateLineBrushFromRect", "Ptr", &RECTF
                     , "UInt", BkgColor1, "UInt", BkgColor2, "Int", Mode & 1, "Int", 3, "PtrP", PBRUSH)
               DllCall("Gdiplus.dll\GdipSetLineGammaCorrection", "Ptr", PBRUSH, "Int", 1)
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
            }
            Else {
               DllCall("Gdiplus.dll\GdipCreatePathGradientFromPath", "Ptr", PPATH, "PtrP", PBRUSH)
               DllCall("Gdiplus.dll\GdipSetPathGradientGammaCorrection", "Ptr", PBRUSH, "UInt", 1)
               VarSetCapacity(ColorArray, 4, 0)
               NumPut(BkgColor1, ColorArray, 0, "UInt")
               DllCall("Gdiplus.dll\GdipSetPathGradientSurroundColorsWithCount", "Ptr", PBRUSH, "Ptr", &ColorArray
                   , "IntP", 1)
               DllCall("Gdiplus.dll\GdipSetPathGradientCenterColor", "Ptr", PBRUSH, "UInt", BkgColor2)
               FS := (BtnH < BtnW ? BtnH : BtnW) / 3
               XScale := (BtnW - FS) / BtnW
               YScale := (BtnH - FS) / BtnH
               DllCall("Gdiplus.dll\GdipSetPathGradientFocusScales", "Ptr", PBRUSH, "Float", XScale, "Float", YScale)
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
            }
            DllCall("Gdiplus.dll\GdipDeleteBrush", "Ptr", PBRUSH)
            DllCall("Gdiplus.dll\GdipDeletePath", "Ptr", PPATH)
         } Else {
            If (Image + 0)
               DllCall("Gdiplus.dll\GdipCreateBitmapFromHBITMAP", "Ptr", Image, "Ptr", 0, "PtrP", PBM)
            Else
               DllCall("Gdiplus.dll\GdipCreateBitmapFromFile", "WStr", Image, "PtrP", PBM)
            DllCall("Gdiplus.dll\GdipDrawImageRectI", "Ptr", PGRAPHICS, "Ptr", PBM, "Int", 0, "Int", 0
                  , "Int", BtnW, "Int", BtnH)
            DllCall("Gdiplus.dll\GdipDisposeImage", "Ptr", PBM)
         }
         If (BtnCaption <> "") {
            DllCall("Gdiplus.dll\GdipStringFormatGetGenericTypographic", "PtrP", HFORMAT)
            DllCall("Gdiplus.dll\GdipCreateSolidFill", "UInt", TxtColor, "PtrP", PBRUSH)
            HALIGN := (BtnStyle & BS_CENTER) = BS_CENTER ? SA_CENTER
                    : (BtnStyle & BS_CENTER) = BS_RIGHT  ? SA_RIGHT
                    : (BtnStyle & BS_CENTER) = BS_Left   ? SA_LEFT
                    : SA_CENTER
            DllCall("Gdiplus.dll\GdipSetStringFormatAlign", "Ptr", HFORMAT, "Int", HALIGN)
            VALIGN := (BtnStyle & BS_VCENTER) = BS_TOP ? 0
                    : (BtnStyle & BS_VCENTER) = BS_BOTTOM ? 2
                    : 1
            DllCall("Gdiplus.dll\GdipSetStringFormatLineAlign", "Ptr", HFORMAT, "Int", VALIGN)
            DllCall("Gdiplus.dll\GdipSetTextRenderingHint", "Ptr", PGRAPHICS, "Int", 0)
            VarSetCapacity(RECT, 16, 0)
            NumPut(BtnW, RECT,  8, "Float")
            NumPut(BtnH, RECT, 12, "Float")
            DllCall("Gdiplus.dll\GdipDrawString", "Ptr", PGRAPHICS, "WStr", BtnCaption, "Int", -1
                  , "Ptr", PFONT, "Ptr", &RECT, "Ptr", HFORMAT, "Ptr", PBRUSH)
         }
         DllCall("Gdiplus.dll\GdipCreateHBITMAPFromBitmap", "Ptr", PBITMAP, "PtrP", HBITMAP, "UInt", 0X00FFFFFF)
         This.BitMaps[Index] := HBITMAP
         DllCall("Gdiplus.dll\GdipDisposeImage", "Ptr", PBITMAP)
         DllCall("Gdiplus.dll\GdipDeleteBrush", "Ptr", PBRUSH)
         DllCall("Gdiplus.dll\GdipDeleteStringFormat", "Ptr", HFORMAT)
         DllCall("Gdiplus.dll\GdipDeleteGraphics", "Ptr", PGRAPHICS)
      }
      DllCall("Gdiplus.dll\GdipDeleteFont", "Ptr", PFONT)
      HIL := DllCall("Comctl32.dll\ImageList_Create"
                   , "UInt", BtnW, "UInt", BtnH, "UInt", ILC_COLOR32, "Int", 6, "Int", 0, "Ptr")
      Loop, % (This.BitMaps.MaxIndex() > 1 ? 6 : 1) {
         HBITMAP := This.BitMaps.HasKey(A_Index) ? This.BitMaps[A_Index] : This.BitMaps.1
         DllCall("Comctl32.dll\ImageList_Add", "Ptr", HIL, "Ptr", HBITMAP, "Ptr", 0)
      }
      VarSetCapacity(BIL, 20 + A_PtrSize, 0)
      NumPut(HIL, BIL, 0, "Ptr")
      Numput(BUTTON_IMAGELIST_ALIGN_CENTER, BIL, A_PtrSize + 16, "UInt")
      ControlSetText, , , ahk_id %HWND%
      Control, Style, +%BS_BITMAP%, , ahk_id %HWND%
      SendMessage, %BCM_SETIMAGELIST%, 0, 0, , ahk_id %HWND%
      SendMessage, %BCM_SETIMAGELIST%, 0, % &BIL, , ahk_id %HWND%
      This.FreeBitmaps()
      This.GdiplusShutdown()
      Return True
   }
   SetGuiColor(GuiColor) {
      If !(GuiColor + 0) && !This.HTML.HasKey(GuiColor)
         Return False
      This.DefGuiColor := (This.HTML.HasKey(GuiColor) ? This.HTML[GuiColor] : GuiColor) & 0xFFFFFF
      Return True
   }
   SetTxtColor(TxtColor) {
      If !(TxtColor + 0) && !This.HTML.HasKey(TxtColor)
         Return False
      This.DefTxtColor := (This.HTML.HasKey(TxtColor) ? This.HTML[TxtColor] : TxtColor) & 0xFFFFFF
      Return True
   }
}