/// @description Clicked on

event_inherited();

if (isCursorOnCloseButton(810, 4)) {
	exit;
}

checkDraggableWindow();

if (isPointInRect(mouse_x, mouse_y, x + emails.listPosition._x, y + emails.listPosition._y, sprite_get_width(sprEmailAppItem), (sprite_get_height(sprEmailAppItem) + 1) * emails.count)) {
	emails.selected = floor((mouse_y - emails.listPosition._y - y) / (sprite_get_height(sprEmailAppItem) + 1));
	emails.list[emails.selected].unread = false;
}