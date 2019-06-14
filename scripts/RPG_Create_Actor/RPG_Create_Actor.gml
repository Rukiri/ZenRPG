//---------------------------------------------------
// RPG Actor Create
//---------------------------------------------------

// Create a data structure for our actor
var map = ds_map_create();

// Stat Variables
var name = argument0; 
var class = argument1; 
var _health = argument2; 
var max_health = argument2; 
var mana = argument3; 
var max_mana = argument3; 
var attack = argument4
var defense = argument5;
var mana_attack = argument6;
var mana_defense = argument7;
var vitality = argument8;
var agility = argument9;
var luck = argument10;
var level = argument11;
var experience = argument12;

// Now we add it to the database so we don't ever lose it!
ds_list_add(party_database, map); // Now it's there! Safe!
party_group_most_recent = map;           // Flag as most recent, we may refer to this global variable for the map index if we need it

// Create our Actor
RPG_Party_Data_Assign(map, Actor.Name, string(name)); // Actor Name
RPG_Party_Data_Assign(map, Actor.Class, string(class)); // Actor Class
RPG_Party_Data_Assign(map, Actor.Health, _health); // Actor Health
RPG_Party_Data_Assign(map, Actor.Max_Health, max_health); // Actor Max Health
RPG_Party_Data_Assign(map, Actor.Mana, mana); // Actor Mana
RPG_Party_Data_Assign(map, Actor.Max_Mana, max_mana); // Actor Max Mana
RPG_Party_Data_Assign(map, Actor.Attack, attack); // Actor Attack
RPG_Party_Data_Assign(map, Actor.Defense, defense); // Actor Defense
RPG_Party_Data_Assign(map, Actor.Mana_Attack, mana_attack); // Actor Mana Attack
RPG_Party_Data_Assign(map, Actor.Mana_Defense, mana_defense); // Actor Mana Defense
RPG_Party_Data_Assign(map, Actor.Vitality, vitality); // Actor Vitality
RPG_Party_Data_Assign(map, Actor.Agility, agility); // Actor Agility
RPG_Party_Data_Assign(map, Actor.Luck, luck); // Actor Luck
RPG_Party_Data_Assign(map, Actor.Level, level); // Actor Level
RPG_Party_Data_Assign(map, Actor.Experience, experience); // Actor Experience

// Add Actor to Party?
if (argument13 == true) {
	if (RPG_Party_Count() < RPG_Party_Max_Size()) {
		 // Good! There was a slot available! (this is easy)
		ds_list_add(party_group, map);
	} else {
		// Not enough room in our Party
		Error_Log("Well Shucks, there isn't enough room for you in our party!");	
	}
}

// If everything went okay
return 1;

//---------------------------------------------------
// End Script
//---------------------------------------------------