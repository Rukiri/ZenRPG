//--------------------------------------------------------------------
// RPG Finite State Machines
// Usage: 
// State_Machine_Free_Memory()
//--------------------------------------------------------------------

ds_list_clear(state_list);

var xx, size;
size = State_Machine_Count(); // Get the size 
for (xx = 0; xx < size; xx++) {
	ds_map_destroy(ds_list_find_value(state_list, xx));
}

ds_list_destroy(state_list);

//--------------------------------------------------------------------
// End Script
//--------------------------------------------------------------------