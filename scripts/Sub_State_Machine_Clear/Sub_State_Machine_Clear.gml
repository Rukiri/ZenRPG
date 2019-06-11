//--------------------------------------------------------------------
// RPG Finite State Machines
// Usage: 
// Sub_State_Machine_Clear();
//--------------------------------------------------------------------

var xx, size;
size = Sub_State_Machine_Count(); // Get the size 
for (xx = 0; xx < size; xx++) {
	ds_map_destroy(ds_list_find_value(sub_state_list, xx));
}

ds_list_destroy(sub_state_list);

//--------------------------------------------------------------------
// End Script
//--------------------------------------------------------------------