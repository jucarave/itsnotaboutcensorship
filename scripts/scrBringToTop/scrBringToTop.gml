function bringToTop(appId){
	var appDepth = getAppDepth(appId);
	
	with (objProgramsDraw) {
		var app;
		var maxDepth = appDepth;

		for (var i=0;i<programsCount;i++) {
			var ins = programs[# 0, i];
			if (!ins.visible) { continue; }
			
			if (ins == appId) {
				app = i;
			} else {
				maxDepth = max(programs[# 1, i], maxDepth);
				ins.active = false;
				
				if (programs[# 1, i] >= appDepth) {
					programs[# 1, i] -= 1;
				}
			}
		}
	
		programs[# 1, app] = maxDepth;
	}
}