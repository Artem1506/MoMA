/// @description Insert description here
// You can write your code in this editor

var cell_color = c_white;
if (cell_type == "r_hand") cell_color = c_red;
else if (cell_type == "l_hand") cell_color = c_blue;

draw_rectangle_color(x, y, x + 32, y + 32, cell_color, cell_color, cell_color, cell_color, false);
draw_text(x + 5, y + 5, cell_type);