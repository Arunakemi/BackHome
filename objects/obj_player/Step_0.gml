if(keyboard_check(vk_right)){
	
	if(x < 865){
		x+= 5;
		image_angle -= .8;
	}else{
		with(obj_planet){
			image_angle += 1;
		}
	}
	
}

if(keyboard_check(vk_left)){
	
	if(x > 165){
		x -= 5;
		image_angle += .8;
	}else{
		with(obj_planet){
			image_angle -= 1;
		}
	}
}

if(keyboard_check(vk_space)){
	if(position_meeting(x, y, obj_mineral)){
		ds_list_add(inv, "mineral");
		with(obj_mineral){
			instance_destroy();
		}
	}
}
