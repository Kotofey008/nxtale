// setting the position of the center os dragging 
if event_data[?"guiposX"] >= 320
{
x = event_data[?"guiposX"];
y = event_data[?"guiposY"];
}

// setting true to the dragging variable
dragging = true;

// setting the position of the finger 
drag_x = x;
drag_y = y;