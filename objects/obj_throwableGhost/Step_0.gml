if (collision_count < maxCollisions && !enemyHit) {
	
	var collision_x = x;
	var collision_y = y;
	

	array_push(bounce_points, [collision_x, collision_y]);
	
	}
	
if (mouse_check_button_released(mb_right)) {

	obj_player.moveable = true;

	instance_destroy();

}


    