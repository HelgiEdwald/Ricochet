var dx = x - xprevious;
var dy = y - yprevious;

if (abs(dx) > 0.1 || abs(dy) > 0.1) {
    var dir = point_direction(xprevious, yprevious, x, y);
    
    facing = round(dir);

    if (dir >= 45 && dir < 135) {
        sprite_index = spr_baddie_walk_up;
    }
	else if (dir >= 135 && dir < 225) {
        sprite_index = spr_baddie_walk_left;
    } 
	else if (dir >= 225 && dir < 315) {
        sprite_index = spr_baddie_walk_down;
    } 
	else {
        sprite_index = spr_baddie_walk_right;
    }
    
} 