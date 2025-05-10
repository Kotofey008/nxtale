if keyboard_check_pressed(ord("1"))
{
    edit += 1
    if (edit == 1)
    {
        black_fade = 0.4
        text_black_fade = 0.9
    }
    else if (edit == 3)
    {
        virtual_key_delete(virtual_key_up)
        virtual_key_delete(virtual_key_down)
        //virtual_key_delete(virtual_key_left)
        //virtual_key_delete(virtual_key_right)
        virtual_key_delete(virtual_key_z)
        virtual_key_delete(virtual_key_x)
        virtual_key_delete(virtual_key_c)
        //virtual_key_delete(virtual_key_zp)
        //virtual_key_delete(virtual_key_xp)
        //virtual_key_delete(virtual_key_cp)
        //virtual_key_delete(virtual_key_analog)
        //virtual_key_delete(virtual_key_analogp)
        ini_open("touchconfig.ini")
        ini_write_real("CONFIG", "zx", zx)
        ini_write_real("CONFIG", "zy", zy)
        ini_write_real("CONFIG", "xx", xx)
        ini_write_real("CONFIG", "xy", xy)
        ini_write_real("CONFIG", "cx", cx)
        ini_write_real("CONFIG", "cy", cy)
        ini_write_real("CONFIG", "analog_posx", analog_posx)
        ini_write_real("CONFIG", "analog_posy", analog_posy)
        ini_write_real("CONFIG", "button_scale", button_scale)
        ini_write_real("CONFIG", "analog_scale", analog_scale)
        ini_write_real("CONFIG", "joystick_type", joystick_type)
        ini_write_real("CONFIG", "controls_opacity", controls_opacity)
        ini_close()
        black_fade = 0
        text_black_fade = 0
        edit = 0
    }
}
if (edit == 0)
    return;
	
