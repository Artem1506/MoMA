/// @description Insert description here
// You can write your code in this editor

if (global.playerIsInteract == true && solid == true && is_locked == true) {
	if (!instance_exists(obj_checkCoin)) {
	var check_coin_inst = instance_create_layer(x, y-50, "HUD", obj_checkCoin);
		if (check_coin_inst != noone) {
	var result = check_coin_inst.check_result;
	}
	if (result == true) {
		alarm[0] = 121;
		}
	}
}
if (global.playerIsInteract == true && solid == true && is_locked = false){
sprite_index = spr_door1_open;
image_index += 0;
audio_play_sound (snd_door_opening,10,false);
}
