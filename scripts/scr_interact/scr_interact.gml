function scr_interact(){
if global.facing = 0 // DOWN
{
	var x1 = x + 4
	var y1 = y + 28
	var x2 = x + sprite_width - 4
	var y2 = y + sprite_height + 15
}
else if global.facing = 1 // RIGHT
{
	var x1 = x + sprite_width / 2
	var y1 = y + 6 + sprite_height / 2
	var x2 = x + sprite_width + 13
	var y2 = y + sprite_height
}
else if global.facing = 2 // UP
{
	var x1 = x + 3
	var y1 = y + sprite_height - 5
	var x2 = x + sprite_width - 5
	var y2 = y + 5
}
else if global.facing = 3 // LEFT
{
	var x1 = x + sprite_width / 2
	var y1 = y + 6 + sprite_height / 2
	var x2 = x - 13
	var y2 = y + sprite_height
}


var target = collision_rectangle(x1, y1, x2, y2, obj_interactable, 0, 1)

if target != noone and keyboard_check_pressed(vk_enter) and not instance_exists(obj_textbox)
{
	if target.object_index = obj_readable_room1
		global.myinteract = 1
	else if target.object_index = obj_asriellamp
		global.myinteract = 2
	else if target.object_index = obj_readable_room2
		global.myinteract = 4
	else if target.object_index = obj_basementdoor
		global.myinteract = 5
}
}
