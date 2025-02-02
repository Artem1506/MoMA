/// @description Insert description here
// You can write your code in this editor

if (layer_exists(global.gameOver_dialog)) {
	draw_set_color(c_red)
	draw_text(404, 279, string(global.death))
	
	var alpha = -1/global.death + 1; 
	//гипербола чем больше колличество смертей тем сильнее затемнение 
	draw_set_alpha(alpha);
	draw_rectangle(0, 0, 684, 382, false);
}
