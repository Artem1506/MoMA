/// @description Insert description here
// You can write your code in this editor

if (HP <= 0) {
	instance_destroy()
}

if (is_agresive == true) {
	alert_dis = global.playerAgroDistance * 20;
	check_player();
	//show_debug_message(string(distance_to_object(obj_player)))
	if (attack_dis >= distance_to_object(obj_player) && ready_attack == true) {
		sprite_index = spr_sebas_stay;
		move_speed = 0;
		ready_attack = false
		//show_debug_message("111")
		alarm[0] = attack_delay;
		//alarm[0] = 60;
	}
		
}