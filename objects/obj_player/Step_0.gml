//get inputs
#region


var rightKey = keyboard_check( ord("D") );

var leftKey = keyboard_check(ord("A"));

var upKey = keyboard_check( ord("W") );

var downKey = keyboard_check(ord("S"));


#endregion

//player movement
#region
	
	var _horizKey = rightKey - leftKey;
	
	var _vertKey = downKey - upKey;
	
	moveDir = point_direction( 0, 0, _horizKey, _vertKey);
	
	var _spd = 0;
	
	var _inputLevel = point_distance(0, 0, _horizKey, _vertKey);
	
	_inputLevel = clamp(_inputLevel, 0, 1); 
	
	_spd = moveSpd * _inputLevel;
	
	xspd = lengthdir_x(_spd, moveDir);
	
	yspd = lengthdir_y(_spd, moveDir);
	
	if place_meeting(x + xspd, y, obj_Wall)
	
	{
	
		xspd = 0;
	
	}
	
	if place_meeting(x, y + yspd, obj_Wall)
	
	{
		
		yspd = 0;
		
	}
	
	if (moveable) 
	{
		
	    x += xspd;
		y += yspd;
		
	}
	
	depth = -bbox_bottom;
	
#endregion

//player aiming
#region

centerY = y + centerYOffset;

var rawDir;

//lock aiming so that player can not throw in a new direction
if (aimingLocked) 

{

    if (!global.hasLockedDir) {
		
        global.lockedDir = point_direction(x, centerY, mouse_x, mouse_y);
        global.hasLockedDir = true;
		
    }

    rawDir = global.lockedDir;
	
}

else 

{
 
    rawDir = point_direction(x, centerY, mouse_x, mouse_y);
    global.lockedDir = rawDir;
    global.hasLockedDir = false;
	
}

aimDir = rawDir;

#endregion

//sprite control
#region

//make sure the player sprite is facing the correct direction
var face = round(aimDir/90);

if face == 4 
{
	
	face = 0;
	
}

//idle sprite if no movement	
if xspd == 0 && yspd == 0 || !moveable 
{
		
	image_index = 0;
		
}
	
//maintain same collision mask for consistency
mask_index = sprite[3];

//set the player sprite
sprite_index = sprite[face];
	
	
#endregion	

//lookaround ability
#region

if keyboard_check(ord("Q")) 
{
		
	if (!instance_exists(obj_targetDummy))
	{
			
		dummyTarget = instance_create_layer(mouse_x,mouse_y, "Instances", obj_targetDummy);
			
	}
		
	dummyTarget.x = clamp(mouse_x, x - maximumSight, x + maximumSight);
		
	dummyTarget.y = clamp(mouse_y, y - maximumSight, y + maximumSight);
		
	dummyTarget.timer = 5;
		
	obj_camera.target = dummyTarget;
		
}
	
#endregion

//spawn new throwable
#region

//store item spawn location
if instance_exists(obj_itemPickUp)
{

	var item = instance_find(obj_itemPickUp, 0);
	originalItemX = item.x;
	originalItemY = item.y;
	
}

//respawn item if enemy still alive after throw
if instance_exists(obj_enemy) && !instance_exists(obj_itemPickUp) && !hasItem && throwOver
{
	
    instance_create_layer(originalItemX, originalItemY, "Instances", obj_itemPickUp);
	
}

#endregion

//end game if player hit with bullet
#region
if (place_meeting(x, y, obj_bullet)) 
{
	
    sprite_index = spr_player_defeated;
    game_over = true;
    instance_create_layer(0,0,"Instances", obj_gameOver);
	
}
#endregion