if (!active) { exit; }

if (isPointInRect(mouse_x, mouse_y, x + profiles.pos._x, y + profiles.pos._y, profiles.pos.w, profiles.pos.h)) {
	// Update scrolling
	scroll += (mouse_wheel_down() - mouse_wheel_up()) * scrollSpeed;
	scroll = max(min(scroll, profiles.listLength * 70 - 406), 0);
}