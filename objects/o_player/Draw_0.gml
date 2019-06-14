draw_sprite_ext(event_sprite, image_index, floor(x), floor(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);

var map, i, _y=64;
for (i=0; i<State_Machine_Count(); i++) {
map = ds_list_find_value(state_list,i);
draw_text(x,y+_y, "State Name " + ds_map_find_value(map,State.name) + " " + string(i));
_y+=32;
}
draw_text(x,y+_y,"Current State: " + state_name); // current state;

// in party only stats
for (var i = 0; i < RPG_Party_Database_Count(); i += 1) {
	var map = RPG_Actor_Get_Stats_By_Index(i, Actor.Class);
	draw_text(6, i*16, string(map));
}

//draw_text(6,16, string(test));
/*
var datamap = ds_list_find_value(party_database, 2)
draw_text(6,16, ds_list_find_value(party_database, i));
ds_map_replace(datamap, Actor.Name, "Dummy");
var datamap1 = ds_list_find_value(party_database, 1)
draw_text(6,32, string(ds_map_find_value(datamap1, Actor.Name)));
ds_map_replace(datamap1, Actor.Name, "Not Cloud");
draw_text(6,48, string(ds_map_find_value(datamap1, Actor.Class)));
*/