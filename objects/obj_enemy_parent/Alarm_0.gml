/// @description attack delay
// You can write your code in this editor

if (attack_dis >= distance_to_object(obj_player) && attacking == true) {
	hit = true;
	cam_siz = 0.9;
	anim_index = 0;
	show_debug_message("hit")
	global.playerHp -= 1;
}
	move_speed = 1;
	attacking = false;
	//hit = false;
	sprite_index = spr_swordman_idle
	show_debug_message("cooldown")
	alarm[1] = attack_cooldown;
