/// @description attack delay
// You can write your code in this editor

if (attack_dis >= distance_to_object(obj_player)) {
	show_debug_message("hit")
	global.playerHp -= 1;
}
	move_speed = 0.5;
	sprite_index = spr_sebas_back
	show_debug_message("cooldown")
	//alarm[1] = attack_cooldown;
	alarm[1] = 120;
//}
