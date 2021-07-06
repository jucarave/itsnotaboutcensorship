/// @description Clicked off

if (objCursor.anchored != noone) { exit; }

if (isCursorOnCloseButton(226, 4, 27, 16)) {
	event_user(1); // Close window
}
