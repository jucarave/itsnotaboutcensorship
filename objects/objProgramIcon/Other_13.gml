/// @description Clicked on
selected = true;
	
if (lastClicked != noone && current_time - lastClicked <= doubleClickTime) {
	with (app) {
		event_user(0);
	}

	lastClicked = noone;
	selected = false;
} else {
	lastClicked = current_time;
}