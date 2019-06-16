//--------------------------------------------------------------------
// RPG Get Party Stats By Index
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

argument0 = RPG_Party_Info(RPG_Party_Get_By_Index(argument0));

return ds_map_find_value(argument0, argument1);

//--------------------------------------------------------------------
// End Script
//--------------------------------------------------------------------