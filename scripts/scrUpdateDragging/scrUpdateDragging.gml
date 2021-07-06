function updateDragging(){
	if (anchored != noone) {
		anchored.x = mouse_x - anchor_x;
		anchored.y = mouse_y - anchor_y;
	
		anchored.x = min(max(anchored.x, 0), room_width - anchored.sprite_width);
		anchored.y = min(max(anchored.y, 24), room_height - anchored.sprite_height);
	}
}