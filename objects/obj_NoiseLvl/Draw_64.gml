/// @description Insert description here
// You can write your code in this editor

var y2 = global.playerNoiseLvl * 5.5

draw_set_alpha(0.4)
draw_set_color(c_white)
draw_rectangle(x, y, x+41, y-5-y2, false)
draw_set_alpha(1)

draw_self()