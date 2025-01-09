/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (global.playerIsInteract == true && solid == true && is_locked = false){
	sprite_index = spr_door1_open;
	solid = false;
	image_index += 0;
	audio_play_sound (snd_door_opening,10,false);
}
