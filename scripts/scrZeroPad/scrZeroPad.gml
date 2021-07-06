function zeroPad(number, length, left){
	var ret = string(number);
	
	while (string_length(ret) < length) {
		if (left) {
			ret = "0" + ret;
		} else {
			ret = ret + "0";
		}
	}
	
	return ret;
}