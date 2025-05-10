/// @description Set speed and direction of controlled instance



if !instance_exists(controlled_instance) exit;

if dragging {
	var dir = point_direction(x, y, drag_x, drag_y);
	var dist = point_distance(x, y, drag_x, drag_y);
	var relative_speed = dist / controller_radius;
	with(controlled_instance) {
		// WARNING!!!
		// if the controlled instance move speed if not "move_speed", change this variable name 
		var dx = lengthdir_x(move_speed * relative_speed, dir);
		var dy = lengthdir_y(move_speed * relative_speed, dir);	
		move_and_collide(dx, dy, collision_instance);
		
		if dx > 0 and dy <= 1 and dy >= -1
		{
			moving = 1
			global.facing = 1
			obj_mainchara.image_speed = 0.1
			show_debug_message("Right")
		}
		if dx < -0 and dy <= 1 and dy >= -1
		{
			moving = 1
			global.facing = 3
			obj_mainchara.image_speed = 0.1
			show_debug_message("Left")
		}
		if dy > 0 and dx <= 1 and dx >= -1
		{
			moving = 1
			global.facing = 0
			obj_mainchara.image_speed = 0.1
			show_debug_message("Down")
		}
		if dy < -0 and dx <= 1 and dx >= -1
		{
			moving = 1
			global.facing = 2
			obj_mainchara.image_speed = 0.1
			show_debug_message("Up")
		}
		else if dy = 0 and dx = 0
			moving = 0
	}
} else {
	// keyboard_control
	// keyboard input
	var right = /*keyboard_check(vk_right) or */keyboard_check(ord("D"));
	var left = /*keyboard_check(vk_left) or */keyboard_check(ord("A"));
	var up = /*keyboard_check(vk_up) or */keyboard_check(ord("W"));
	var down = /*keyboard_check(vk_down) or */keyboard_check(ord("S"));

	var horizontal = right - left;
	var vertical = down - up;
	
	if horizontal > 0
	{
		moving = 1
		global.facing = 1
		obj_mainchara.image_speed = 0.1
	}
	if horizontal < 0
	{
		moving = 1
		global.facing = 3
		obj_mainchara.image_speed = 0.1
	}
	if vertical > 0
	{
		moving = 1
		global.facing = 0
		obj_mainchara.image_speed = 0.1
	}
	if vertical < 0
	{
		moving = 1
		global.facing = 2
		obj_mainchara.image_speed = 0.1
	}
		

	if horizontal != 0 or vertical != 0 {
		var dir = point_direction(0, 0, horizontal, vertical);
		with(controlled_instance) {
			// WARNING!!!
			// if the controlled instance move speed if not "move_speed", change this variable name 
			var dx = lengthdir_x(move_speed, dir);
			var dy = lengthdir_y(move_speed, dir);	
			move_and_collide(dx, dy, collision_instance);
		}
	} 
}