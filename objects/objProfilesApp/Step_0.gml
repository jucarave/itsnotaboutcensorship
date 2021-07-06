if (!active) { exit; }

// Update scrolling
if (isPointInRect(mouse_x, mouse_y, x, y, sprite_width, sprite_height)) {
	scroll += (mouse_wheel_down() - mouse_wheel_up()) * scrollSpeed;
	
	scroll = max(min(scroll, profilesLength * 70 - 406), 0);
}