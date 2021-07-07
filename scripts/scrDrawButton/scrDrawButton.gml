function drawButton(button, text, _x, _y){
	draw_sprite(sprButton, button, _x, _y);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(openSansRegular14);
	draw_set_color(c_white);
	draw_text(_x, _y, text);
	
	draw_set_valign(fa_top);
}