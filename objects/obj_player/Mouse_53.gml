/// @description Insert description here
// You can write your code in this editor

if (attack_cooldown == false) {
	is_attack = true;
	show_debug_message(string(is_attack))
	show_debug_message(string(obj_enemy_parent.HP))
	attack_cooldown = true;
	alarm[2] = 60;	
}
