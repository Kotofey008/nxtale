selected3 = 0
saved = 0
buffer = 0

full_open = 0
menuchara = spr_mainchara_menu

// Mini window
mini_s = spr_dialogbg
mini_w = 71
mini_h = 55
mini_i = 0
mini_is = 6/60

// Menu Window
menu_s = spr_dialogbg
menu_w = 71
menu_h = 74
menu_i = 0
menu_is = 6/60

// Full Window
full_s = spr_dialogbg
full_w = 173
full_h = 209
full_i = 0
full_is = 6/60

// create the list for the menu
menu = ds_list_create();	// list of menu items
ds_list_add(menu, "ITEM", "STAT", "DIAL", "WEB");	// the menu items, add or remove items to customize

// menu selected
selected = 0;	// number of the list above that start selected (the first one is 0, the second one is 1 and so on)

//menu variables
menu_sep = 13
