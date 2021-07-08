function isCursorOnCloseButton(bx, by){
	if (isPointInRect(mouse_x, mouse_y, x + bx, y + by, 27, 16)) {
		return true;
	}
	
	return false;
}