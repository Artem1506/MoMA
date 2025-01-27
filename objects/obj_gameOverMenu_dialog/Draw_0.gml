/// @description Insert description here
// You can write your code in this editor

show_debug_message("!!!!!")
draw_set_color(c_red)
draw_text(404, 279, string(global.death))
	
	var alpha = -1/global.death + 1; //гипербола чем больше колличество смертей тем сильнее затемнение 
	show_debug_message(alpha)
	draw_set_alpha(alpha);
	draw_rectangle(0, 0, 684, 382, false);
	//draw_sprite(spr_pauseLogo, 0, 100, 50)
	//draw_set_color(make_color_rgb(10, 0, 10));
	//draw_rectangle(0, 0, 684, 382, false);