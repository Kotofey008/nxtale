///@description Debug Texts
if (global.debug == true)
{
	draw_set_font(fnt_ru_maintext)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	draw_text(10, 10, "Debug Enabled")


if global.debugscreen = 0
{
	txt("Room ID: " + room_get_name(room), 10, 30, fnt_maintext, fa_left, fa_top, c_white, 1)
	txt("Time: " + string(get_timer()/1000000) + " sec.", 10, 50, fnt_maintext, fa_left, fa_top, c_white, 1)
}
if global.debugscreen = 1
{
	// LEFT MENU
	txt("Unterdale " + string(global.version) + global.handle + " (2.3/vanilla)", 10, 30, fnt_maintext, fa_left, fa_top, c_white, 1)
	txt(string(display_get_frequency()) + " FPS | MAX: " + string(room_speed), 10, 50, fnt_maintext, fa_left, fa_top, c_white, 1)
	txt("XY: " + string(round(obj_mainchara.x)) + " / " + string(round(obj_mainchara.y)), 10, 90, fnt_maintext, fa_left, fa_top, c_white, 1)
	if global.facing = 0
		fname = " down"
	if global.facing = 1
		fname = " right"
	if global.facing = 2
		fname = " up"
	if global.facing = 3
		fname = " left"
	txt("Facing: " + string(global.facing) + fname, 10, 110, fnt_maintext, fa_left, fa_top, c_white, 1)
	txt("Noclip: " + string(global.phasing), 10, 130, fnt_maintext, fa_left, fa_top, c_white, 1)
	txt("Can Move: " + string(global.canmove), 10, 150, fnt_maintext, fa_left, fa_top, c_white, 1)
	
	// RIGHT MENU
	var _bitinfo = os_get_info();
    if (_bitinfo[? "is64bit"])
	{
		global.bit64 = "64bit";
	}
	else
	{
		global.bit64 = "32bit"
	}
	
	txt("GMS: 2024.2.0.163 " + global.bit64, display_get_gui_width() - 10, 30, fnt_maintext, fa_right, fa_top, c_white, 1)
	txt("Display: " + string(display_get_width()) + "x" + string(display_get_height()), display_get_gui_width() - 10, 50, fnt_maintext, fa_right, fa_top, c_white, 1)
	txt(os_get_language()+"-"+os_get_region(), display_get_gui_width() - 10, 70, fnt_maintext, fa_right, fa_top, c_white, 1)
	txt("Platform: " + global.platflavor, display_get_gui_width() - 10, 90, fnt_maintext, fa_right, fa_top, c_white, 1)
	
}

}