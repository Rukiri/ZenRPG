//var map = ds_list_find_value(party, 0);
//draw_text(0,0, string(ds_map_find_value(map, Actor.Name)));
draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
// Test Draw Active Party
var map, i
for (i=0; i<RPG_Party_Member_Count(); i++) {
map = ds_list_find_value(party,i);
var leader = ds_list_find_value(party, 0);
party_leader = leader;
if ds_map_find_value(party_leader,Actor.Name) == "Tiffany" {
	sprite_index = spr_player_start;
}
draw_text(6,48, "- Party Leader -" + " " + ds_map_find_value(party_leader,Actor.Name));
draw_text(6,64, "- Active Party -");
draw_text(6 ,80 +(i * 16), "Actor Name " + ds_map_find_value(map,Actor.Name) + " " + "Menu Slot" + " " + string(i));
}
// t
