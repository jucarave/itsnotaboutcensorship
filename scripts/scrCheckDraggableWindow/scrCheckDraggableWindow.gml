function checkDraggableWindow(){
	if (mouse_y <= y + 24) {
		objCursor.anchored = id;
		objCursor.anchor_x = mouse_x - x;
		objCursor.anchor_y = mouse_y - y;
		
		return true;
	}
	
	return false;
}