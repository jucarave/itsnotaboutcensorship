function scrDrawProfile(profile, px, py){
	draw_sprite(profile[PROF_PIC], 0, px + 3, py + 3);
	
	draw_set_font(openSansRegular14);
	draw_set_color(c_black);
	draw_text(px + 73, py + 3, profile[PROF_NAME]);
	
	draw_set_font(openSansRegular10);
	draw_text(px + 73, py + 22, loc("age:") + string(profile[PROF_AGE]));
	draw_text(px + 73, py + 36, loc("status:") + (profile[PROF_STATUS] ? loc("online") : loc("offline")));
	
	draw_set_color(c_white);
}