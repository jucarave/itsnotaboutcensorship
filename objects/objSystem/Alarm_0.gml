/// @description Clock update

seconds += 1;

if (seconds >= 60) {
	minutes += 1;
	seconds = 0;
}

if (minutes >= 60) {
	hour += 1;
	minutes = 0;
}

if (hour >= 24) {
	hour = 0;
}

alarm[0] = room_speed / timeScale;