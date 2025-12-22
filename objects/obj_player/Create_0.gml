//variables
#region

throw_velocity_x = 30000;

throw_velocity_y = 30000;

moveable = true;

dummyTarget = noone;

throwableHit = false;

hasItem = false;

itemThrown = false;

spriteFound = spr_originalPistol;

throwOver = true;

maximumSight = 165;

game_over = false;

originalItemX = 0;

originalItemY = 0;

#endregion

//variables for movement & aiming
#region

	moveDir = 0;

	moveSpd = 2;

	xspd = 0;

	yspd = 0;
	
	aimingLocked = false;
	lastAiming = false;
	lockedTargetX = 0;
	lockedTargetY = 0;
	lockedDir = 0;

#endregion

//sprite control
#region
	centerYOffset = -5;

	centerY = y + centerYOffset

	weaponOffsetDist = 24;

	aimDir = 0;

	sprite[0] = spr_player_walk_right;

	sprite[1] = spr_player_walk_up;

	sprite[2] = spr_player_walk_left;

	sprite[3] = spr_player_walk_down;
	
#endregion