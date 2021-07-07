function isCursorOnButton(sprite, buttonX, buttonY){
	var w = sprite_get_width(sprite);
	var h = sprite_get_height(sprite);
	var x1 = buttonX - w / 2;
	var y1 = buttonY - h / 2;
	
	return isPointInRect(mouse_x, mouse_y, x1, y1, w, h);
}