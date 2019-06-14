//--------------------------------------------------------------------
// RPG Get Actor Stats
//--------------------------------------------------------------------
var i, size;
size = RPG_Party_Database_Count();
for(i = 0;i < size;i += 1) {
	// Look through the indexes of the character database for a match by name.
	if (ds_list_find_value(party_database, i) == argument1) {
		// Woo! We found the correct index location
		return i;
	}
}

Error_Log("Error with Database Index");
return -1;
//--------------------------------------------------------------------
// End Script
//--------------------------------------------------------------------