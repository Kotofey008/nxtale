/// @description 

// setting dragging to false 
dragging = false;

// if the controlled instance exists, set its speed to zero
if instance_exists(controlled_instance) {
	controlled_instance.speed = 0;	
}