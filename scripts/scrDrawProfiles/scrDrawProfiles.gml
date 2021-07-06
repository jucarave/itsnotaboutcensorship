function drawProfiles(){
	// Rebuild the profiles surfaces if it stopped existing
	if (!surface_exists(profiles.surface)) {
		profiles.surface = surface_create(profiles.surfaceSize.w, profiles.surfaceSize.h);
	}

	surface_set_target(profiles.surface);
	draw_clear_alpha(c_black, 0);

	// Draw all the profiles
	for (var i=0;i<profiles.listLength;i++) {
		// If the cursor is on a profile, then draw a gray background
		if (isPointInRect(mouse_x, mouse_y, x + profiles.pos._x, y + profiles.pos._y, profiles.pos.w, profiles.pos.h) &&
			isPointInRect(0, (mouse_y - (y + profiles.pos._y)), 0, profiles.size.h * i - scroll, profiles.size.w, profiles.size.h)) {
			draw_set_color(global.C_LIGHT_GRAY);
			draw_rectangle(0, i * profiles.size.h - scroll, profiles.size.w, i * profiles.size.h + profiles.size.h - scroll, false);
		}

		drawProfile(profiles.list[i], 0, i * profiles.size.h - scroll);
	}
	
	surface_reset_target();
	draw_surface_part(profiles.surface, 0, 0, profiles.pos.w, profiles.pos.h, x + profiles.pos._x, y + profiles.pos._y);
}