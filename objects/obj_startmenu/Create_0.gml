/// @description Start Variables

// create the list for the menu
menu = ds_list_create();	// list of menu items
ds_list_add(menu, "EXIT", "Language", "TEST STRING", "TEST STRING");	// the menu items, add or remove items to customize

// menu selected
selected = 0;	// number of the list above that start selected (the first one is 0, the second one is 1 and so on)

// menu variables
menu_start_position = 50;	// start y position of the menu
menu_separation = 20;		// y sepraration between menu items
angle = 0;	// used for arrow side animation
delta_x = 0;	// maximum x movement for the arrow animation
arrow_width = 360; // amount of pixels of distance between arrows
//arrow_sprite = sArrow;	// sprite of the arrow
arrow_scale = 1;	// scale of the arrow sprite

current_language = " "

// text variables
// title
title_text = "SETTINGS" //"Easy and fast Menu";	// the title of the menu
title_color = c_white;	// the title color
title_font = fnt_main;	// the title font
title_shadow_offset = 5;	// the title shadow offset
title_shadow_color = c_black //c_gray;	// the title shadow color
title_shadow_alpha = 1;	// the title shadow alpha

// menu items
menu_font = fnt_maintext;	// the menu items font
menu_selected_color = c_yellow;	// the menu selected item color and this affects the color blend of the arrow
menu_not_selected_color = c_white;	// the menu not selected items color
menu_shadow_offset = 2;	// the menu items and arrow shadow offset
menu_shadow_alpha = 1;	// the menu items shadow alpha
menu_shadow_color = c_black //c_gray;	// the menu items shadow color

// sounds
sound_change = snd_squeak;	// sound when changing the selection
sound_confirmation = snd_select;	// sound when selecting a menu item

// menu control buttoms
menu_confirmation_buttom = vk_enter;	// the buttom to confirm the menu item selected
menu_up_buttom = vk_up;	// the buttom to change the menu item
menu_down_buttom = vk_down;	// the buttom to change the menu item

// credits
version = "1.14"
if (os_type == os_ps4)
	version += "-4"
if (os_type == os_psvita)
	version += "-V"
if (os_type == os_android)
	version += "-a"
if (os_type == os_uwp)
	version += "-UWP"
if (os_type == os_ios)
	version += "-i"
if (global.rtm == 0)
	version += "-insider"
cred_text = "UNDERTALE v" + version + " (C) Toby Fox 2015-2025"
cred_color = c_grey
cred_alpha = 1