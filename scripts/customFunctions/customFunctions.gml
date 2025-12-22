//drawing the player's weapon

function draw_my_weapon(sprite)
{
	
	var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
	
	var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);

	var _weaponYscl = 1;

	if(aimDir > 90 && aimDir < 270)
	{

		_weaponYscl = -1;

	}

	draw_sprite_ext(sprite, 0, x + _xOffset, centerY + _yOffset, 1, _weaponYscl, aimDir, c_white, 1);

}

//drawing the enemy's weapon
function draw_enemy_weapon(sprite, state)
{
	
	if (state == "alert") 
	{
	
		var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
	
		var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);

		var _weaponYscl = 1;

		if(aimDir > 90 && aimDir < 270)
		{

			_weaponYscl = -1;

		}

		draw_sprite_ext(sprite, 0, x + _xOffset, centerY + _yOffset, 1, _weaponYscl, aimDir, c_white, 1);

	}
	
	else 
	{
	
		var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
	
		var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);
		
		draw_sprite_ext(sprite, 0, x + _xOffset, centerY + _yOffset, -1, 1, 0, c_white, 1);

	}
	
}