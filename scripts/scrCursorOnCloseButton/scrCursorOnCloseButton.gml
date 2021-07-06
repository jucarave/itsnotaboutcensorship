function isCursorOnCloseButton(bx, by, bw, bh){
	if (isPointInRect(mouse_x, mouse_y, x + bx, y + by, bw, bh)) {
		return true;
	}
	
	return false;
}