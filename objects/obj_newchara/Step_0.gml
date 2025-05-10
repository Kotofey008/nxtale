right_key = keyboard_check(vk_right)
left_key = keyboard_check(vk_left)
up_key = keyboard_check(vk_up)
down_key = keyboard_check(vk_down)

//get speed
xspd = (right_key - left_key) * move_spd
yspd = (down_key - up_key) * move_spd
if global.debug = 1 and keyboard_check(vk_backspace)
{
	xspd = (right_key - left_key) * move_spd * 2.5
	yspd = (down_key - up_key) * move_spd * 2.5
}


//set sprite
mask_index = sprite[DOWN]
if yspd = 0
{
	if xspd > 0 {face = RIGHT}
	if xspd < 0 {face = LEFT}
}
if xspd > 0 and face = LEFT {face = RIGHT}
if xspd < 0 and face = RIGHT {face = LEFT}
if xspd = 0
{
	if yspd > 0 {face = DOWN}
	if yspd < 0 {face = UP}
}
if yspd > 0 and face = UP {face = DOWN}
if yspd < 0 and face = DOWN {face = UP}
image_speed = 0.1
sprite_index = sprite[face]
if face = DOWN
	global.facing = 0
if face = UP
	global.facing = 2
if face = RIGHT
	global.facing = 1
if face = LEFT
	global.facing = 3


//collisions
if place_meeting(x + xspd, y, obj_solidnormal) = true
{
	xspd = 0
}
if place_meeting(x, y + yspd, obj_solidnormal) = true
{
	yspd = 0
}

//move
x += xspd
y += yspd



//animate
if xspd = 0 and yspd = 0
{
	image_index = 0
}


//door exits
if (global.interact == 3)
{
    if (global.entrance > 0)
    {
		if (global.entrance == 1)
        {
            x = obj_markerA.x
            y = obj_markerA.y
			global.entrance = 0
        }
		if (global.entrance == 2)
        {
            x = obj_markerB.x
            y = obj_markerB.y
			global.entrance = 0
        }
		if (global.entrance == 3)
        {
            x = obj_markerC.x
            y = obj_markerC.y
			global.entrance = 0
        }
		if (global.entrance == 4)
        {
            x = obj_markerD.x
            y = obj_markerD.y
			global.entrance = 0
        }
		if (global.entrance == 5)
        {
            x = obj_markerE.x
            y = obj_markerE.y
			global.entrance = 0
        }
		if (global.entrance == 6)
        {
            x = obj_markerF.x
            y = obj_markerF.y
			global.entrance = 0
        }
        if (global.entrance == 11)
        {
            x = obj_markerK.x
            y = obj_markerK.y
			global.entrance = 0
        }
		if (global.entrance == 26)
        {
            x = obj_markerX.x
            y = obj_markerX.y
			global.entrance = 0
        }
		global.interact = 0
    }
}
with (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_doorparent, 0, 0))
    event_user(9)