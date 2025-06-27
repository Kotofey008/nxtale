/// @description Actions

// change menu item selected
var _change = keyboard_check_pressed(menu_down_buttom) - keyboard_check_pressed(menu_up_buttom);
var _previous_selected = selected;

// if there is change...
if _change != 0 {
	selected = clamp(selected + _change, 0, ds_list_size(menu) - 1);
	if selected != _previous_selected {
		audio_play_sound(snd_squeak, 100, false);
	}
}

if global.language = "en"
	current_language = "English"
else if global.language = "ru"
	current_language = "Русский"

if selected = 1
{
	if keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left)
	{
		audio_play_sound(snd_select, 100, false)
		if global.language = "en"
			global.language = "ru"
		else
			global.language = "en"
	}
}

// when enter pressed, do what need to do based on the selected menu item
if keyboard_check_pressed(menu_confirmation_buttom) or keyboard_check_pressed(ord("Z")) {
	audio_play_sound(snd_select, 100, false);
	switch(selected) {
		case 0:	// case of the first  item of the menu
			// add code of what to do when confirming this item
			break;
		case 1:	// case of the second one 
			// add code of what to do when confirming this item
			if global.language = "en"
			global.language = "ru"
			else
			global.language = "en"
			break;
		case 2:	// case of the thrid one 
			// add code of what to do when confirming this item
			room_goto(room_settingsm)
			break;
		case 3: // you get it
			// add code of what to do when confirming this item
			break;
	}
}


if global.language = "ru"
{
	title_text = "НАСТРОЙКИ"
	ds_list_replace(menu, 0, "ВЫХОД")
	ds_list_replace(menu, 1, "Язык")
	ds_list_replace(menu, 2, "Мобильные Кнопки")
}
else
{
	title_text = "SETTINGS"
	ds_list_replace(menu, 0, "EXIT")
	ds_list_replace(menu, 1, "Language")
	ds_list_replace(menu, 2, "Mobile Buttons")
}