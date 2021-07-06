if (selected) {
	draw_sprite(sprIconSelected, 0, x, y);
}

draw_self();

draw_set_font(openSansRegular10);
draw_set_halign(fa_center);
draw_text(x+32, y + 64, loc(appName));

draw_set_halign(fa_left);