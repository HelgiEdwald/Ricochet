//scaling
#region

image_xscale = 0.5;
image_yscale = 0.5;

#endregion
//draw camera and lookaahead targets, and item if player has item
#region

window_set_cursor(cr_none);

draw_sprite_ext(spr_camera, image_index, mouse_x, mouse_y, 1, 1, 0, c_white, 1);

if (hasItem == true && itemThrown == false)

{

	if aimDir >= 0 && aimDir < 180 
	
	{
		
		draw_my_weapon(spriteFound);

	}

	draw_self();

	if aimDir >= 180 && aimDir < 360 
	
	{
	
		draw_my_weapon(spriteFound);
		
	}

}

else 

{

	draw_self();

}

if keyboard_check(ord("Q")) 

{
    
    window_set_cursor(cr_none);

    var _xOffset = lengthdir_x(weaponOffsetDist, aimDir) + 3;
	
    var _yOffset = lengthdir_y(weaponOffsetDist, aimDir) + 3;
    
    var angle = point_direction(x, y, dummyTarget.x, dummyTarget.y);
	
    var thickness = 3;
	
    var offset_step = 0.1; 

	for (var i = -thickness div 2; i <= thickness div 2; i += offset_step) 
	
	{
		
	    var offset_x = lengthdir_x(i, angle + 90);  
	
	    var offset_y = lengthdir_y(i, angle + 90);  
        
	    var clampedX = clamp(dummyTarget.x + offset_x, x - maximumSight, x + maximumSight);
	
	    var clampedY = clamp(dummyTarget.y + offset_y, y - maximumSight, y + maximumSight);
        
	    draw_line(x + _xOffset + offset_x, y + _yOffset + offset_y, clampedX, clampedY);
		
	}
	
}

#endregion