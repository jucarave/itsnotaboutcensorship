function loc(key){
	if (is_array(key)) {
		var str = global.LANG[? key[0]];
		var len = array_length_1d(key);
		
		for (var i=1;i<len;i++) {
			var ind = string(i - 1);
			str = string_replace(str, "{" + ind + "}", key[i]);
		}
		
		return str;
	}

	return global.LANG[? key];
}