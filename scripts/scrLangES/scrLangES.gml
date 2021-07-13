function loadLangES(){
	if (global.LANG != noone) {
		ds_map_destroy(global.LANG);
	}
	
	global.LANG = ds_map_create();
	
	global.LANG[? "lang"] = "es";
	global.LANG[? "profiles"] = "Perfiles";
	global.LANG[? "email"] = "Correo";
	global.LANG[? "map"] = "Mapa";
	global.LANG[? "age:"] = "Edad: ";
	global.LANG[? "status:"] = "Estado: ";
	global.LANG[? "online"] = "Conectado";
	global.LANG[? "offline"] = "Desconectado";
	global.LANG[? "btnBack"] = "Volver";
	global.LANG[? "warning"] = "Advertencia";
	global.LANG[? "continue"] = "Continuar";
	global.LANG[? "cancel"] = "Cancelar";
	global.LANG[? "loadCity"] = "¿Quieres guardar el juego y cargar: {0}?";
}