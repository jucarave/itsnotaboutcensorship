function isPointInRect(px, py, rx, ry, w, h){
	return px >= rx && px < rx + w && py >= ry && py < ry + h;
}