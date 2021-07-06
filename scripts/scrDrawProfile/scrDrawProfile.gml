function drawProfile(profile, px, py){
	// profile picture
	draw_sprite(profile.pic, 0, px + 3, py + 3);
	
	// Name
	draw_set_font(openSansRegular14);
	draw_set_color(c_black);
	draw_text(px + 73, py + 3, profile.name);
	
	// Age and status
	draw_set_font(openSansRegular10);
	draw_text(px + 73, py + 22, loc("age:") + string(profile.age));
	draw_text(px + 73, py + 36, loc("status:") + (profile.online ? loc("online") : loc("offline")));
	
	draw_set_color(c_white);
}