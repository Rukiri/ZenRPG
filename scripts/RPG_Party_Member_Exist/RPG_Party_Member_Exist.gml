var list1, list2, map1, map2;

list1 = ds_list_find_value(party_database, argument0);
map1 = string(ds_map_find_value(list1, Actor.Name));

for (var i = 0; i < RPG_Party_Member_Count(); i += 1) {
	list2 = ds_list_find_value(party, i); 
	map2 = string(ds_map_find_value(list2, Actor.Name));	
	
	if (map1 == map2) {
		//Error_Log(map2 + " is already in the party");	
		return 1;
	}
}