//throwing
#region

if (!instance_exists(obj_throwable) && hasItem && !itemThrown)
{
	var fx_offset_x = lengthdir_x(weaponOffsetDist - 10, aimDir);
	var fx_offset_y = lengthdir_y(weaponOffsetDist - 10, aimDir);

	var _fx = instance_create_layer(x + fx_offset_x, y + fx_offset_y, "Instances", obj_throwEffect);

	itemThrown = true;
	
	hasItem = false;

	var _throwable = instance_create_layer(x,y,"Instances", obj_throwable)
	
	var _x_force, _y_force;
	
	_x_force = lengthdir_x(1, aimDir)*500;
	_y_force = lengthdir_y(1, aimDir)*500;
	
	with (_throwable)
	{
	
		physics_apply_impulse(x, y, _x_force, _y_force);
	
	}
	
}

#endregion