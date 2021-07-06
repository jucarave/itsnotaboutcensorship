function drawClock(){
	draw_set_halign(fa_center);
	draw_set_font(openSansRegular14);
	draw_text(room_width / 2, 1, string(hour) + ":" + zeroPad(minutes, 2, true));
	
	draw_set_halign(fa_left);
}