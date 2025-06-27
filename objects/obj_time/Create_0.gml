if (os_type == os_windows or os_type = os_linux or os_type = os_macosx or os_type = os_uwp or os_type = os_win8native)
{
	global.osflavor = 1
	global.platflavor = "Desktop"
}
else if (os_type = os_android or os_type = os_ios or os_type = os_winphone)
{
	global.osflavor = 2
	global.platflavor = "Mobile"
}
else if (os_type = os_xboxone or os_type = os_xboxseriesxs)
{
	global.osflavor = 3
	global.platflavor = "Console (Xbox)"
}
else if (os_type == os_ps4 || os_type == os_psvita || os_type = os_ps5 || os_type = os_ps3)
{
	global.osflavor = 4
	global.platflavor = "Console (PlayStation)"
}
else if (os_type = os_switch)
{
	global.osflavor = 5
	global.platflavor = "Nintendo Switch"
}
else
{
	global.osflavor = 6
	global.platflavor = "Unknown"
}
	
global.debug = false
global.version = 1.14
if os_type != os_unknown
{
	if os_type = os_windows
	global.handle = "-w"
	if os_type = os_android
	global.handle = "-a"
	if os_type = os_linux
	global.handle = "-l"
	if os_type = os_ios
	global.handle = "-i"
	if os_type = os_macosx
	global.handle = "-m"
}
global.debugscreen = 0
global.showdebugbuttons = 0
global.buttonsreset = 0
global.button_scale = 0
global.buttonsopacity = 0
global.rtm = 0
global.facing = 0
global.phasing = 0
global.interact = 0
global.entrance = 0
global.menuopen = 0
global.menuno = 0
global.death = 0
global.asrielroom = 0
global.currentsong = 0
global.currentsong2 = 0
global.canmove = 1
global.interacted = 0
global.myinteract = 0


up = 0
down = 0
left = 0
right = 0
quit = 0
try_up = 0
try_down = 0
try_left = 0
try_right = 0
canquit = 1
quit_timer = 0
spec_rtimer = 0
debug_r = 0
debug_f = 0

global.tup = 0
global.tdown = 0
global.tleft = 0
global.tright = 0

window_set_size(640, 480)
if global.rtm != 1
	window_set_caption("Undertale (NOT FOR FUBLIC USE)")
if global.debug = true
	window_set_caption("Undertale 2.3 testing environment")
global.fullscreen = 0
global.borderless = 0
global.widescreen = 0

script_execute(textdata_en)
