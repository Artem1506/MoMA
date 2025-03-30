/// @description attack delay
// You can write your code in this editor

if (attack_dis >= distance_to_object(obj_player)) {
	hit = true;
	cam_siz = 0.8;
	cam_alph = 0.5;
	show_debug_message("hit")
	global.playerHp -= 1;
}
	move_speed = 1;
	//hit = false;
	sprite_index = spr_sebas_back
	show_debug_message("cooldown")
	alarm[1] = attack_cooldown;
