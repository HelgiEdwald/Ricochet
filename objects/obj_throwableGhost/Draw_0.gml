if (mouse_check_button((mb_right)) && instance_exists(obj_enemy)) 
{
	obj_player.moveable = false;
	
	if (array_length(bounce_points) >= 2 )
	{
   
	    draw_line(obj_player.x, obj_player.y, bounce_points[1][0], bounce_points[1][1]);

	
	    for (var i = 2; i < array_length(bounce_points); i++)
		{
			
			
	        var start_point = bounce_points[i - 1];
			
	        var end_point = bounce_points[i];
			
			
			if (place_meeting(end_point[0], end_point[1], obj_enemy)) 
			{
				
				enemyHit = true;
				
				depth = obj_enemy.depth - 1;
				
				if (collision_count >= obj_enemy.enemyHealth)
				{
				
					draw_sprite(spr_enemyHit, image_index, obj_enemy.x, obj_enemy.y);
					
				}
				
				
            }
        
	        draw_line(start_point[0], start_point[1], end_point[0], end_point[1]);
			
		}
		var last_point = bounce_points[array_length(bounce_points) - 2];
		
		if (collision_count < maxCollisions) {
			
		   draw_text(last_point[0], last_point[1] + 10, string(collision_count));
		   
		}
		else {
			
		   draw_text(last_point[0], last_point[1] + 10, string(collision_count - 1));
		   
		}
        
	}
	
}