/// @description Draw

draw_self();

draw_set_font(openSansRegular14);
draw_set_halign(fa_left);

if (appIcon != noone) {
	draw_sprite_ext(appIcon, 0, x + 2, y + 2, 0.3125, 0.3125, 0, c_white, 1);
	draw_text(x + 26, y + 2, loc(appName));
} else {
	draw_text(x + 2, y + 2, loc(appName));
}