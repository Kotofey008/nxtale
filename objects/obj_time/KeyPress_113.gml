///@description Room Selector enabler
if global.debug = true
	global.roomselect = get_string_async("Debug room selector", room_get_name(room))