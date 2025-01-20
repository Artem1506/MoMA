/// @description Insert description here
// You can write your code in this editor

if (global.is_loaded == true) {
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

	var cells_count = array_length_1d(obj_inventory.inventory_cells);
	for (var i = 0; i < cells_count; i++) {
		var section_name = "cell_" + string(i);
		var cell = obj_inventory.inventory_cells[i];
			
		var cell_type = ini_read_string(section_name, "type", "none");
		var cell_type_decode = base64_decode(cell_type);
		cell.cell_type = cell_type_decode;
		
		var item_data = ini_read_string(section_name, "item", undefined);
		var item_data_decode = base64_decode(item_data);
// фигню ниже проверить кажется там лишняя громозятина
		item_data_decode = string_replace_all(item_data_decode, " : ", "\": \"");
		item_data_decode = string_replace_all(item_data_decode, "{ ", "{\"");
		item_data_decode = string_replace_all(item_data_decode, ", ", "\", ");
		item_data_decode = string_replace_all(item_data_decode, " }", "\"}");
		item_data_decode = string_replace_all(item_data_decode, "\"\"", "\"");
		item_data_decode = string_replace_all(item_data_decode, ", ", ", \"");
		if (item_data_decode != "undefined") {
			var item_data_struct = json_parse(item_data_decode);
			cell.item = item_data_struct;	
		}
	}
	/*код ниже нужен для загрузки списка обьектов на сцене, но список он получает в виде 
	ИДишников который процедурно сгенерированы, и получается что а палки в ИНИ файле ИД 11, 
	а в только что открытой комнате у этой же палки ИД 12, а ид 11 у диалога например
	записывать состояния в ини файлы не вариант. 
	var layer1 = ini_read_string("layers", "Instances", undefined);
	var layer1_decode = base64_decode(layer1);
	var layer1_decode_array = json_parse(layer1_decode);
	
	var layer2 = ini_read_string("layers", "Dialog", undefined);
	var layer2_decode = base64_decode(layer2);
	var layer2_decode_array = json_parse(layer2_decode);
	
	var Instances = layer_get_id("Instances")
	var current_layer1 = layer_get_all_elements(Instances);

	var contain = []

	for (var i = 0; i < array_length(current_layer1); i++) {
		var elemen = current_layer1[i];

		if (array_contains(layer1_decode_array, elemen)) {
			array_push(contain, elemen);
		} else {
		instance_destroy(elemen); 
		}
	}*/
	
	ini_close()
	global.is_loaded = false; 
	
} 
