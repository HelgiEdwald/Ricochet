//count collisions

	if (collision_count >= maxCollisions) {
	
		instance_destroy();
		
		obj_player.throwOver = true;
	
	}


//destroy itself on collision with target
	#region
	if place_meeting(x, y, obj_enemy)
	
		{
			
	
			instance_destroy();
			
			obj_player.throwOver = true;
			
			
	
		}
		
		sprite_index = obj_player.spriteFound;
		
	#endregion	
	