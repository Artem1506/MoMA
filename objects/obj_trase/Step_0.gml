/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_enemy_parent)) {
	image_xscale = obj_enemy_parent.image_xscale;
	y = obj_enemy_parent.y-16;
	if (image_xscale == 1) { x = obj_enemy_parent.x+16; }
	if (image_xscale == -1) { x = obj_enemy_parent.x-16; }

	if (!collision_line(x, y,obj_player.x, obj_player.y, obj_blockVolium_horizontal, false, true) &&
	!collision_line(x, y,obj_player.x, obj_player.y, obj_enemy_parent, false, true)) {
		var distance = point_distance(x, y, obj_player.x, obj_player.y);
		if (distance <= obj_enemy_parent.vis_dis && global.playerIsShadow == false)  {
			obj_enemy_parent.alert = true
		}
	}
} else { instance_destroy() }
