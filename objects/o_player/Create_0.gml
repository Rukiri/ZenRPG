// Set our sprite
event_sprite = spr_test;

test = -1;

RPG_Actor_Initialize();
RPG_Create_Actor("Harold", "Dummy", 50, 5, 3, 2, 4, 3, 6, 8, 5, 1, 0, false);
RPG_Create_Actor("Goku", "Saiyan", 50, 5, 3, 2, 4, 3, 6, 8, 5, 1, 0, true);
RPG_Create_Actor("Cloud", "Knight", 50, 5, 3, 2, 4, 3, 6, 8, 5, 1, 0, true);
State_Machine_Ini();
State_Machine_Create("test");
State_Machine_Create("test1");
State_Machine_Create("test2");
