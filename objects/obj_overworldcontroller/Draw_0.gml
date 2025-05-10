//txt("TEST", 160, 232, fnt_small, fa_center, fa_middle, c_white, 1)
if global.lv > 0
{
	if (global.lv == 1)
		nextlevel = (10 - global.xp)
	if (global.lv == 2)
		nextlevel = (30 - global.xp)
	if (global.lv == 3)
		nextlevel = (70 - global.xp)
	if (global.lv == 4)
		nextlevel = (120 - global.xp)
	if (global.lv == 5)
		nextlevel = (200 - global.xp)
	if (global.lv == 6)
		nextlevel = (300 - global.xp)
	if (global.lv == 7)
		nextlevel = (500 - global.xp)
	if (global.lv == 8)
		nextlevel = (800 - global.xp)
	if (global.lv == 9)
		nextlevel = (1200 - global.xp)
	if (global.lv == 10)
		nextlevel = (1700 - global.xp)
	if (global.lv == 11)
		nextlevel = (2500 - global.xp)
	if (global.lv == 12)
		nextlevel = (3500 - global.xp)
	if (global.lv == 13)
		nextlevel = (5000 - global.xp)
	if (global.lv == 14)
		nextlevel = (7000 - global.xp)
	if (global.lv == 15)
		nextlevel = (10000 - global.xp)
	if (global.lv == 16)
		nextlevel = (15000 - global.xp)
	if (global.lv == 17)
		nextlevel = (25000 - global.xp)
	if (global.lv == 18)
		nextlevel = (50000 - global.xp)
	if (global.lv == 19)
		nextlevel = (99999 - global.xp)
	if (global.lv >= 20)
		nextlevel = 0
}


if global.menuopen = 1
{




//-------- MINI WINDOW --------//
mini_x = camera_get_view_x(view_camera[0]) + 16
if obj_mainchara.y <= (room_height - 110)
	mini_y = camera_get_view_y(view_camera[0]) + 26
else if obj_mainchara.y >= (room_height - 110)
	mini_y = camera_get_view_y(view_camera[0]) + 161

//draw mini
var _tbx = mini_x
var _tby = mini_y
mini_i += mini_is
mini_s_w = sprite_get_width(mini_s)
mini_s_h = sprite_get_width(mini_s)
//back of mini
draw_sprite_ext(mini_s, mini_i, _tbx, _tby, mini_w/mini_s_w, mini_h/mini_s_h, 0, c_white, 1)
//text of mini
txt(global.charname, mini_x + 6, mini_y + 5, fnt_ru_maintext, fa_left, fa_top, c_white, 1)
txt("LV  " + string(global.lv), mini_x + 7, mini_y + 25, fnt_small, fa_left, fa_top, c_white, 1)
txt("HP  " + string(global.hp) + "/" + string(global.maxhp), mini_x + 7, mini_y + 34, fnt_small, fa_left, fa_top, c_white, 1)
txt("G   " + string(global.gold), mini_x + 7, mini_y + 43, fnt_small, fa_left, fa_top, c_white, 1)




//-------- MENU WINDOW --------//
menu_x = camera_get_view_x(view_camera[0]) + 16
menu_y = camera_get_view_y(view_camera[0]) + 84

//draw menu
menu_i += menu_is
menu_s_w = sprite_get_width(menu_s)
menu_s_h = sprite_get_width(menu_s)
//back of menu
draw_sprite_ext(menu_s, menu_i, menu_x, menu_y, menu_w/menu_s_w, menu_h/menu_s_h, 0, c_white, 1)
var _number = ds_list_size(menu);

for (var i = 0; i < _number; i ++) {
	var _text = string(menu[| i]);
	var _color = c_white;
	if selected == i {
		_color = c_yellow;	
	}
	txt(_text, menu_x + 24, menu_y + 11 + i * menu_sep, fnt_ru_maintext, fa_left, fa_top, c_white, 1);
}

if full_open = 0 {draw_sprite_ext(spr_heartsmall, 0, menu_x + 10, menu_y + 14 + selected * menu_sep, 1, 1, 0, c_white, 1)}
if full_open = 2 {draw_sprite_ext(spr_heartsmall, 1, menu_x + 10, menu_y + 14 + selected * menu_sep, 1, 1, 0, c_white, 1)}




//-------- FULL WINDOW --------//
full_x = camera_get_view_x(view_camera[0]) + 94
full_y = camera_get_view_y(view_camera[0]) + 26

//draw menu
full_i += full_is
full_s_w = sprite_get_width(full_s)
full_s_h = sprite_get_width(full_s)
//back of menu
if full_open > 0
	{draw_sprite_ext(full_s, full_i, full_x, full_y, full_w/full_s_w, full_h/full_s_h, 0, c_white, 1)}
	
//}


if full_open = 2 // STAT MENU
{
	draw_sprite_ext(menuchara, 1, full_x + 100, full_y + 14, 34/sprite_get_width(menuchara), 80/sprite_get_height(menuchara), 0, c_white, 1)
	txt("\"" + global.charname + "\"", full_x + 13, full_y + 18, fnt_ru_maintext, fa_left, fa_top, c_white, 1)
	txt("Hacker", full_x + 13, full_y + 33, fnt_ru_maintext, fa_left, fa_top, c_white, 1)
	txt("LV " + string(global.lv), full_x + 13, full_y + 50, fnt_ru_maintext, fa_left, fa_top, c_white, 1)
	txt("HP " + string(global.hp) + "/" + string(global.maxhp), full_x + 13, full_y + 66, fnt_ru_maintext, fa_left, fa_top, c_white, 1)
	txt("AT " + string(global.at), full_x + 13, full_y + 98, fnt_ru_maintext, fa_left, fa_top, c_white, 1)
	txt("DF " + string(global.df), full_x + 13, full_y + 114, fnt_ru_maintext, fa_left, fa_top, c_white, 1)
	txt("EXP:" + string(global.xp), full_x + 100, full_y + 98, fnt_ru_maintext, fa_left, fa_top, c_white, 1)
	txt("NEXT:" + string(nextlevel), full_x + 100, full_y + 114, fnt_ru_maintext, fa_left, fa_top, c_white, 1)
	txt("Weapon: " + global.weapon_name, full_x + 13, full_y + 144, fnt_ru_maintext, fa_left, fa_top, c_white, 1)
	txt("Armor: " + global.armor_name, full_x + 13, full_y + 160, fnt_ru_maintext, fa_left, fa_top, c_white, 1)
	txt("GOLD: " + string(global.gold), full_x + 13, full_y + 182, fnt_ru_maintext, fa_left, fa_top, c_white, 1)
}

if full_open = 1 // ITEM MENU
{
	txt("IN DEV", full_x + 13, full_y + 102, fnt_ru_main, fa_left, fa_top, c_white, 1)
}

}

if global.menuopen = 0
	full_open = 0