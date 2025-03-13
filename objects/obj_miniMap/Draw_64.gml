/// @description Insert description here
// You can write your code in this editor

draw_self();

var scale = 0.1;

var minimap_x = x; // Позиция obj_minimap в комнате по X
var minimap_y = y; // Позиция obj_minimap в комнате по Y

var objects_to_display = [obj_player, obj_door_1, obj_door_2];
for (var i = 0; i < array_length(objects_to_display); i++) {
	var obj_type = objects_to_display[i];
	
with (obj_type) {
	var mini_x = minimap_x + (x * scale);
	var mini_y = minimap_y + (y * scale);
	
	if (object_index == obj_player) {
		draw_set_color(c_blue);
	} else if (object_index == obj_door_1 || object_index = obj_door_2) {
		draw_set_color(c_yellow);
	} else if (object_index == obj_enemy) {
            draw_set_color(c_red); 
    }

draw_circle(mini_x, mini_y, 2, false);
}
}
