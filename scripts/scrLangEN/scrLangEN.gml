function scrLangEN(){
	if (global.LANG != noone) {
		ds_map_destroy(global.LANG);
	}
	
	global.LANG = ds_map_create();
	
	global.LANG[? "lang"] = "en";
	global.LANG[? "profiles"] = "Profiles";
	global.LANG[? "age:"] = "Age: ";
	global.LANG[? "status:"] = "Status: ";
	global.LANG[? "online"] = "Online";
	global.LANG[? "offline"] = "Away";
}