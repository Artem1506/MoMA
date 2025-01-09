/// @description Insert description here
// You can write your code in this editor

if (sprite_index == spr_door2_open) {
	solid = false; 
}

var bg1 = layer_get_id("Background")
var bg2 = layer_get_id("Background_1")
if (solid == false) {
	layer_set_visible(bg1, false);
	//layer_set_visible(bg2, true);
}

