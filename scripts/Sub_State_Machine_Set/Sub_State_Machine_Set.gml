//--------------------------------------------------------------------
// RPG Finite State Machines
// Usage: 
// Sub_State_Machine_Set("Name_Of_State");
//--------------------------------------------------------------------

// Variables Needed
var xx, state_size;

state_size = Sub_State_Machine_Count(); // Returns the number of States in our Database. 

// Loops to see if the State is in our Database if not will return an error message
for (xx = 0; xx< state_size; xx++) {
	if (ds_map_find_value(ds_list_find_value(sub_state_list, xx), Sub_State.name) == string(argument0)) {
		// The State was in our database and you can set the State
		sub_state_name = string(argument0);
		
		return xx;  
	}
}

// Display Error Message
Error_Log("Hey bud, I don't think this sub state was in our database.");
	
return -1;

//--------------------------------------------------------------------
// End Script
//--------------------------------------------------------------------