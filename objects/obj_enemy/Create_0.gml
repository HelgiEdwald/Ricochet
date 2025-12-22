enemyKillable = false;

pistol_x = 0;
pistol_y = 0;

//sprite control & aiming
#region
image_yscale = 0.5;
image_xscale = 0.5;
image_angle = 0;


	centerYOffset = -5;

	centerY = y + centerYOffset

	weaponOffsetDist = 0
	;

	aimDir = 0;
	
	rawDir = 0;

	sprite[0] = spr_baddie_walk_right;

	sprite[1] = spr_baddie_walk_up;

	sprite[2] = spr_baddie_walk_left;

	sprite[3] = spr_baddie_walk_down;
	
	weaponOffsetDist = 24;
	
	
	

#endregion

// FSM
#region

	seesPlayer = false;
	if instance_exists(obj_player){
		sightMax = point_distance(x,y, obj_player.x, obj_player.y);
	}
	
	lineWall = 0
	
	linePlayer = 0;
	
	state = "idle";
	
	emoteIndex = 0;
	
	max_distance = 300;
	max_angle = 10;
	
	if moves {
	
		path_start(enemyPath, 1, enemyPathAction, true);
	
	}
	
#endregion


fired = false; 

//line of sight
#region
player_spotted = false;


facing = image_angle + facing_offset;

#endregion