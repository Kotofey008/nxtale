if position_meeting(obj_mainchara.x, obj_mainchara.y, id) and keyboard_check_pressed(ord("Z")) and not instance_exists(obj_textbox)
{
	create_textbox(text_id)
}
