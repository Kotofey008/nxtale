/// @description Actions

// open buttons
if keyboard_check_pressed(vk_control) and global.menuopen = 0
	global.menuopen = 1
else if keyboard_check_pressed(vk_control)
	global.menuopen = 0
	

// change menu item selected
var _change = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
var _previous_selected = selected;

// if there is change...
if _change != 0 and full_open = 0 and not global.menuopen = 0 {
	selected = clamp(selected + _change, 0, ds_list_size(menu) - 1);
	if selected != _previous_selected {
		audio_play_sound(snd_squeak, 100, false);
	}
}

/*if global.debug = 1
	menu_sep = 13
else
{
	menu_sep = 18
	ds_list_delete(menu, 4)
}*/

/*if global.language = "en"
	current_language = "English"
else if global.language = "ru"
	current_language = "Русский"*/

/*if selected = 1
{
	if keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left)
	{
		audio_play_sound(snd_select, 100, false)
		if global.language = "en"
			global.language = "ru"
		else
			global.language = "en"
	}
}*/

// when enter pressed, do what need to do based on the selected menu item
if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))) and full_open = 0 and not global.menuopen = 0 {
	audio_play_sound(snd_select, 100, false);
	switch(selected) {
		case 0:	// case of the first  item of the menu
			// add code of what to do when confirming this item
			full_open = 1
			break;
		case 1:	// case of the second one 
			// add code of what to do when confirming this item
			full_open = 2
			break;
		case 2:	// case of the thrid one 
			// add code of what to do when confirming this item
			full_open = 3
			break;
		case 3: // you get it
			// add code of what to do when confirming this item
			break;
	}
}


if keyboard_check_pressed(vk_shift) and not global.menuopen = 0
{
	if full_open = 0 and global.menuopen = 1
	{
		global.menuopen = 0
		audio_play_sound(snd_squeak, 100, false)
	}
	full_open = 0
	audio_play_sound(snd_squeak, 100, false)
}

