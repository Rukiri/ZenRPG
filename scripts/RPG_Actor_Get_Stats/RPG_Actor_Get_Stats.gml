//--------------------------------------------------------------------
// RPG Get Actor Stats
/*
	Argument 1 must be
	Actor.Name
	Actor.Class
	Actor.Health
	Actor.Max_Health
	Actor.Mana,
	Actor.Max_Mana
	Actor.Attack
	Actor.Defense
	Actor.Mana_Attack
	Actor.Mana_Defense
	Actor.Vitality
	Actor.Agility
	Actor.Luck
	Actor.Level
	Actor.Experience
*/
//--------------------------------------------------------------------

var map = RPG_Actor_Get_Character_Index(argument0);

return ds_map_find_value(map, argument1);

//--------------------------------------------------------------------
// End Script
//--------------------------------------------------------------------