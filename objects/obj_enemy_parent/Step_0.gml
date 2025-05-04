/// @description Insert description here
// You can write your code in this editor

if (HP <= 0) {
	move_speed = 0
	solid = false
	//image_index = 0
	sprite_index = a_death;
	//audio_play_sound(s_death, 10, false)
	if (image_index >= 6.5) {
		//solid = false;
		instance_destroy()
	}
}

pre_x = xprevious;

if (is_agresive == true) {
	//alert_dis = (global.playerNoiseLvl * global.playerNoiseLvl * 2);
	
	check_player();
	if (alert == true && attack_dis >= distance_to_object(obj_player) && ready_attack == true) {
		attacking = true;
		ready_attack = false
		//draw_sprite(a_attack_1, anim_index, x,y)
		image_index = 0;
		sprite_index = a_attack_1;
		move_speed = 0;
		//ready_attack = false;
		alarm[0] = attack_delay;
	}
}
