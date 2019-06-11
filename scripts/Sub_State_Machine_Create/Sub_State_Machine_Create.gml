//--------------------------------------------------------------------
// RPG Finite State Machines
// Usage: 
// Sub_State_Machine_Create("Name_Of_State");
//--------------------------------------------------------------------

var map = ds_map_create(); // Create our data for the state machine
ds_list_add(sub_state_list, map); // Add our State List to our Data Map
ds_map_add(map, Sub_State.name, string(argument0)); // Adds our State to our Database

// Returns 1 as long as everything went okay!
return 1;

//--------------------------------------------------------------------
// End Script
//--------------------------------------------------------------------