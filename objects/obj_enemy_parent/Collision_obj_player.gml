/// @description Insert description here
// You can write your code in this editor

if (obj_player.is_attack == true) {
	if (alert == true) {
		partSys_blood = part_system_create(ps_blood_1);
		part_system_position(partSys_blood, self.x+10, self.y,)
		HP -= 1;
		obj_player.is_attack = false
		draw_text(x, y, "-1")
		show_debug_message("!!!!!!!!!!!")
	}
	if (alert == false) {
		//partSys_blood_crit = part_system_create(ps_blood_2);
		//part_system_position(partSys_blood_crit, self.x, self.y,)
		HP -= 3;
		obj_player.is_attack = false
		audio_play_sound(snd_wilhelm_scream, 1, false);
		draw_sprite(spr_crit_scull, floor(image_index), x, y-45); //закастыльть что бы рисовать в событии draw
		//draw_text(x, y, "Crit!");
		show_debug_message("CRIT!!!!!!!!!!!")
	}
}
		
if (obj_player.is_kick == true) {
	is_agresive = true;
	alert = true;
	alert_dis = alert_dis/10;
	ready_attack = false
	move_speed = move_speed/10;
	alarm[2] = stun_time;
}