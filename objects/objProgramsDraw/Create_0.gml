var maxPrograms = 20;
programs = ds_grid_create(2, maxPrograms);

ds_grid_clear(programs, 1000);

// register programs
programsCount = 0;
with (objProgram) {
	objProgramsDraw.programs[# 0, objProgramsDraw.programsCount] = id;
	objProgramsDraw.programs[# 1, objProgramsDraw.programsCount] = objProgramsDraw.programsCount;
	
	objProgramsDraw.programsCount++;
}
