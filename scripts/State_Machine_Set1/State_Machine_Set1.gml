//--------------------------------------------------------------------
// RPG Finite State Machines
// Usage: 
// State_Machine_Set("Name_Of_State");
//--------------------------------------------------------------------

// Variables Needed
var xx, state_size;

state_size = State_Machine_Count(); // Returns the number of States in our Database. 

// Loops to see if the State is in our Database if not will return an error message
for (xx = 0; xx< state_size; xx++) {
	if (ds_map_find_value(ds_list_find_value(state_list, xx), State.name) == string(argument0)) {
		// The State was in our database and you can set the State
		state_name = string(argument0);
		
		return xx;  
	} else {
		// Display Error Message
		Error_Log("Hey bud, I don't think this state was in our database.");
		break;
	}
}

//--------------------------------------------------------------------
// End Script
//--------------------------------------------------------------------