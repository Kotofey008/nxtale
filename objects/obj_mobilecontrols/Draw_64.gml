/// @description Virtual Keys sprites
draw_sprite_ext(spr_btn_exit, keyboard_check(vk_escape), exitx, exity, button_scale, button_scale, 0, c_white, controls_opacity)
draw_sprite_ext(spr_pixblk, 0, 0, 0, 620, 480, 0, c_white, black_fade)

if room != room_startmenu
{
draw_sprite_ext(spr_btn_z, keyboard_check(vk_enter), zx, zy, button_scale, button_scale, 0, c_white, controls_opacity)
draw_sprite_ext(spr_btn_x, keyboard_check(vk_shift), xx, xy, button_scale, button_scale, 0, c_white, controls_opacity)
draw_sprite_ext(spr_btn_c, keyboard_check(vk_control), cx, cy, button_scale, button_scale, 0, c_white, controls_opacity)
if global.menuopen = 1
	{
	draw_sprite_ext(spr_btn_x, keyboard_check(vk_up), 40, cy, button_scale, button_scale, 0, c_white, controls_opacity)
	draw_sprite_ext(spr_btn_c, keyboard_check(vk_down), 40, xy, button_scale, button_scale, 0, c_white, controls_opacity)
	}
}

if room = room_startmenu
{
draw_sprite_ext(spr_btn_x, keyboard_check(vk_up), 40, cy, button_scale, button_scale, 0, c_white, controls_opacity)
draw_sprite_ext(spr_btn_c, keyboard_check(vk_down), 40, xy, button_scale, button_scale, 0, c_white, controls_opacity)
draw_sprite_ext(spr_btn_z, keyboard_check(vk_enter), zx, zy, button_scale, button_scale, 0, c_white, controls_opacity)
}


txt("Controls Config", 220, 22.5, fnt_main, fa_left, fa_middle, c_white, text_black_fade)
txt("Button Scale", 120.5, 75, fnt_main, fa_left, fa_middle, c_white, text_black_fade)
draw_sprite_ext(spr_pixel, 0, 459.5, 75, 82, 18, 0, c_white, text_black_fade)
draw_sprite_ext(spr_pixel, 0, 120.5, 121, 2, 2, 0, c_white, text_black_fade)
draw_sprite_ext(spr_pixel, 0, 459.5, 121, 82, 18, 0, c_white, text_black_fade)
draw_sprite_ext(spr_pixel, 0, 124, 167, 2, 2, 0, c_white, text_black_fade)
draw_sprite_ext(spr_pixel, 0, 459.5, 167, 82, 18, 0, c_white, text_black_fade)
draw_sprite_ext(spr_pixel, 0, 106.5, 213, 2, 2, 0, c_white, text_black_fade)
draw_sprite_ext(spr_pixel, 0, 459.5, 213, 82, 18, 0, c_white, text_black_fade)
draw_sprite_ext(spr_pixel, 0, 106.5, 259, 2, 2, 0, c_white, text_black_fade)
draw_sprite_ext(spr_pixel, 0, 459.5, 259, 82, 18, 0, c_white, text_black_fade)
draw_sprite_ext(spr_pixel, 0, 241, 412.25, 2, 2, 0, c_white, text_black_fade)