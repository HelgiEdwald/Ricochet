//constants
direction = point_direction(x,y, obj_player.x, obj_player.y)
var imageAngle = direction;

var dx = obj_player.x - x;
var dy = obj_player.y - y;
var dist = point_distance(x, y, obj_player.x, obj_player.y);
var dir_to_player = point_direction(x, y, obj_player.x, obj_player.y);


var angle_diff = angle_difference(facing, dir_to_player);
//FSM
#region

switch(state) {

	case "idle": emoteIndex = 0; seesPlayer = false; break;
	case "patrol": emoteIndex = 1; break;
	case "alert": 
	
		path_end();
		image_speed = 0;
		emoteIndex = 2;
		seesPlayer = true;
		obj_player.moveable = false;
		
		if (alarm[0] <= 0) {
		
			alarm[0] = 45;
		}
		
							
		
		break;

}

switch (state) {
    case "idle":
        
		if (instance_exists(obj_player)){
			

		if (abs(angle_diff) < fov * 0.5 && dist < sight_range) {
		    
		    if (!collision_line(x, y, obj_player.x, obj_player.y, obj_Wall, true, true)) {
				player_spotted = true;
			}
		}
		
		if(player_spotted){
		
			state = "alert";
			
		}
					
				
		}
		
	case "alert":
        
		if (instance_exists(obj_player)){
		    
			
			    
			    if (!(abs(angle_diff) < fov * 0.5 && dist < sight_range)) {
			        
					player_spotted = false;
				}
					
					
		}
		
		
		
        break;
}

#endregion

//Despawn on collision with throwable
#region
if place_meeting(x, y, obj_throwable)
	
	{
		
		obj_player.throwOver = true;
		
		
		
		if obj_throwable.collision_count >= enemyHealth {
			
			enemyKillable = true;
		
			instance_destroy();
			
			if(finalEnemy){
   
				instance_create_layer(0,0,"Instances", obj_gameWon);
				
			}
			
		}
		else {
		
			enemyKillable = false;
		
		}
		instance_destroy(obj_throwable)
	
	}

#endregion
	
//sprite control & aiming
#region

var fixed_direction = facing;

var face = 0;

if (fixed_direction == 0) {
    face = 0;
}
else if (fixed_direction == 90) {
    face = 1;
}
else if (fixed_direction == 180) {
    face = 2;
}
else if (fixed_direction == 270) {
    face = 3;
}

mask_index = sprite[3];

if !moves {
	sprite_index = sprite[face];
	image_speed = 0;
}

	
#endregion