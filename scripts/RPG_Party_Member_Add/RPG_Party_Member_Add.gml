if RPG_Party_Member_Exist(argument0) == true {
	return 0;
} else {
	ds_list_add(party, ds_list_find_value(party_database, argument0));
	return 1;
}