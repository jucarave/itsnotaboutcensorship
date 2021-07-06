function isCursorOnCloseButton(bx, by, bw, bh){
	if (mouse_x >= x + bx && mouse_y >= y + by && mouse_x <= x + bx + bw && mouse_y <= y + by + bh) {
		return true;
	}
	
	return false;
}