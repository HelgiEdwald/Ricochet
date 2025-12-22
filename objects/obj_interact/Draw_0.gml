draw_self();

if (!variable_instance_exists(id, "radius")) {
    show_debug_message("radius is undefined for obj_interact!");
}



if(obj_debugger.debug) {

	draw_set_color(c_lime);
	if (variable_instance_exists(id, "radius")) {
    draw_circle(x, y, radius, true);
}
	

}