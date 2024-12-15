/// @description Insert description here
// You can write your code in this editor

draw_self();

if (is_dragging && itemIco != noone) {
	draw_sprite(itemIco, 0 , mouse_x, mouse_y);
} else if (itemIco != noone) {
	draw_sprite(itemIco,0,x,y);
} 
