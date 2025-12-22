alpha += alphaSpd;

alpha = clamp(alpha,0,1);


if (mouse_check_button(mb_left) && alpha >= 1) {
	show_debug_message("Mouse left pressed");

	alarm[0] = 1;
}

