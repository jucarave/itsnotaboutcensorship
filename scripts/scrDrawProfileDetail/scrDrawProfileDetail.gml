function drawProfileDetail(profile){
	surface_set_target(profiles.surface);
	draw_clear_alpha(c_black, 0);
	
	// profile picture
	draw_sprite(profile.pic, 0, 3, 3 - scroll);
	
	// Name
	draw_set_font(openSansRegular14);
	draw_set_color(c_black);
	draw_text(73, 3 - scroll, profile.name);
	
	// Age and status
	draw_set_font(openSansRegular10);
	draw_text(73, 22 - scroll, loc("age:") + string(profile.age));
	draw_text(73, 36 - scroll, loc("status:") + (profile.online ? loc("online") : loc("offline")));
	
	// Full bio
	draw_set_font(openSansRegular12);
	draw_text_ext(3, profiles.size.h - scroll, profile.bio, 16, profiles.detail.w - 6);
	
	draw_set_color(c_white);
	
	surface_reset_target();
	draw_surface_part(profiles.surface, 0, 0, profiles.detail.w, profiles.detail.h, x + profiles.detail._x, y + profiles.detail._y);
	
	// Back button
	drawButton(BTN_BLUE, loc("btnBack"), x + backButton._x, y + backButton._y);
}