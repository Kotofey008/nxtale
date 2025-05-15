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
	show_message("Incorrect room name! Make sure you're not using outdated numeric names (like '1') or incorrect capitalization. For example, 'Room_Example' is not the same as 'room_example', which is the correct format.")
	}
}