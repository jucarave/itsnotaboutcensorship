function drawProfiles(){
	// Rebuild the profiles surfaces if it stopped existing
	if (!surface_exists(profilesSurface)) {
		profilesSurface = surface_create(profilesSurfaceSize.w, profilesSurfaceSize.h);
	}

	surface_set_target(profilesSurface);
	draw_clear_alpha(c_black, 0);

	// Draw all the profiles
	for (var i=0;i<profilesLength;i++) {
		// If the cursor is on a profile, then draw a gray background
		if (isPointInRect(mouse_x, mouse_y, x + profilesPos._x, y + profilesPos._y, profilesPos.w, profilesPos.h) &&
			isPointInRect(0, (mouse_y - (y + profilesPos._y)), 0, profileSize.h * i - scroll, profileSize.w, profileSize.h)) {
			draw_set_color(global.C_LIGHT_GRAY);
			draw_rectangle(0, i * profileSize.h - scroll, profileSize.w, i * profileSize.h + profileSize.h - scroll, false);
		}

		drawProfile(profiles[i], 0, i * profileSize.h - scroll);
	}
	
	surface_reset_target();
	draw_surface_part(profilesSurface, 0, 0, profilesPos.w, profilesPos.h, x + profilesPos._x, y + profilesPos._y);
}