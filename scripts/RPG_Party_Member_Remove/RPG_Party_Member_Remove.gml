//--------------------------------------------------------------------
// RPG Party Member Add
//--------------------------------------------------------------------

// Checks to see if the Actor is already in the party and removes him
if (RPG_Party_Member_exists(argument0)) {
	ds_list_delete(party_group, RPG_Actor_Info(RPG_Actor_Get_By_Index(argument0)));
	return 1;
} else {
	Error_Log("Index doesn't exist");
	return -1;	
}

//--------------------------------------------------------------------
// End Script
//--------------------------------------------------------------------