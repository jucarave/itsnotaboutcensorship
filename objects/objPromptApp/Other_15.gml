/// @description Draw
event_inherited();

draw_set_font(openSansRegular12);
draw_set_color(c_black);
draw_text_ext(x + 6, y + 28, loc(msg), 18, 238);

draw_set_color(c_white);
draw_set_font(openSansRegular10);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var len = array_length_1d(buttons);
for (var i=0;i<len;i++) {
	var btn = buttons[i];
	draw_sprite(sprButton, btn.color, x + btn._x, y + btn._y);
	draw_text(x + btn._x, y + btn._y, loc(btn.msg));
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);