if (collision_circle(x, y, radius, obj_player, false, true)) {

    
	image_alpha = 1;
	
	
	if !obj_player.hasItem && keyboard_check(ord("E")) {
		
		obj_player.hasItem = true;
	
		obj_player.itemThrown = false;
	
		obj_player.spriteFound = self.sprite_index;
	
		obj_player.throwOver = false;
	
		itemPickedUp = true;
	
		instance_destroy();
		
		draw_text(x, y - 10, "[Press E to interact]");
	
	}
	
	
}

else {
	
	
	image_alpha = 0.5;
	
	
	
}
