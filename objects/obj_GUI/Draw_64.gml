if (!instance_exists(obj_gameOver) && !instance_exists(obj_gameWon)) {
	
    draw_text_transformed(32, 32, "Controls\nPress WASD to move\nPress Q to look further", 1.5,1.5,0);

    if (instance_exists(obj_player)) {
        if (obj_player.hasItem) {
            draw_text_transformed(32, 150, "Throwing\n-----------------\nPress RMB to aim\nPress LMB to throw\n", 1.5,1.5,0);
        }
    }
}
