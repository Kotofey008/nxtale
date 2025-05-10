/// @description Draw controller on screen

if dragging {
	draw_set_alpha(0.4);
	draw_circle(x, y, controller_radius, false);	
	
	draw_circle(drag_x, drag_y, handle_radius, false);
	
	
	draw_set_alpha(1);
}
