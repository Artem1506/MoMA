/// @description Insert description here
// You can write your code in this editor

var rHand = obj_inventory.inventory_cells[0];
show_debug_message(rHand.item)
var lHand = obj_inventory.inventory_cells[1];
show_debug_message(lHand.item)
var aHand = obj_inventory.inventory_cells[2];
show_debug_message(aHand.item)
var sHand = obj_inventory.inventory_cells[3];
show_debug_message(sHand.item)

if (global.is_loaded == true) {
	instance_destroy(obj_player)
	ini_open("saveGame.ini");
	
	var x_position = ini_read_real("position", "location_x", 5);
	var y_position = ini_read_real("position", "location_y", 250);
	instance_create_layer(x_position, y_position, "Instances", obj_player);
	global.playerHp = ini_read_real("player", "hp", 2);
	global.playerMoney = ini_read_real("player", "money", 0);

	var cells_count = array_length_1d(obj_inventory.inventory_cells);
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
		}
	
	ini_close()
	global.is_loaded = false; 
	
} 
