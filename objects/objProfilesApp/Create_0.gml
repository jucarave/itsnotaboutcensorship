// Inherit the parent event
event_inherited();

profilesSurface = surface_create(256, 512);
scroll = 0;
scrollSpeed = 30;

profiles = array_create(20);
profilesLength = array_length_1d(profiles);
for (var i=0;i<profilesLength;i++) {
	profiles[i] = scrCreateProfile(sprProfNoPic, "Lorem Ipsum", irandom_range(15, 75), choose(true, false));
}