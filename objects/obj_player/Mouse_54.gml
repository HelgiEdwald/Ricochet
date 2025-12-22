//aiming trajectory
#region
if (hasItem)

{
	aimingLocked = true;

	if (!instance_exists(obj_throwableGhost))
	{
	
		moveable = false;

		var _throwable = instance_create_layer(x,y,"Instances", obj_throwableGhost)
	
		var _x_force, _y_force;
	
		_x_force = lengthdir_x(1, aimDir)*500;
		_y_force = lengthdir_y(1, aimDir)*500;
	
		with (_throwable)
		{
	
			physics_apply_impulse(x, y, _x_force, _y_force);
	
		}
		
	}
	
}
#endregion