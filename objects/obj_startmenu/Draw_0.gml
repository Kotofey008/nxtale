/// @description Draw menu items

// draw title
//shadowed_text(title_text, room_width / 2, 18, title_font, fa_center, fa_top, title_shadow_offset, title_color, title_shadow_color, 1, title_shadow_alpha);
txt(title_text, room_width/2, 10, title_font, fa_center, fa_top, c_white, 1)

// draw menu
var _number = ds_list_size(menu);
for (var i = 0; i < _number; i ++) {
	var _text = string(menu[| i]);
	var _color = menu_not_selected_color;
	if selected == i {
		_color = menu_selected_color;	
	}
	shadowed_txt(_text, 20, menu_start_position + i * menu_separation, menu_font, fa_left, fa_middle, menu_shadow_offset, _color, menu_shadow_color, 1, menu_shadow_alpha);
	txt(current_language, 100, menu_start_position + 1 * menu_separation, fnt_maintext, fa_left, fa_middle, c_white, 1)
	txt(cred_text, 160, 232, fnt_small, fa_center, fa_middle, cred_color, cred_alpha)
}


// draw menu arrow
angle += 3;
var _dx = lengthdir_x(delta_x, angle);
var _delta_y = -3;
// left arrow
//draw_sprite_ext(arrow_sprite, 0, room_width / 2 - arrow_width / 2 + menu_shadow_offset + _dx, menu_start_position + selected * menu_separation + _delta_y + menu_shadow_offset, arrow_scale, arrow_scale, 0, menu_shadow_color, menu_shadow_alpha);
//draw_sprite_ext(arrow_sprite, 0, room_width / 2 - arrow_width / 2 + _dx, menu_start_position + selected * menu_separation + _delta_y, 1, 1, 0, menu_selected_color, 1);
// right arrow
//draw_sprite_ext(arrow_sprite, 0, room_width / 2 + menu_shadow_offset - _dx, menu_start_position + selected * menu_separation + _delta_y + menu_shadow_offset, -arrow_scale, arrow_scale, 0, menu_shadow_color, menu_shadow_alpha);
//draw_sprite_ext(arrow_sprite, 0, room_width / 2 - _dx, menu_start_position + selected * menu_separation + _delta_y, -1, 1, 0, menu_selected_color, 1);
