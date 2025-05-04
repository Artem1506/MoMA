/// @description Insert description here
// You can write your code in this editor

if (incoming_dmg == true && attacking == false) { sprite_index = a_damage }

if (obj_player.is_attack == true) {
	if (alert == true) {
		incoming_dmg = true;
		partSys_blood = part_system_create(ps_blood_1);
		part_system_position(partSys_blood, self.x, self.y-50,)
		HP -= 1;
		//obj_player.is_attack = false
		//draw_text(x, y, "-1")
		show_debug_message("!!!!!!!!!!!")
		alarm[3] = 18;
	}
	if (alert == false) {
		incoming_dmg = true;
		//partSys_blood_crit = part_system_create(ps_blood_2);
		//part_system_position(partSys_blood_crit, self.x, self.y,)
		HP -= 3;
		//obj_player.is_attack = false
		audio_play_sound(s_damage_crit, 1, false);
		draw_sprite(spr_crit_scull, floor(image_index), x, y-45); //закастыльть что бы рисовать в событии draw
		//draw_text(x, y, "Crit!");
		alert = true;
		show_debug_message("CRIT!!!!!!!!!!!")
		alarm[3] = 18;
	}
}
if (obj_player.is_kick == true) {
	incoming_dmg = true;
	is_agresive = true;
	alert = true;
	alert_dis = alert_dis/10;
	ready_attack = false
	attacking = false
	move_speed = move_speed/10;
	show_debug_message("stun!!!!!!!!!!")
	alarm[3] = 18;
	alarm[2] = stun_time; 
}