/// @description 

// setting the position of finger 
drag_x = event_data[?"guiposX"];
drag_y = event_data[?"guiposY"];

// calculating the distance between the center of the controller and the finger
var dist = point_distance(x, y, drag_x, drag_y);



//maintaining the handle inside the controller radius
if dist > controller_radius {
	var dir = point_direction(x, y, drag_x, drag_y);
	var dx = lengthdir_x(controller_radius, dir);
	var dy = lengthdir_y(controller_radius, dir);
	
	drag_x = x + dx;
	drag_y = y + dy;
	
}

