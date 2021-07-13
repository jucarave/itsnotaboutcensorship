function appCreate(_x, _y, object){
	var app = instance_create_layer(_x, _y, "Apps", object)
	
	objProgramsDraw.programs[# 0, objProgramsDraw.programsCount] = app.id;
	objProgramsDraw.programs[# 1, objProgramsDraw.programsCount] = objProgramsDraw.programsCount;
	objProgramsDraw.programsCount++;
	
	bringToTop(app.id);
	
	return app;
}