function scr_interact_test(_interactid)
{
if keyboard_check_pressed(vk_enter) and not instance_exists(obj_textbox)
{
	if _interactid = 1
		global.myinteract = 1
	if _interactid = 2
		global.myinteract = 2
	if _interactid = 4
		global.myinteract = 4
}
}
