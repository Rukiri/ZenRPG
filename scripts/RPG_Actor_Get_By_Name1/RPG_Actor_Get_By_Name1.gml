//--------------------------------------------------------------------
// RPG Get Actor Stats
//--------------------------------------------------------------------

var i, size;
size = RPG_Party_Database_Count();

for(i = 0; i <= size; i +=1) {
	if(ds_map_find_value(ds_list_find_value(party_database, i), Actor.Name) == string(argument0)) {
       // Woo! We found the correct index location
	  return i;
    }
}

//--------------------------------------------------------------------
// End Script
//--------------------------------------------------------------------