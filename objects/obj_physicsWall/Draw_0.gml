if (obj_debugger.debug) {
	draw_self();

	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}