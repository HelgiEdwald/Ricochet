// Move the bullet by its speed each frame

dir = point_direction(x,y, obj_player.x,obj_player.y);

xspd = lengthdir_x(spd,dir);
yspd = lengthdir_y(spd,dir);


x += xspd;
y += yspd;

