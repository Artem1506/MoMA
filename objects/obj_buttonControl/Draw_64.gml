/// @description Insert description here
// You can write your code in this editor

/// @description Creates a scrollable text box

if (spawn_GUI == true) {
	draw_sprite(spr_keymap_BG, 0, 0, 0);
}	
if (keyboard_check_pressed(vk_escape)) {
		spawn_GUI = false;
}
