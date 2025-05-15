///@description Movement
up = 0
down = 0
left = 0
right = 0

if keyboard_check(vk_up)
    try_up = 1
if keyboard_check_released(vk_up)
    try_up = 0
if keyboard_check(vk_down)
    try_down = 1
if keyboard_check_released(vk_down)
    try_down = 0
if keyboard_check(vk_right)
    try_right = 1
if keyboard_check_released(vk_right)
    try_right = 0
if keyboard_check(vk_left)
    try_left = 1
if keyboard_check_released(vk_left)
    try_left = 0
if (global.osflavor == 1)
{
    if try_up
        up = keyboard_check_direct(vk_up)
    if try_down
        down = keyboard_check_direct(vk_down)
    if try_left
        left = keyboard_check_direct(vk_left)
    if try_right
        right = keyboard_check_direct(vk_right)
}
else
{
    if try_up
        up = keyboard_check(vk_up)
    if try_down
        down = keyboard_check(vk_down)
    if try_left
        left = keyboard_check(vk_left)
    if try_right
        right = keyboard_check(vk_right)
}
if keyboard_check_released(vk_up)
    up = 0
if keyboard_check_released(vk_down)
    down = 0
if keyboard_check_released(vk_left)
    left = 0
if keyboard_check_released(vk_right)
    right = 0

var quitx = ((window_get_width() / 2) - 45)

if canquit = 1
{
	if keyboard_check(vk_escape)
		{
			quit += 1
			if (instance_exists(obj_quittest) == 0)
				if global.fullscreen = 0
					instance_create_depth(quitx, 0, -1000, obj_quittest)
				else if global.fullscreen = 1
					instance_create_depth(0, 0, -1000, obj_quittest)
		}
	else
		quit = 0
}
if (room = room_start)
	room_goto_next()
	
if keyboard_check(vk_up)
    global.tup = 1
if keyboard_check_released(vk_up)
    global.tup = 0
if keyboard_check(vk_down)
    global.tdown = 1
if keyboard_check_released(vk_down)
    global.tdown = 0
if keyboard_check(vk_right)
    global.tright = 1
if keyboard_check_released(vk_right)
    global.tright = 0
if keyboard_check(vk_left)
    global.tleft = 1
if keyboard_check_released(vk_left)
    global.tleft = 0
	
time += 1

if keyboard_check_pressed(vk_f4)
{
	if window_get_fullscreen()
	{
		window_set_fullscreen(false)
		window_enable_borderless_fullscreen(false)
		window_center()
		global.fullscreen = 0
	}
	else
	{
		window_set_fullscreen(true)
		window_enable_borderless_fullscreen(true)
		global.fullscreen = 1
	}
}

