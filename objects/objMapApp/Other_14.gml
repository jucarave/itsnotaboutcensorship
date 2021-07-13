/// @description Clicked off

if (isCursorOnCloseButton(714, 4)) {
	event_user(1); // Close window
	exit;
}

var len = array_length_1d(cities.levels);
for (var i=0;i<len;i++) {
	var level = cities.levels[i];
	if (isPointInRect(mouse_x, mouse_y, x + level._x, y + level._y, level.w, level.h)) {
		global.LOAD_CITY = cities.labels[i].name;
		var app = appCreate((room_width - sprite_get_width(bckPromptApp)) / 2, (room_height - sprite_get_height(bckPromptApp)) / 2, objPromptApp);
		app.appName = "warning";
		app.msg = ["loadCity", global.LOAD_CITY];
		app.buttons = [
			{ color: BTN_BLUE, _x: 70, _y: 100, msg: "continue", callback: loadCity },
			{ color: BTN_GRAY, _x: 180, _y: 100, msg: "cancel", callback: closePrompt }
		];
	}
}