/// @description Insert description here
// You can write your code in this editor
/*
show_debug_message("obj_inventory")
show_debug_message(string(instance_exists(obj_inventory)))
//show_debug_message(string(instance_exists(obj_inventory.inventory_cells)))


if (global.is_loaded == true && instance_exists(obj_inventory)) {
	instance_destroy(obj_player);
	instance_destroy(obj_dialog_1_1);
	
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

// проблема с чтением записи из ини файла, читает до " дальше считает строку законченой
// проблема с заполнением инвентаря из данных заполняет все ячейки
	var cells_count = array_length_1d(obj_inventory.inventory_cells);
	for (var i = 0; i < cells_count; i++) {
		var section_name = "cell_" + string(i);
	    if (ini_key_exists(section_name, "type")) {
			var cell = obj_inventory.inventory_cells[i];
			var cell_type = ini_read_string(section_name, "type", "none");
			var cell_type_decode = base64_decode(cell_type);
			var item_ico = ini_read_string(section_name, "ico", undefined);
			var item_ico_decode = base64_decode(item_ico);
			var item_ico_decode_index = asset_get_index(item_data_decode);
			var item_data = ini_read_string(section_name, "item", undefined);
			var item_data_decode = base64_decode(item_data);
	
            cell.cell_type = cell_type_decode;
            cell.itemIco = item_ico_decode_index;
            cell.item = item_data_decode;
			show_debug_message(string(cell.item))
            }
		}
	
	ini_close()
	global.is_loaded = false; 
	
} else { alarm[0] = 1 }
