accept_key = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter)
skip_key = keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift)

tbx = camera_get_view_x(view_camera[0]) //+ 20
if obj_mainchara.y >= (room_height - 110)
	tby = camera_get_view_y(view_camera[0]) + 5
if obj_mainchara.y <= (room_height - 110)
	tby = camera_get_view_y(view_camera[0]) + 161

//setup
if setup == false
{
	setup = true
	draw_set_font(fnt_ru_maintext)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	
	//loop through the pages
	/*page_number = array_length(text)*/
	for(var p = 0; p < page_number; p++)
	{
		//find how many characters are on each page and store that number in the "text_length" array
		text_length[p] = string_length(text[p])
		
		//get x position for the textbox
			// Face
			text_x_offset[p] = 80
			face_x_offset[p] = 33
		
			// No Face
			if speaker_sprite[p] = noone
			{
			text_x_offset[p] = 15 //20
			}
		
		//setting individual characters and finding where the lines of text should break
		for (var c = 0; c < text_length[p]; c++)
		{
			var _char_pos = c+1
			
			//store inddividual characters in the "char" array
			char[c, p] = string_char_at(text[p], _char_pos)
			
			//get current width of the line
			var _txt_up_to_char = string_copy(text[p], 1, _char_pos)
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c, p])
			
			//get the last free space
			if char[c, p] = " " {last_free_space = _char_pos+1}
			
			//get the line breaks
			if _current_txt_w - line_break_offset[p] > line_width or (char[c, p] = "\n")
			{
				line_break_pos[line_break_num[p], p] = last_free_space
				line_break_num[p]++
				var _txt_up_to_last_space = string_copy(text[p], 1, last_free_space -1)
				var _last_free_space_string = string_char_at(text[p], last_free_space)
				line_break_offset[p] = string_width(_txt_up_to_last_space) - string_width(_last_free_space_string)
			}			
		}
		
		//getting each characters coordinates
		for (var c = 0; c< text_length[p]; c++)
		{
			var _char_pos = c+1
			var _txt_x = tbx + text_x_offset[p] + border
			var _txt_y = tby + border
			//get current width of the line
			var _txt_up_to_char = string_copy(text[p], 1, _char_pos)
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c, p])
			var _txt_line = 0
			
			//compensate for string breaks
			for (var lb = 0; lb < line_break_num[p]; lb++)
			{
				//if the current looping character iss after a line break
				if _char_pos >= line_break_pos[lb, p]
				{
					var _str_copy = string_copy(text[p], line_break_pos[lb, p], _char_pos-line_break_pos[lb, p])
					_current_txt_w = string_width(_str_copy)
					
					//record the "line" this character should be on
					_txt_line = lb+1 //+1 as lb starts at 0
				}
			}
			char_x[c, p] = _txt_x + _current_txt_w
			char_y[c, p] = _txt_y + _txt_line*linesep
		}
	}
}

//typing the text
if draw_char < text_length[page]
{
	draw_char += text_sd
	draw_char = clamp(draw_char, 0, text_length[page])
}

//flip through pages
if accept_key
{
	//if typing is done
	if draw_char == text_length[page]
	{
		//next_page
		if page < page_number-1
		{
			page++
			draw_char = 0
		}
		//destroy textbox
		else
		{
			instance_destroy()
		}
	}
	//if typing isn't done
	//else
	//{
	//	draw_char = text_length[page]
	//}
}

//skip typing
if skip_key
{
	if draw_char < text_length[page]
	{
		draw_char = text_length[page]
	}
}

//draw textbox
var _tbx = tbx + text_x_offset[page]
var _tby = tby
tbi += tbis
tbs_w = sprite_get_width(tbs)
tbs_h = sprite_get_width(tbs)
//draw speaker
if speaker_sprite[page] != noone
{
	sprite_index = speaker_sprite[page]
	var _speaker_x = tbx + face_x_offset[page]
	//draw speaker
	draw_sprite_ext(sprite_index, image_index, _speaker_x, tby, speaker_side[page], 1, 0, c_white, 1)
}

//back of textbox
draw_sprite_ext(tbs, tbi, _tbx, _tby, tbw/tbs_w, tbh/tbs_h, 0, c_white, 1)

//options
if draw_char == text_length[page] and page == page_number - 1
{
	//draw the options
	var _op_space = 20
	var _op_bord = 4
	for (var op = 0; op < option_number; op++)
	{
		//option box
		var _o_w = string_width(option[op]) + _op_bord*2
		draw_sprite_ext(tbs, tbi, _tbx + 10, _tby - _op_space*option_number + _op_space*op, _o_w/tbs_w, (_op_space-2)/tbs_h, 0, c_white, 1)
		
		//option text
		draw_text(_tbx + 10 + _op_bord, _tby - _op_space*option_number + _op_space*op + 2, option[op])
		
	}
}

//draw the text
/*
var _drawtext = string_copy(text[page], 1, draw_char)
draw_text_ext(_tbx + border, _tby + border, _drawtext, linesep, line_width)
*/


for (var c = 0; c < draw_char; c++)
{
	draw_text(char_x[c, page], char_y[c, page], char[c, page])
}