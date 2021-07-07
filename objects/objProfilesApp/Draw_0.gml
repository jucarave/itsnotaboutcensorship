draw_self();

draw_sprite_ext(sprProfiles, 0, x + 2, y + 2, 0.3125, 0.3125, 0, c_white, 1);

draw_set_font(openSansRegular14);
draw_text(x + 26, y + 2, loc("profiles"));

// Rebuild the profiles surfaces if it stopped existing
if (!surface_exists(profiles.surface)) {
	profiles.surface = surface_create(profiles.surfaceSize.w, profiles.surfaceSize.h);
}

if (profiles.selected != noone) {
	drawProfileDetail(profiles.list[profiles.selected]);
} else {
	drawProfiles();
}