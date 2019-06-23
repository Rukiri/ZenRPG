//var map = ds_list_find_value(party, 0);
//draw_text(0,0, string(ds_map_find_value(map, Actor.Name)));

// Test Draw Active Party
var map, i
for (i=0; i<RPG_Party_Member_Count(); i++) {
map = ds_list_find_value(party,i);
draw_text(6,48, "- Active Party -");
draw_text(6 ,64 +(i * 16), "Actor Name " + ds_map_find_value(map,Actor.Name) + " " + "Menu Slot" + " " + string(i));
}