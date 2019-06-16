//--------------------------------------------------------------------
// RPG Party Member Add
//--------------------------------------------------------------------

// Check to see if we have enough room.
if (RPG_Party_Count() >= RPG_Party_Max_Size()) {
	Error_Log("NOOOOOOO");
	return -1;
}

// Checks to see if the Actor is already in the party and if not adds him to the party
if (RPG_Party_Member_Exists(argument0)) {
	Error_Log("Is in party");	
	return -1;
} else {
	ds_list_add(party_group, RPG_Actor_Info(RPG_Actor_Get_By_Index(argument0)));
	return 1;	
}

//--------------------------------------------------------------------
// End Script
//--------------------------------------------------------------------