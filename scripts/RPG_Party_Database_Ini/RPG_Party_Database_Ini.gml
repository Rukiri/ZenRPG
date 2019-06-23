globalvar party, party_database;

party = ds_list_create();
party_database = ds_list_create();

// Party Enums 

enum Actor {
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