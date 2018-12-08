# XMR-Stak Helper v0.7.0

This was originally an idea I had for logging into the Silkroad Online server using the Bot369 bot cards to quickley login your game character(s) and your botcard in the presssing of just two keys.

# What you need.

If you want to run the script directly, you will first need to install [Autohotkey](https://autohotkey.com/).
I do have compiled binaries, but be warned that the script and the executable binaries will most likely set off your virus scanner with false positives, you can read more about [AHK False Postive](https://www.google.com/search?num=100&client=firefox-b-1-ab&ei=wzTaW5OyLMT4sgWuhrEY&q=autohotkey+false+positive&oq=autohotkey+fal&gs_l=psy-ab.3.0.0l2j0i22i30l4j0i22i10i30j0i22i30l3.10920.14304..15055...0.0..0.222.1256.7j2j2......0....1..gws-wiz.......0i71j0i67j0i131i67j0i131.kR0ar0c7AEY)

All you need to do from there is go to the <b>Pool Info</b> tab and set up your mining pool's options `Use Nicehash`, `Host/IP:Port`, `Wallet`, `Rig ID`, `Password`, `Currency` for the four pool spots provided.
Also you can set `HTTP Port` plus in the <b>Directory Info</b> tab you can set the `XMR-Stak Executable Location` by pressing the `Browse` button which also sets the `XMR-Stak Folder`.
## you will have to press the `OK` Buttons provided on both tabs every time you change something to save the changes!

# Other Info
When you first run the script/executable, it will create a `XMR-Stak-Helper.ini` file for all the pool and stak configurations to be save to.

# Screenshots

<img src="https://i.imgur.com/3UwEcDt.png">
<img src="https://i.imgur.com/uC3aooe.png">
<img src="https://i.imgur.com/iOPqIdz.png">


# Changelog

## v0.7.0
Cleaned up the script more, and synced the version number to the stak helper.

## v0.6.0
Okay fixed a few discrepancies in the code and added a `Launch Pool #` Button for each pool.
Reworked how the settings file `XMR-Stak-Helper.ini` get saved, now the script save every time you minimize, hide, or close the helper

## v0.5.0
Cleaned up the script. 

## v0.4.0
Seprated the http ports for each miner instance and added a field to set each port individually, that way you will not run into the errors about the port in use.

## v0.2.0
Added the ability to pass `--noCPU`, `--noAMD`, & `--noNVIDIA` to the command line via check boxes for each mining pool.

## v0.1.0
Changed the Hide/Unhide Gui Hotkey to `WindowsKey+X` which will both hide and unhide the Helper.
Added a window hider in script for hiding windows (like `xmr-stak.exe`) the Hotkeys to Hide `WindowsKey+H` & Unhide `WindowsKey+U`

## v0.0.2
Fixed a few discrepancies in script, plus added a Hide `WindowsKey+H` & Unhide `Windowskey+U` functions.

## v0.0.1
Initial release

Developer Donations
===================
If you'd like to make a one time donation, the addresses are as follows:
* XMR - ```48HjS1EAUp54tgTeugxywuWtJCZ3atCJwHUgZyPjsySjJgjp5R6iuQN3PFFWtnTVaj6SaCm1RzvtYG23QM37mMswFCLFnX4```
* BTC - ```15ZrEdiU3HFMV2rY68KCXvuNqpSTZNvZBV```
