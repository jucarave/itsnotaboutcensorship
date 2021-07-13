function appDestroy(appId){
	var len = objProgramsDraw.programsCount;

	for (var i=0;i<len;i++) {
		var app = objProgramsDraw.programs[# 0, i];

		if (app.id == appId) {
			objProgramsDraw.programs[# 0, i] = 1000;
			objProgramsDraw.programs[# 1, i] = 1000;
			break;
		}
	}
	
	objProgramsDraw.programsCount--;
	ds_grid_sort(objProgramsDraw.programs, 1, true);
	
	instance_destroy(appId);
}