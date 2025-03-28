/// @description Insert description here
// You can write your code in this editor

if (obj_player.is_attack == true) {
	if (alert == true) {
		HP -= 1;
		obj_player.is_attack = false
		draw_text(x, y, "-1")
		show_debug_message("!!!!!!!!!!!")
	}
	if (alert == false) {
		HP -= 3;obj_player.is_attack = false
		draw_text(x, y, "Crit!");
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