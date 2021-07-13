/// @description Clicked off

if (isCursorOnCloseButton(220, 4)) {
	event_user(1); // Close window
	exit;
}

var len = array_length_1d(buttons);
for (var i=0;i<len;i++) {
	var btn = buttons[i];
	if (isCursorOnButton(sprButton, x + btn._x, y + btn._y)) {
		btn.callback();
	}
}