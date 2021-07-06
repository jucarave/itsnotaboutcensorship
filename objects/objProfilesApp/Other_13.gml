/// @description Clicked on

if (isCursorOnCloseButton(226, 4, 27, 16)) {
	exit;
}

checkDraggableWindow();

// Check click on profiles
if (isPointInRect(mouse_x, mouse_y, x + profiles.pos._x, y + profiles.pos._y, profiles.pos.w, profiles.pos.h)) {
	var index = floor((mouse_y + scroll - (y + profiles.pos._y)) / profiles.size.h);
	show_message("Clicked on profile: " + string(index));
}