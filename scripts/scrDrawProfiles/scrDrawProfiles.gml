function scrDrawProfiles(){
	if (!surface_exists(profilesSurface)) {
		profilesSurface = surface_create(256, 512);
	}

	surface_set_target(profilesSurface);
	draw_clear_alpha(c_black, 0);
	
	for (var i=0;i<profilesLength;i++) {
		scrDrawProfile(profiles[i], 0, + i * 70 - scroll);
	}
	
	surface_reset_target();
	draw_surface_part(profilesSurface, 0, 0, 252, 406, x + 2, y + 24);
}