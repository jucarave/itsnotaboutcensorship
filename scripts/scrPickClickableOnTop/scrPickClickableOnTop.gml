function scrPickClickableOnTop(userEvent){
	var program = noone;

	for (var i=0;i<instance_number(objProgram);i++) {
		var p = instance_find(objProgram, i);
		if (!p.active) { continue; }
	
		if (mouse_x >= p.x && mouse_x < p.x+p.sprite_width && mouse_y >= p.y && mouse_y < p.y+p.sprite_height) {
			program = p;
		}
	}

	if (program != noone) {
		with (program) {
			event_user(userEvent);
		}
	
		exit;
	}

	var icon = noone;

	for (var i=0;i<instance_number(objProgramIcon);i++) {
		var ic = instance_find(objProgramIcon, i);
	
		if (mouse_x >= ic.x && mouse_x < ic.x+ic.sprite_width && mouse_y >= ic.y && mouse_y < ic.y+ic.sprite_height) {
			icon = ic;
		} else {
			ic.selected = false;
			ic.lastClicked = noone;
		}
	}

	if (icon != noone) {
		with (icon) {
			event_user(userEvent);
		}
	
		exit;
	}
}