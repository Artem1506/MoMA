/// @description Insert description here
// You can write your code in this editor

draw_self();

if (global.playerIsInteract == true && 
solid == true && is_locked == true && 
collision_player == true) {
	draw_sprite(spr_cloud, 0, x, y);
	draw_set_font(f_rus_default);
	draw_set_color(c_black);
	draw_text(x, y-40, "Заперто");
}

if (keyboard_check(ord("R")) && 
is_locked == true && 
collision_player == true) {
	if (haveKey != true) { 
		draw_sprite(spr_cloud, 0, x, y);
		draw_set_font(f_rus_default);
		draw_set_color(c_black);
		draw_text(x+5, y-42, "Нужна");
		draw_text(x, y-33, "отмычка");
	}
}
