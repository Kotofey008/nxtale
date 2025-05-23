/*
_text => the texto to be shown
_x	=>  The X position of the text
_y	=>	The Y position of the text
_font	=> The font of the text
_halign =>	The horizontal alignment of the text (fa_left, fa_center, fa_right)
_valign	=>	The vertical alignment of the text (fa_top, fa_middle, fa_bottom)
_text_color => the color of the text
_shadow_color => the color of the shadow
_text_alpha	=> the alpha of the text
_shadow_alpha	=> the alpha of the shadow
_shadow_offset	=> the shadow offset 
_delta_x => how many pixls will shake in the X axis
_delta_y => how manu pixels will shake in the Y axis
*/


function txt(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha) {
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	draw_set_color(_text_color);
	draw_set_alpha(_text_alpha);
	draw_text(_x, _y, _text);
	draw_set_alpha(1);
	/*
	var dx = _x
	var current_color = c_white
	var _len = string_length(_text)
	var i = 1
	while (i <= _len)
	{
		var ch = string_char_at(_text, i)
		if (ch = "\\" and i < _len)
		{
			i++
			var next_ch = string_char_at(_text, i)
			switch (next_ch)
			{
				case "Y": current_color = c_yellow; break;
				case "w": current_color = c_white; break;
				case "R": current_color = c_red; break;
				case "G": current_color = c_green; break;
				case "B": current_color = c_blue; break;
				default: draw_set_color(current_color);
				draw_text(dx, _y, "\\" + next_ch);
				dx += string_width("\"" + next_ch);
				i++;
				continue;
			}
		}
		else
		{
			draw_set_color(current_color)
			draw_text(dx, _y, ch)
			dx += string_width(ch)
		}
	}
	*/
	draw_set_color(c_white);
}

function shadowed_txt(_text, _x, _y, _font, _halign, _valign, _shadow_offset, _text_color, _shadow_color, _text_alpha, _shadow_alpha) {
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	draw_set_color(_shadow_color);
	draw_set_alpha(_shadow_alpha);
	draw_text(_x + _shadow_offset, _y + _shadow_offset, _text);
	draw_set_alpha(_text_alpha);
	draw_set_color(_text_color);
	draw_text(_x, _y, _text);
	draw_set_alpha(1);
	draw_set_color(c_white);
}

function shaking_txt(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha, _delta_x, _delta_y) {
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	draw_set_color(_text_color);
	draw_set_alpha(_text_alpha);
	var _dx = irandom(_delta_x);
	var _dy = irandom(_delta_y);
	draw_text(_x + _dx, _y + _dy, _text);
	draw_set_alpha(1);
	draw_set_color(c_white);
}

function shaking_shadowed_txt(_text, _x, _y, _font, _halign, _valign, _shadow_offset, _text_color, _shadow_color, _text_alpha, _shadow_alpha, _delta_x, _delta_y) {
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	draw_set_color(_shadow_color);
	draw_set_alpha(_shadow_alpha);
	var _dx = irandom(_delta_x);
	var _dy = irandom(_delta_y);
	draw_text(_x + _shadow_offset + _dx, _y + _shadow_offset + _dy, _text);
	draw_set_alpha(_text_alpha);
	draw_set_color(_text_color);
	draw_text(_x + _dx, _y + _dy, _text);
	draw_set_alpha(1);
	draw_set_color(c_white);
}

function typewriter_txt(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha, _number_of_characters_to_show) {
	var _length = string_length(_text);
	if _number_of_characters_to_show > _length {
		_number_of_characters_to_show = _length;	
	}
	var _text_to_show = "";
	for (var i = 1; i <= _number_of_characters_to_show; i ++) {
		_text_to_show += string_char_at(_text, i);	
	}	
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	draw_set_color(_text_color);
	draw_set_alpha(_text_alpha);
	draw_text(_x, _y, _text_to_show);
	draw_set_alpha(1);
	draw_set_color(c_white);
}

function shadowed_typewriter_txt(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha, _number_of_characters_to_show, _shadow_offset, _shadow_color, _shadow_alpha) {
	var _length = string_length(_text);
	if _number_of_characters_to_show > _length {
		_number_of_characters_to_show = _length;	
	}
	var _text_to_show = "";
	for (var i = 1; i <= _number_of_characters_to_show; i ++) {
		_text_to_show += string_char_at(_text, i);	
	}	
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	draw_set_color(_shadow_color);
	draw_set_alpha(_shadow_alpha);
	draw_text(_x + _shadow_offset, _y + _shadow_offset, _text_to_show);
	draw_set_alpha(_text_alpha);
	draw_set_color(_text_color);
	draw_text(_x, _y, _text_to_show);
	draw_set_alpha(1);
	draw_set_color(c_white);
}

function text_with_shaking_shadow(_text, _x, _y, _font, _halign, _valign, _shadow_offset, _text_color, _shadow_color, _text_alpha, _shadow_alpha, _delta_x, _delta_y) {
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	draw_set_color(_shadow_color);
	draw_set_alpha(_shadow_alpha);
	var _dx = irandom(_delta_x);
	var _dy = irandom(_delta_y);
	draw_text(_x + _shadow_offset + _dx, _y + _shadow_offset + _dy, _text);
	draw_set_alpha(_text_alpha);
	draw_set_color(_text_color);
	draw_text(_x, _y, _text);
	draw_set_alpha(1);
	draw_set_color(c_white);
}