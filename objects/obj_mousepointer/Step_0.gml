right_key = keyboard_check(ord("D"))
left_key = keyboard_check(ord("A"))
up_key = keyboard_check(ord("W"))
down_key = keyboard_check(ord("S"))

//get speed
xspd = (right_key - left_key) * move_spd
yspd = (down_key - up_key) * move_spd
if keyboard_check(vk_backspace)
{
	xspd = (right_key - left_key) * move_spd * 2.5
	yspd = (down_key - up_key) * move_spd * 2.5
}
//move
x += xspd
y += yspd


x = device_mouse_x_to_gui(0)
y = device_mouse_y_to_gui(0)