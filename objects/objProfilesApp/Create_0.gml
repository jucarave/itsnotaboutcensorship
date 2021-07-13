// Inherit the parent event
event_inherited();

appName = "profiles";
appIcon = sprProfilesIcon;

profiles = {
	pos: { _x: 2, _y: 24, w: 252, h: 406 },
	detail: { _x: 2, _y: 24, w: 252, h: 370 },
	size: { w: 252, h: 70 },
	
	surfaceSize: { w: 256, h: 512 },
	surface: surface_create(256, 512),
	
	list: array_create(20),
	listLength: 20,
	selected: noone
};

backButton = { _x: sprite_width / 2, _y: sprite_height - 20 };
backPressed = false;

prevScroll = 0;
scroll = 0;
scrollSpeed = 30;

var lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
for (var i=0;i<profiles.listLength;i++) {
	profiles.list[i] = createProfile(sprProfNoPic, "Lorem Ipsum", irandom_range(15, 75), choose(true, false), lorem);
}