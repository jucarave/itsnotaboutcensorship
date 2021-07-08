/// @description Clicked off

if (objCursor.anchored != noone) { 
	backPressed = false;
	exit; 
}

if (isCursorOnCloseButton(226, 4)) {
	event_user(1); // Close window
}

// Go Back to profiles list
if (backPressed && profiles.selected != noone && isCursorOnButton(sprButton, x + backButton._x, y + backButton._y)) {
	profiles.selected = noone;
	scroll = prevScroll;
}

backPressed = false;