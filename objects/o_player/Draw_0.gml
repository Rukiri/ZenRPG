draw_sprite_ext(event_sprite, image_index, floor(x), floor(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);

var map, i, _y=64;
for (i=0; i<State_Machine_Count(); i++) {
map = ds_list_find_value(state_list,i);
draw_text(x,y+_y, "State Name " + ds_map_find_value(map,State.name) + " " + string(i));
_y+=32;
}
draw_text(x,y+_y,"Current State: " + state_name); // current state;
