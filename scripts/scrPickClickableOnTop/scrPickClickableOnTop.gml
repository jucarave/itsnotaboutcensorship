function pickClickableOnTop(userEvent){
	var program = noone;

	for (var i=0;i<instance_number(objProgram);i++) {
		var p = instance_find(objProgram, i);
		if (!p.active) { continue; }
	
		if (isPointInRect(mouse_x, mouse_y, p.x, p.y, p.sprite_width, p.sprite_height)) {	
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
	
		if (isPointInRect(mouse_x, mouse_y, ic.x, ic.y, ic.sprite_width, ic.sprite_height)) {
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