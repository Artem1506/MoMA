/// @description Insert description here
// You can write your code in this editor

if (global.is_paused == true) {
	draw_set_alpha(0.8);
	draw_sprite(spr_pauseLogo, 0, 100, 50)
	draw_set_color(make_color_rgb(10, 0, 10));
	draw_rectangle(0, 0, 684, 382, false);
}