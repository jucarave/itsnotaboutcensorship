function loadLangEN(){
	if (global.LANG != noone) {
		ds_map_destroy(global.LANG);
	}
	
	global.LANG = ds_map_create();
	
	global.LANG[? "lang"] = "en";
	global.LANG[? "profiles"] = "Profiles";
	global.LANG[? "email"] = "Email";
	global.LANG[? "map"] = "Map";
	global.LANG[? "age:"] = "Age: ";
	global.LANG[? "status:"] = "Status: ";
	global.LANG[? "online"] = "Online";
	global.LANG[? "offline"] = "Away";
	global.LANG[? "btnBack"] = "Back";
	global.LANG[? "warning"] = "Warning";
	global.LANG[? "continue"] = "Continue";
	global.LANG[? "cancel"] = "Cancel";
	global.LANG[? "loadCity"] = "Do you want to save the game and load: {0}?";
}