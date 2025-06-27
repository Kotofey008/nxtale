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
	if global.debug = 0
	{
		if selected = 5 and _previous_selected = 6
			selected = 3
		if selected = 4 and _previous_selected = 3
			selected = 6
	}
	if global.debug = 1
	{
		if selected = 5 and _previous_selected = 6
			selected = 4
		if selected = 5 and _previous_selected = 4
			selected = 6
	}
}

if selected = 1
{
	if keyboard_check_pressed(vk_right)// or keyboard_check_pressed(vk_left)
	{
		audio_play_sound(snd_select, 100, false)
		if global.button_scale < 4
			global.button_scale += 0.1
	}
	if keyboard_check_pressed(vk_left)// or keyboard_check_pressed(vk_left)
	{
		audio_play_sound(snd_select, 100, false)
		if global.button_scale > 1
			global.button_scale -= 0.1
	}
}

// when enter pressed, do what need to do based on the selected menu item
if keyboard_check_pressed(menu_confirmation_buttom) or keyboard_check_pressed(ord("Z")) {
	audio_play_sound(snd_select, 100, false);
	switch(selected) {
		case 0:	// case of the first  item of the menu
			// add code of what to do when confirming this item
			room_goto(room_settings)
			break;
		case 1:
			// SHOULD STAY EMPTY
			break;
		case 2:
			// SHOULD STAY EMPTY
			break;
		case 3:
			//room_goto(room_settingsmc)
			break;
		case 4:
			if global.debug = 1 and global.showdebugbuttons = 0
				global.showdebugbuttons = 1
			if global.showdebugbuttons = 1
				global.showdebugbuttons = 0
			if global.debug = 0
				global.showdebugbuttons = 0
			break;
		case 5:
			show_message("Oops! Looks like you are messing with the code. Or I am just a shitty coder (more likely true).")
			break;
		case 6:
			global.buttonsreset = 1
			break;
	}
}


if global.language = "ru"
{
	title_text = "НАСТРОЙКИ"
	ds_list_replace(menu, 0, "ВЫХОД")
	ds_list_replace(menu, 1, "Размер Кнопок")
	ds_list_replace(menu, 2, "Прозрачность Кнопок")
	ds_list_replace(menu, 3, "Координаты Кнопок")
	if global.debug = 1 {ds_list_replace(menu, 4, "Показать Кнопки Отладки")}
	else {ds_list_replace(menu, 4, " ")}
	ds_list_replace(menu, 6, "СБРОС")
}
else
{
	title_text = "SETTINGS"
	ds_list_replace(menu, 0, "EXIT")
	ds_list_replace(menu, 1, "Buttons Scale")
	ds_list_replace(menu, 2, "Buttons Opacity")
	ds_list_replace(menu, 3, "Buttons Coordinates")
	if global.debug = 1 {ds_list_replace(menu, 4, "Show Debug Buttons")}
	else {ds_list_replace(menu, 4, " ")}
	ds_list_replace(menu, 6, "RESET")
}