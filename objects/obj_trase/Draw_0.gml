/// @description Insert description here
// You can write your code in this editor

if (object_exists(obj_enemy_parent)) {
	draw_line(x, y,obj_player.x, obj_player.y)
} else { instance_destroy() }