virtual_key_delete(virtual_key_up)
virtual_key_delete(virtual_key_down)
//virtual_key_delete(virtual_key_left)
//virtual_key_delete(virtual_key_right)
virtual_key_delete(virtual_key_z)
virtual_key_delete(virtual_key_x)
virtual_key_delete(virtual_key_c)
//virtual_key_delete(virtual_key_zp)
//virtual_key_delete(virtual_key_xp)
//virtual_key_delete(virtual_key_cp)
//virtual_key_delete(virtual_key_analog)
//virtual_key_delete(virtual_key_analogp)
//scr_add_keys()
if keyboard_check(ord("}"))
{
    zx = device_mouse_x_to_gui(0) - 19.5 * button_scale
    zy = device_mouse_y_to_gui(0) - 18 * button_scale
}
if keyboard_check(ord("|"))
{
    xx = device_mouse_x_to_gui(0) - 19.5 * button_scale
    xy = device_mouse_y_to_gui(0) - 18 * button_scale
}
if keyboard_check(ord("^"))
{
    cx = device_mouse_x_to_gui(0) - 19.5 * button_scale
    cy = device_mouse_y_to_gui(0) - 18 * button_scale
}
if keyboard_check(ord("]"))
{
    analog_posx = device_mouse_x_to_gui(0) - 29.5 * analog_scale
    analog_posy = device_mouse_y_to_gui(0) - 29.5 * analog_scale
}
if (device_mouse_x_to_gui(0) >= 459.5 && device_mouse_y_to_gui(0) >= 75 && device_mouse_x_to_gui(0) <= 469.5 && device_mouse_y_to_gui(0) <= 93 && mouse_check_button_pressed(mb_left))
{
    if (button_scale > 1)
        button_scale -= 0.1
}
if (device_mouse_x_to_gui(0) >= 531.5 && device_mouse_y_to_gui(0) >= 75 && device_mouse_x_to_gui(0) <= 541.5 && device_mouse_y_to_gui(0) <= 93 && mouse_check_button_pressed(mb_left))
{
    if (button_scale < 3)
        button_scale += 0.1
}
if (device_mouse_x_to_gui(0) >= 459.5 && device_mouse_y_to_gui(0) >= 121 && device_mouse_x_to_gui(0) <= 469.5 && device_mouse_y_to_gui(0) <= 139 && mouse_check_button_pressed(mb_left))
{
    if (analog_scale > 1)
        analog_scale -= 0.1
}
if (device_mouse_x_to_gui(0) >= 531.5 && device_mouse_y_to_gui(0) >= 121 && device_mouse_x_to_gui(0) <= 541.5 && device_mouse_y_to_gui(0) <= 139 && mouse_check_button_pressed(mb_left))
{
    if (analog_scale < 4)
        analog_scale += 0.1
}
if (device_mouse_x_to_gui(0) >= 459.5 && device_mouse_y_to_gui(0) >= 167 && device_mouse_x_to_gui(0) <= 469.5 && device_mouse_y_to_gui(0) <= 185 && mouse_check_button_pressed(mb_left))
{
    if (joystick_type == 1)
        joystick_type -= 1
}
if (device_mouse_x_to_gui(0) >= 531.5 && device_mouse_y_to_gui(0) >= 167 && device_mouse_x_to_gui(0) <= 541.5 && device_mouse_y_to_gui(0) <= 185 && mouse_check_button_pressed(mb_left))
{
    if (joystick_type == 0)
        joystick_type += 1
}
if (device_mouse_x_to_gui(0) >= 531.5 && device_mouse_y_to_gui(0) >= 167 && device_mouse_x_to_gui(0) <= 541.5 && device_mouse_y_to_gui(0) <= 185 && mouse_check_button_pressed(mb_left))
{
    if (joystick_type == 1)
        joystick_type += 1
}
if (device_mouse_x_to_gui(0) >= 459.5 && device_mouse_y_to_gui(0) >= 167 && device_mouse_x_to_gui(0) <= 469.5 && device_mouse_y_to_gui(0) <= 185 && mouse_check_button_pressed(mb_left))
{
    if (joystick_type == 2)
        joystick_type -= 1
}
if (device_mouse_x_to_gui(0) >= 459.5 && device_mouse_y_to_gui(0) >= 167 && device_mouse_x_to_gui(0) <= 469.5 && device_mouse_y_to_gui(0) <= 231 && mouse_check_button_pressed(mb_left))
{
    if (controls_opacity > 0.1)
        controls_opacity -= 0.05
}
if (device_mouse_x_to_gui(0) >= 531.5 && device_mouse_y_to_gui(0) >= 167 && device_mouse_x_to_gui(0) <= 541.5 && device_mouse_y_to_gui(0) <= 231 && mouse_check_button_pressed(mb_left))
{
    if (controls_opacity < 1)
        controls_opacity += 0.05
}
if (device_mouse_x_to_gui(0) >= 459.5 && device_mouse_y_to_gui(0) >= 213 && device_mouse_x_to_gui(0) <= 469.5 && device_mouse_y_to_gui(0) <= 331 && mouse_check_button_pressed(mb_left))
{
    if (plus_hide > 0)
        plus_hide -= 1
}
if (device_mouse_x_to_gui(0) >= 531.5 && device_mouse_y_to_gui(0) >= 213 && device_mouse_x_to_gui(0) <= 541.5 && device_mouse_y_to_gui(0) <= 331 && mouse_check_button_pressed(mb_left))
{
    if (plus_hide < 1)
        plus_hide += 1
}
if (device_mouse_x_to_gui(0) >= 241 && device_mouse_y_to_gui(0) >= 412.25 && device_mouse_x_to_gui(0) <= 399 && device_mouse_y_to_gui(0) <= 436.25 && mouse_check_button_pressed(mb_left))
{
    zx = 510
    zy = 340
    xx = 560
    xy = 280
    cx = 610
    cy = 220
    button_scale = 2.5
    analog_scale = 3.3
    analog_posx = -42
    analog_posy = 232.5
    joystick_type = 0
    controls_opacity = 0.5
    plus_hide = 0
}
