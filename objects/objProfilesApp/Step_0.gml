if (!active) { exit; }

if (isPointInRect(mouse_x, mouse_y, x + profiles.pos._x, y + profiles.pos._y, profiles.pos.w, profiles.pos.h)) {
	// Update scrolling
	var maxScroll = profiles.listLength * profiles.size.h - profiles.pos.h;
	if (profiles.selected != noone) {
		// Maximum scroll in the profile detail
		draw_set_font(openSansRegular10);
		maxScroll = string_height_ext(profiles.list[profiles.selected].bio, 12, profiles.detail.w - 6) + profiles.size.h - profiles.detail.h;
	}
	
	scroll += (mouse_wheel_down() - mouse_wheel_up()) * scrollSpeed;
	scroll = max(min(scroll, maxScroll), 0);
}