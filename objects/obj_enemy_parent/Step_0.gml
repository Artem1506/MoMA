/// @description Insert description here
// You can write your code in this editor

if (HP <= 0) {
	move_speed = 0
	sprite_index = a_death
	audio_play_sound(s_death, 10, false)
	if (image_index >= 7) {
		solid = false;
		instance_destroy()
	}
}

pre_x = xprevious;

if (is_agresive == true) {
	alert_dis = (global.playerNoiseLvl * global.playerNoiseLvl * 2);
	
	check_player();
	if (alert == true && attack_dis >= distance_to_object(obj_player) && ready_attack == true) {
		sprite_index = spr_playerStayR;
		move_speed = 0;
		ready_attack = false
		alarm[0] = attack_delay;
	}
}
