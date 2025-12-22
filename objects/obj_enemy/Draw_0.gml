//rotation
#region
	
#endregion

//weapon drawing
#region
//draw the weapon behind the player

draw_sprite(spr_states, emoteIndex, x, y - 40 );

var healthBarSprite = asset_get_index("spr_healthBar" + string(enemyHealth));

if (healthBarSprite != -1) {
       var xscale = 0.5;
        var yscale = 0.5;
        draw_sprite_ext(healthBarSprite, 0, x, y + 25, xscale, yscale, 0, c_white, 1);
    } else {
        show_debug_message("Missing sprite: spr_healthBar" + string(enemyHealth));
    }


//draw the player
draw_self();

var pistol_length = 16;
pistol_x = x + lengthdir_x(pistol_length, facing);
pistol_y = y + lengthdir_y(pistol_length, facing);


draw_sprite_ext(spr_originalPistol, 0, pistol_x, pistol_y, 1, -1, facing, c_white, 1);


#endregion


//debugging
#region


if (obj_debugger.debug) {
	

	#region
	
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
	

	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 0.3);
	
	
	#endregion
	
	//line of sight
	#region
	var lineLength = 100;
	
	
	
	draw_line_width_color(x,y,obj_player.x, obj_player.y, 3, c_purple, c_purple);
	
	
	
	var totalAngle = point_direction(x,y,obj_player.x, obj_player.y);
	
	var text1 = angle_difference(totalAngle, rawDir)
	
	var text2 = lineWall;
	
	var text3 = seesPlayer;
	
	
	
	if (player_spotted == true) {
	    draw_text_transformed(x - 40,y + 40, "Player Seen!", 0.5, 0.5, 0);
	}
	else {
	     draw_text_transformed(x - 40,y + 40, "Player Not Seen...", 0.5, 0.5, 0);
	}
	
	var half_fov = fov * 0.5;
	var arc_start = facing - half_fov;
	draw_set_alpha(0.3);
	
	draw_triangle(x, y,
	              x + lengthdir_x(sight_range, arc_start),
	              y + lengthdir_y(sight_range, arc_start),
	              x + lengthdir_x(sight_range, arc_start + fov),
	              y + lengthdir_y(sight_range, arc_start + fov),
	              false);
	draw_set_alpha(1);


	
	
	
	
	#endregion
}
	var half_fov = fov * 0.5;
	var arc_start = facing - half_fov;
	draw_set_alpha(0.3);
	draw_triangle(x, y,
	x + lengthdir_x(sight_range, arc_start),
	y + lengthdir_y(sight_range, arc_start),
	x + lengthdir_x(sight_range, arc_start + fov),
	y + lengthdir_y(sight_range, arc_start + fov),
	false);
	draw_set_alpha(1);

#endregion																									