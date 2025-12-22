draw_self(); 

draw_text(x, y + 10,string(collision_count));

if (collision_count < maxCollisions) {
			
	draw_text(x, y + 10,string(collision_count));
		   
}
else {
			
	draw_text(x, y + 10,string(collision_count - 1));
		   
}