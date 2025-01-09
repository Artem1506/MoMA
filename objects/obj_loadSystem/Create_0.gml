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
	var playerHp = ini_read_string("player", "hp", 2);
	global.playerHp = base64_decode(playerHp);
	var playerMoney = ini_read_string("player", "money", 0);
	global.playerMoney = base64_decode(playerMoney);

// проблема с чтением записи из ини файла, читает до " дальше считает строку законченой
// проблема с заполнением инвентаря из данных заполняет все ячейки
	/*var cells_count = array_length_1d(obj_inventory.inventory_cells);
	for (var i = 0; i < cells_count; i++) {
		var section_name = "cell_" + string(i);
	    if (ini_key_exists(section_name, "type")) {
			var cell = obj_inventory.inventory_cells[i];
			var cell_type = ini_read_string(section_name, "type", "none");
			var item_ico = ini_read_string(section_name, "ico", undefined);
			
			var item_data = ini_read_string(section_name, "item", undefined);
	
            cell.cell_type = cell_type;
            cell.itemIco = item_ico;
            cell.item = item_data;
			show_debug_message(string(cell.item))
            }
		}*/
	
	ini_close()
	global.is_loaded = false; 
	
} 
