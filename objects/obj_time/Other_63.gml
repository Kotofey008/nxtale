///@description Room Selector Code
if (async_load[? "id"] = global.roomselect)
{
	var room_name = async_load[? "result"];
	var target_room = asset_get_index(room_name)
	
	if target_room != -1
	{
		room_goto(target_room)
	}
	else
	{
	show_message("Incorrect room name! Please, make sure you are not inputting a number or use capitalization. \"Room_Example\" is not \"room_example\", which will work correctly.")
	}
}