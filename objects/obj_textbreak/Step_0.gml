if global.interacted > 1
	timer += 3

if timer >= 2 and not instance_exists(obj_textbox)
	global.interacted = 0
	instance_destroy()