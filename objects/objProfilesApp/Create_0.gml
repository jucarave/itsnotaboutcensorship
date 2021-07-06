// Inherit the parent event
event_inherited();

profiles = {
	pos: { _x: 2, _y: 24, w: 252, h: 406 },
	size: { w: 252, h: 70 },
	
	surfaceSize: { w: 256, h: 512 },
	surface: surface_create(256, 512),
	
	list: array_create(20),
	listLength: 20
};

scroll = 0;
scrollSpeed = 30;

for (var i=0;i<profiles.listLength;i++) {
	profiles.list[i] = createProfile(sprProfNoPic, "Lorem Ipsum", irandom_range(15, 75), choose(true, false));
}