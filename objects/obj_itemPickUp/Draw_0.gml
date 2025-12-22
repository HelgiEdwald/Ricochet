
event_inherited();

if (collision_circle(x, y, radius, obj_player, false, true)) {

		draw_set_color(c_white);
		draw_text_transformed(x - 40, y - 20, "[Press E to pick up]", 0.6,0.6,0);
		depth = -1000;

}