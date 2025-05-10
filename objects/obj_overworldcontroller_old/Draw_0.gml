var xend, numpos, name0_x, name0_y, name0_scale, xx0, stat_x, exp_x, kills_x, name_y, lv_y, hp_y, at_y, df_y, weapon_y, armor_y, gold_y, kills_y, armorname, x2, y2, scale, roomname, lvtext, timetext, namesize, lvsize, timesize, x_center, lvpos, namepos, timepos, savepos, returnpos, heart_y;
buffer += 1
if global.menuopen = 1
{
	xx = scr_view_get(0, view_current)
	yy = (scr_view_get(1, view_current) + 10)
	moveyy = yy
	if (obj_mainchara.y > (yy + 120))
		moveyy += 135
	global.menuno = 2
	//draw_set_color(c_white)
	//ossafe_fill_rectangle((16 + xx), (16 + moveyy), (86 + xx), (70 + moveyy))
	//ossafe_fill_rectangle((16 + xx), (74 + yy), (86 + xx), (147 + yy))
	if (global.menuno != 4)
    {
        draw_set_color(c_white)
        ossafe_fill_rectangle((16 + xx), (16 + moveyy), (86 + xx), (70 + moveyy))
        ossafe_fill_rectangle((16 + xx), (74 + yy), (86 + xx), (147 + yy))
        if (global.menuno == 1 || global.menuno == 5 || global.menuno == 6)
            ossafe_fill_rectangle((94 + xx), (16 + yy), (266 + xx), (196 + yy))
        if (global.menuno == 2)
        {
            var xend = 266
            ossafe_fill_rectangle((94 + xx), (16 + yy), (xend + xx), (224 + yy))
        }
        if (global.menuno == 3)
            ossafe_fill_rectangle((94 + xx), (16 + yy), (266 + xx), (150 + yy))
        if (global.menuno == 7)
            ossafe_fill_rectangle((94 + xx), (16 + yy), (266 + xx), (216 + yy))
        draw_set_color(c_black)
        ossafe_fill_rectangle((19 + xx), (19 + moveyy), (83 + xx), (67 + moveyy))
        ossafe_fill_rectangle((19 + xx), (77 + yy), (83 + xx), (144 + yy))
        if (global.menuno == 1 || global.menuno == 5 || global.menuno == 6)
            ossafe_fill_rectangle((97 + xx), (19 + yy), (263 + xx), (193 + yy))
        if (global.menuno == 2)
        {
            xend = 263
            ossafe_fill_rectangle((97 + xx), (19 + yy), (xend + xx), (221 + yy))
        }
        if (global.menuno == 3)
            ossafe_fill_rectangle((97 + xx), (19 + yy), (263 + xx), (147 + yy))
        if (global.menuno == 7)
            ossafe_fill_rectangle((97 + xx), (19 + yy), (263 + xx), (213 + yy))
        draw_set_color(c_white)
        scr_setfont(fnt_small)
        var numpos = ((23 + xx) + string_width(string_hash_to_newline("LV  ")))
        draw_text((23 + xx), (40 + moveyy), string_hash_to_newline("LV"))
        draw_text(numpos, (40 + moveyy), string_hash_to_newline(string(global.lv)))
        draw_text((23 + xx), (49 + moveyy), string_hash_to_newline("HP"))
        draw_text(numpos, (49 + moveyy), string_hash_to_newline(((string(global.hp) + "/") + string(global.maxhp))))
        draw_text((23 + xx), (58 + moveyy), string_hash_to_newline("G"))
        draw_text(numpos, (58 + moveyy), string_hash_to_newline(string(global.gold)))
        scr_setfont(fnt_maintext)
        var name0_x = (23 + xx)
        var name0_y = (20 + moveyy)
        var name0_scale = 1
        draw_text_transformed(name0_x, name0_y, string_hash_to_newline(global.charname), name0_scale, name0_scale, 0)
        scr_setfont(fnt_maintext)
        var xx0 = xx
        if (global.item[0] == 0)
            draw_set_color(c_gray)
        if (global.menuchoice[0] == 1)
            draw_text((42 + xx0), (84 + yy), string_hash_to_newline(scr_gettxt("field_menu_item"))) // ITEM
        draw_set_color(c_white)
        if (global.menuchoice[1] == 1)
            draw_text((42 + xx), (102 + yy), string_hash_to_newline(scr_gettxt("field_menu_stat"))) // STAT
        if (global.menuchoice[2] == 1)
            draw_text((42 + xx), (120 + yy), string_hash_to_newline(scr_gettxt("field_menu_cell"))) // CELL
        if (global.menuno == 1 || global.menuno == 5)
        {
            for (i = 0; i < 8; i += 1)
                draw_text((116 + xx), ((30 + yy) + (i * 16)), string_hash_to_newline(global.itemname[i]))
            draw_text((116 + xx), (170 + yy), string_hash_to_newline(scr_gettxt("item_menu_use"))) // USE
            draw_text(((116 + xx) + 48), (170 + yy), string_hash_to_newline(scr_gettxt("item_menu_info"))) // INFO
            draw_text(((116 + xx) + 105), (170 + yy), string_hash_to_newline(scr_gettxt("item_menu_drop"))) // DROP
        }
    }
	if (global.menuno == 2)
    {
        var stat_x = (108 + xx)
        var exp_x = (stat_x + 84)
        var kills_x = exp_x
        var name_y = (32 + yy)
        var lv_y = (62 + yy)
        var hp_y = (78 + yy)
        var at_y = (110 + yy)
        var df_y = (126 + yy)
        var weapon_y = (156 + yy)
        var armor_y = (172 + yy)
        var gold_y = (192 + yy)
        var kills_y = (192 + yy)
        if (global.lv == 20)
            global.death = 2
        if (global.death == 0)
            draw_sprite(spr_mainchara_menu, 0, (194 + xx), (25 + yy))
        if (global.death == 1)
            draw_sprite(spr_mainchara_menu_geno, 0, (194 + xx), (25 + yy))
        if (global.death == 2)
            draw_sprite(spr_truechara_menu, 0, (194 + xx), (25 + yy))
        draw_text(stat_x, name_y, string_hash_to_newline(scr_gettxt("stat_menu_name")))
        draw_text(stat_x, lv_y, string_hash_to_newline(scr_gettxt("stat_menu_lv", string(global.lv))))
        draw_text(stat_x, hp_y, string_hash_to_newline(scr_gettxt("stat_menu_hp", string(global.hp), string(global.maxhp))))
        draw_text(stat_x, at_y, string_hash_to_newline(scr_gettxt("stat_menu_at", string((global.at - 10)), string(global.wstrength))))
        draw_text(stat_x, df_y, string_hash_to_newline(scr_gettxt("stat_menu_df", string((global.df - 10)), string(global.adef))))
        draw_text(stat_x, weapon_y, string_hash_to_newline(scr_gettxt("stat_menu_weapon", scr_gettxt(("item_name_" + string(global.weapon))))))
        var armorname = scr_gettxt(("item_name_" + string(global.armor)))
        if (global.armor == 64)
            armorname = scr_gettxt("stat_armor_temmie") // Temmie Armor
        draw_text(stat_x, armor_y, string_hash_to_newline(scr_gettxt("stat_menu_armor", armorname)))
        draw_text(stat_x, gold_y, string_hash_to_newline(scr_gettxt("stat_menu_gold"))) // GOLD: \[G]
        if (global.kills > 20)
            draw_text(kills_x, kills_y, string_hash_to_newline(scr_gettxt("stat_menu_kills", string(global.kills))))
        if (string_length(global.charname) >= 7 || global.debug == true)
        {
            var x2 = (192 + xx)
            var y2 = (32 + yy)
            var xtest = (108 + xx)
            var ytest = (46 + yy)
            var scale = 1
            draw_text_transformed(xtest, ytest, string_hash_to_newline(scr_gettxt("hackedname")), scale, scale, 0) // Hacked
            draw_text_transformed((x2 + 10000), y2, string_hash_to_newline(scr_gettxt("stat_menu_namehack")), scale, scale, 0) // Easy to#change,#huh?
        }
        draw_text(exp_x, at_y, string_hash_to_newline(scr_gettxt("stat_menu_exp", string(global.xp))))
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
        draw_text(exp_x, df_y, string_hash_to_newline(scr_gettxt("stat_menu_next", string(nextlevel))))
    }
	if (global.menuno == 0)
    {
        var heart_y = 88
        draw_sprite(spr_heartsmall, 0, (28 + xx), ((heart_y + yy) + (18 * global.menucoord[0])))
    }
    if (global.menuno == 1)
    {
        heart_y = 34
        draw_sprite(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[1])))
    }
    if (global.menuno == 3)
    {
        heart_y = 34
        draw_sprite(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[3])))
    }
    if (global.menuno == 6)
    {
        heart_y = 34
        draw_sprite(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[6])))
    }
    if (global.menuno == 7)
    {
        heart_y = 34
        draw_sprite(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[7])))
    }
}