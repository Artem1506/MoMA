/// @description Insert description here
// You can write your code in this editor

if (obj_player.is_attack == true) {
	HP -= 1;
	obj_player.is_attack = false
	draw_text(x, y, "-1")
	show_debug_message("!!!!!!!!!!!")
}
