/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_enemy_parent) && instance_exists(obj_player)) {
	draw_line(self.x, self.y, obj_player.x, obj_player.y)
	show_debug_message(string(self.x))
} else { instance_destroy() }