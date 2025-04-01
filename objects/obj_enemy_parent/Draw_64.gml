/// @description Insert description here
// You can write your code in this editor

if (hit == true) {
	if (cam_siz < 1) { cam_siz += 0.01 }
	camera_set_view_size(view_camera[0], 682*cam_siz, 384*cam_siz)
	
	if (anim_index != noone && anim_index < 32) { anim_index += 1 }
	show_debug_message(string(anim_index))
	if (anim_index < 32) { 
		draw_sprite(spr_player_damage_in, anim_index, 0, 0); 
	}
}

	