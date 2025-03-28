/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_enemy_parent) && instance_exists(obj_player)) {
	draw_line(x, y,obj_player.x, obj_player.y)
} else { instance_destroy() }