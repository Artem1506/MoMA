/// @description Insert description here
// You can write your code in this editor

var BG_id = layer_get_id("Background");

if (!layer_get_visible(BG_id)) {
	visible = true; 
}

//if (object_exists(obj_dialog_1_4)) {
//	if (obj_dialog_1_4.dialog_action == "add_money") {
//	global.playerMoney = 50;
	//дописать добавление монетки в инвентарь + создать обьект монетку 
//	}
//}

if (obj_dialog_1_4.dialog_action == "leave") {
	var direct = point_direction(x, y, 490, 0);
	var move_x = lengthdir_x(1, direct);
	var move_y = lengthdir_y(1, direct);
	show_debug_message(direct)
	if(point_direction(x, y, 490, 0) > 1) {
		x += move_x;
		y += move_y;
	}
}
if(point_direction(x, y, 490, 0) == 1) {
	instance_destroy()
}

if (obj_dialog_1_4.dialog_action == "mission_done") {
	global.mission_isDone = true;
}
