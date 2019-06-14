//---------------------------------------------------
// RPG Actor Database Initialize
//---------------------------------------------------

// Variables

globalvar party_group, party_database, party_group_most_recent;

// Initialize Variables

party_group = ds_list_create(); 
party_database = ds_list_create();
party_group_most_recent = -1; 

// Party Enums 

enum Party {
	Name,
	Class,
	Health,
	Max_Health,
	Mana, 
	Max_Mana,
	Attack,
	Defense,
	Mana_Attack,
	Mana_Defense,
	Vitality,
	Agility,
	Luck,
	Level,
	Experience,
}

//---------------------------------------------------
// End Script
//---------------------------------------------------