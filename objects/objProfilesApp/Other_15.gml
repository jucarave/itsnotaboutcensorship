/// @description Draw

event_inherited();

// Rebuild the profiles surfaces if it stopped existing
if (!surface_exists(profiles.surface)) {
	profiles.surface = surface_create(profiles.surfaceSize.w, profiles.surfaceSize.h);
}

if (profiles.selected != noone) {
	drawProfileDetail(profiles.list[profiles.selected]);
} else {
	drawProfiles();
}