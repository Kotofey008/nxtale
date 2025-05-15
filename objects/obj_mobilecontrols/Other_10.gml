/// @description Virtual Keys readding
virtual_key_exit = virtual_key_add(exitx, exity, (16 * button_scale), (16 * button_scale), vk_escape)

if room != room_settings //or room_naming
{
virtual_key_z = virtual_key_add(zx, zy, (16 * button_scale), (16 * button_scale), vk_enter)
virtual_key_x = virtual_key_add(xx, xy, (16 * button_scale), (16 * button_scale), vk_shift)
virtual_key_c = virtual_key_add(cx, cy, (16 * button_scale), (16 * button_scale), vk_control)
if global.menuopen = 0
	{
	virtual_key_up = virtual_key_add(40, cy, (16 * button_scale), (16 * button_scale), vk_up)
	virtual_key_down = virtual_key_add(40, xy, (16 * button_scale), (16 * button_scale), vk_down)
	}
}

if room = room_settings
{
	virtual_key_up = virtual_key_add(40, cy, (16 * button_scale), (16 * button_scale), vk_up)
	virtual_key_down = virtual_key_add(40, xy, (16 * button_scale), (16 * button_scale), vk_down)
	virtual_key_z = virtual_key_add(zx, zy, (16 * button_scale), (16 * button_scale), vk_enter)
}