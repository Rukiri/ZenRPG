//-------------------------------------------------------
// RPG Actor Database
// RPG_Data_Assign(map, key, value)
//-------------------------------------------------------

if (ds_map_exists(argument0, argument1)) {
	return ds_map_replace(argument0, argument1, argument2);
} else {
	return ds_map_add(argument0, argument1, argument2);	
}

//-------------------------------------------------------
// End Script
//-------------------------------------------------------