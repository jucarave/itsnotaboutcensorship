// Inherit the parent event
event_inherited();

profilesSurfaceSize = { w: 256, h: 512 };
profilesPos = { _x: 2, _y: 24, w: 252, h: 406 };
profileSize = { w: 252, h: 70 };
profilesSurface = surface_create(profilesSurfaceSize.w, profilesSurfaceSize.h);

scroll = 0;
scrollSpeed = 30;

profiles = array_create(20);
profilesLength = array_length_1d(profiles);
for (var i=0;i<profilesLength;i++) {
	profiles[i] = scrCreateProfile(sprProfNoPic, "Lorem Ipsum", irandom_range(15, 75), choose(true, false));
}