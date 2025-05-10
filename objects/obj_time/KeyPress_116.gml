///@description Beta WideScreen
if global.widescreen = 0
{
	window_set_size(960, 480)
	//if room_width > 640
	//camera_destroy(view_camera[0])
	//view_set_camera(0, view_camera[0])
	//view_set_wport(0, 960)
	//view_set_hport(0, 480)
	//view_camera[0] = camera_create_view(0, 0, 480, 240, 0, obj_mainchara, -1, -1, 480, 240)
	//var mat = matrix_build_projection_ortho(480, 240, 0, 1)
	//camera_set_proj_mat(view_camera[0], mat)
	global.widescreen = 1


}
else if global.widescreen = 1
{
	window_set_size(640, 480)
	global.widescreen = 0
}