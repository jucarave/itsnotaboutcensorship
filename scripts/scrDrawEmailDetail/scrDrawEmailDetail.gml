function drawEmailDetail(mail){
	var cx = x + 251;
	var cy = y + 25;
	
	draw_set_color(c_black);

	draw_set_font(openSansRegular14);
	draw_text(cx + 10, cy + 8, mail.sender);
		
	draw_set_font(openSansRegular10);
	draw_text(cx + 10, cy + 33, mail.subject);
	
	draw_set_font(openSansRegular12);
	draw_text_ext(cx + 10, cy + 70, mail.content, 16, 563);
	
	draw_set_color(c_white);
}