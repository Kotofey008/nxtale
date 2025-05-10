/// @description 

if global.menuopen = 0 // disabling joystick on menu open
{
	
// setting the position of the center os dragging 
if event_data[?"guiposX"] <= 320 or event_data[?"guiposY"] >= 100
{
x = event_data[?"guiposX"];
y = event_data[?"guiposY"];
}

// setting true to the dragging variable
dragging = true;

// setting the position of the finger 
drag_x = x;
drag_y = y;

if event_data[?"guiposX"] >= 320 or event_data[?"guiposY"] <= 100
	dragging = 0
	
}