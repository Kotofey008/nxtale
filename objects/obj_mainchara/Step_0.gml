if (global.facing == 0)
	sprite_index = dsprite
if (global.facing == 1)
    sprite_index = rsprite
if (global.facing == 2)
    sprite_index = usprite
if (global.facing == 3)
    sprite_index = lsprite

if obj_time.left and global.canmove = 1
{
    if (movement == 1)
    {
        turned = 1
        if (xprevious == (x + 3))
            x -= 1
        else
            x -= 1.5
        if (moving != true)
            image_index = 1
        moving = true
        if (global.debug == true)
        {
            if keyboard_check(vk_backspace)
                x -= 2.5
        }
        image_speed = 0.1
        if (obj_time.up && global.facing == 2)
            turned = 0
        if (obj_time.down && global.facing == 0)
            turned = 0
        if (turned == 1)
            global.facing = 3
    }
}
if obj_time.up and global.canmove = 1
{
    if (movement == 1)
    {
        turned = 1
        y -= 1.5
        if (global.debug == true)
        {
            if keyboard_check(vk_backspace)
                y -= 2.5
        }
        if (moving != true)
            image_index = 1
        moving = true
        image_speed = 0.1
        if (obj_time.right && global.facing == 1)
            turned = 0
        if (obj_time.left && global.facing == 3)
            turned = 0
        if (turned == 1)
            global.facing = 2
    }
}
if obj_time.right and global.canmove = 1
{
    if (movement == 1)
    {
        if (obj_time.left == 0)
        {
            turned = 1
            if (xprevious == (x - 3))
                x += 1
            else
                x += 1.5
            if (global.debug == true)
            {
                if keyboard_check(vk_backspace)
                    x += 2.5
            }
            moving = true
            image_speed = 0.1
            if (moving != true)
                image_index = 1
            if (obj_time.up && global.facing == 2)
                turned = 0
            if (obj_time.down && global.facing == 0)
                turned = 0
            if (turned == 1)
                global.facing = 1
        }
    }
}
if obj_time.down and global.canmove = 1
{
    if (movement == 1)
    {
        if (obj_time.up == 0)
        {
            turned = 1
            y += 1.5
            if (global.debug == true)
            {
                if keyboard_check(vk_backspace)
                    y += 2.5
            }
            if (moving != true)
                image_index = 1
            moving = true
            image_speed = 0.1
            if (obj_time.right && global.facing == 1)
                turned = 0
            if (obj_time.left && global.facing == 3)
                turned = 0
            if (turned == 1)
                global.facing = 0
        }
    }
}
if moving != true
{
	image_speed = 0
	image_index = 0
	if global.facing = 3 or global.facing = 1
	{
		image_speed = 0
		image_index = 0
	}
}
global.currentroom = room
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
{
    event_user(9)
}
	
	
if keyboard_check(vk_backspace)
	move_speed = 3
else
	move_speed = 1.5
	
	
	
	
//TEST interaction
if (global.facing == 1)
{
	if collision_rectangle((x + sprite_width / 2), (y + 6 + sprite_height / 2), (x + sprite_width + 13), (y + sprite_height), obj_interactable, 0, 1) //and keyboard_check_pressed(vk_enter) and not instance_exists(obj_textbox)
		scr_interact()
}
if (global.facing == 3)
{
	if collision_rectangle((x + sprite_width / 2), (y + 6 + sprite_height / 2), (x - 13), (y + sprite_height), obj_interactable, 0, 1) //and keyboard_check_pressed(vk_enter) and not instance_exists(obj_textbox)
		scr_interact()
}
if (global.facing == 0)
{
	if collision_rectangle((x + 4), (y + 28), (x + sprite_width - 4), (y + sprite_height + 15), obj_interactable, 0, 1) //and keyboard_check_pressed(vk_enter) and not instance_exists(obj_textbox)
		scr_interact()
}
if (global.facing == 2)
{
	if collision_rectangle((x + 3), (y + sprite_height - 5), (x + sprite_width - 5), (y + 5), obj_interactable, 0, 1) //and keyboard_check_pressed(vk_enter) and not instance_exists(obj_textbox)
		scr_interact()
}
