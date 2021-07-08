function getAppDepth(appId){
	var appDepth = noone;
	
	with (objProgramsDraw) {
		for (var i=0;i<programsCount;i++) {
			var ins = programs[# 0, i];
			if (ins == appId) {
				appDepth = programs[# 1, i];
				break;
			}
		}
	}
	
	return appDepth;
}