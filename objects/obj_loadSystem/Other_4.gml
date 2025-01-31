/// @description Insert description here
// You can write your code in this editor

if (global.is_loaded == true) {
	
	instance_destroy(obj_player);
	
	ini_open("saveGame.ini");
	
	var x_position = ini_read_string("position", "location_x", 5);
	var x_position_decode = base64_decode(x_position);
	var y_position = ini_read_string("position", "location_y", 250);
	var y_position_decode = base64_decode(y_position);
	instance_create_layer(x_position_decode, y_position_decode, "Instances", obj_player);
	var playerMission = ini_read_string("player", "mission", false);
	global.mission_isDone = base64_decode(playerMission);
	var playerHp = ini_read_string("player", "hp", 2);
	global.playerHp = base64_decode(playerHp);
	var playerMoney = ini_read_string("player", "money", 0);
	global.playerMoney = base64_decode(playerMoney);
	global.death = ini_read_real("player", "death", 0);

	var cells_count = array_length_1d(obj_inventory.inventory_cells);
	for (var i = 0; i < cells_count; i++) {
		var section_name = "cell_" + string(i);
		var cell = obj_inventory.inventory_cells[i];
		
		var item_data = ini_read_string(section_name, "item", undefined);
		var item_data_decode = base64_decode(item_data);
		var item_data_struct = json_parse(item_data_decode);
		cell.itemData = item_data_struct;	
	}
	
	var current_instances = ini_read_string("instances", "objects", undefined);
	var instances_decode = base64_decode(current_instances);
	var instances_decode_struct = json_parse(instances_decode);
	
	if (instances_decode_struct.dialog_1_1 == false) { instance_destroy(obj_dialog_1_1) }
	if (instances_decode_struct.dialog_1_2 == false) { instance_destroy(obj_dialog_1_2) }
	if (instances_decode_struct.dialog_1_3 == false) { instance_destroy(obj_dialog_1_3) }
	if (instances_decode_struct.dialog_1_4 == false) { instance_destroy(obj_dialog_1_4) }
	if (instances_decode_struct.dialog_1_5 == false) { instance_destroy(obj_dialog_1_5) }
	if (instances_decode_struct.botle == false) { instance_destroy(obj_botle) }
	if (instances_decode_struct.botleEmpty == false) { instance_destroy(obj_botleEmpty) }
	if (instances_decode_struct.stick == false) { instance_destroy(obj_stick) }
	if (instances_decode_struct.key == false) { instance_destroy(obj_key) }
		
	ini_close()
	global.is_loaded = false; 
	
} 
