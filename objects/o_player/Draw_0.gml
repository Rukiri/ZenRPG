draw_sprite_ext(event_sprite, image_index, floor(x), floor(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);

var map, i, _y=64;
for (i=0; i<State_Machine_Count(); i++) {
map = ds_list_find_value(state_list,i);
draw_text(x,y+_y, "State Name " + ds_map_find_value(map,State.name) + " " + string(i));
_y+=32;
}
draw_text(x,y+_y,"Current State: " + state_name); // current state;

// in party only stats
for (var i = 0; i < RPG_Party_Count(); i += 1) {
	var map = RPG_Party_Get_Stats_By_Index(i, Actor.Name);
	draw_text(6, 0, "-Party Members-");
	draw_text(6, 16+i*16, "Name:" + " " + string(map) + " " + "Index in Party: " + "" + string(ds_list_find_value(party_group, i)));
}

draw_text(6,64, RPG_Party_Member_Exists(0));