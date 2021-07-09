function drawEmailItems(){
	draw_set_color(c_black);
	
	for (var i=0;i<emails.count;i++) {
		var cx = emails.listPosition._x + x;
		var cy = emails.listPosition._y + y + i * 58;
		var mail = emails.list[i];
		
		var index = 0;
		if (active && isPointInRect(mouse_x, mouse_y, cx, cy, sprite_get_width(sprEmailAppItem), sprite_get_height(sprEmailAppItem))) {
			index += 1;
		}
		
		draw_sprite(sprEmailAppItem, index, cx, cy);
		
		draw_set_font(openSansRegular14);
		draw_text(cx + 10, cy + 8, mail.sender);
		
		draw_set_font(openSansRegular10);
		draw_text(cx + 10, cy + 33, mail.subject);
		
		if (mail.unread) {
			draw_sprite(sprEmailAppUnread, 0, cx + 185, cy + 7);
		}
	}
	
	draw_set_color(c_white);
}