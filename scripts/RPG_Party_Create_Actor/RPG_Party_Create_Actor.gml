// Stat Variables
var name = argument0; 
//var class = argument1; 
/*
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
*/
var map = ds_map_create();

// Create our Actor
ds_map_add(map, Actor.Name, string(name)); // Actor Name
/*
ds_map_add(map, Actor.Class, string(class)); // Actor Class
ds_map_add(map, Actor.Health, _health); // Actor Health
ds_map_add(map, Actor.Max_Health, max_health); // Actor Max Health
ds_map_add(map, Actor.Mana, mana); // Actor Mana
ds_map_add(map, Actor.Max_Mana, max_mana); // Actor Max Mana
ds_map_add(map, Actor.Attack, attack); // Actor Attack
ds_map_add(map, Actor.Defense, defense); // Actor Defense
ds_map_add(map, Actor.Mana_Attack, mana_attack); // Actor Mana Attack
ds_map_add(map, Actor.Mana_Defense, mana_defense); // Actor Mana Defense
ds_map_add(map, Actor.Vitality, vitality); // Actor Vitality
ds_map_add(map, Actor.Agility, agility); // Actor Agility
ds_map_add(map, Actor.Luck, luck); // Actor Luck
ds_map_add(map, Actor.Level, level); // Actor Level
ds_map_add(map, Actor.Experience, experience); // Actor Experience
*/
ds_list_add(party_database, map);