/// @description Draw

draw_self();

draw_sprite_ext(objEmailIcon.sprite_index, 0, x + 2, y + 2, 0.3125, 0.3125, 0, c_white, 1);

draw_set_font(openSansRegular14);
draw_set_halign(fa_left);
draw_text(x + 26, y + 2, loc("email"));

drawEmailItems();

if (emails.selected != noone) {
	drawEmailDetail(emails.list[emails.selected]);
}