/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (global.playerIsInteract == true && solid == true && is_locked = false) {
	solid = false;
	sprite_index = spr_door2_open;
	audio_play_sound (snd_door_opening,10,false);
}
