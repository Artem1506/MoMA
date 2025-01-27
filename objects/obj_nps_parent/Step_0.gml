/// @description Insert description here
// You can write your code in this editor

var BG_id = layer_get_id("Background");

if (!layer_get_visible(BG_id)) {
	visible = true; 
}

if (obj_dialog_1_4.dialog_action == "add_money") {
	global.playerMoney = 50;
}

if (obj_dialog_1_4.dialog_action == "leave") {
	is_moving = true }
if (is_moving) {
	sprite_index = spr_sebas_back; 
    var target_x = 490;
    var target_y = 0;
    var distance = point_distance(x, y, target_x, target_y);
    if (distance > 1) {
        var direct = point_direction(x, y, target_x, target_y);
        x += lengthdir_x(0.7, direct);
        y += lengthdir_y(0.7, direct);
    } else {
        instance_destroy();
    }
}
