for (i = 0; i < ds_list_size(party); i += 1) {
		var list = ds_list_find_value(party, i); 
		var index = ds_list_find_index(party, list);
		
		if (index == argument0) {
			return 1;
		}
		
}

return -1;