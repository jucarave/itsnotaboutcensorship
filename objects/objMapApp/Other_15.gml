/// @description Draw

event_inherited();

draw_set_font(openSansRegular10);
draw_set_color(c_white);
draw_set_halign(fa_center);

var len = array_length_1d(cities.labels);
for (var i=0;i<len;i++) {
	var label = cities.labels[i];
	
	draw_text(x + label._x, y + label._y, label.name);
}

draw_set_halign(fa_left);