if (!active) { exit; }

if (mouse_x >= x && mouse_x < x + sprite_width && mouse_y >= y && mouse_y < y + sprite_height) {
	scroll += (mouse_wheel_down() - mouse_wheel_up()) * scrollSpeed;
	
	scroll = max(min(scroll, profilesLength * 70 - 406), 0);
}