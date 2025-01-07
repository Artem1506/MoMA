/* закоментил потому что вся логика в обьектах и тут мазня надо делать нормальные скрипты 
var event = argument0;
var result = argument1;

var url = "https://api.sheetbest.com/sheets/90b857c3-c26c-4ce5-9f85-d956d835092c";

var current_date_time = date_current_datetime();
var system_date = date_date_string(current_date_time) + " " + date_time_string(current_date_time);
var platform = string(os_type);
var screen_width = display_get_width();
var window_width = window_get_width();

var post_data_map = ds_map_create();




ini_open("saveGame.ini");
	
var loadLvl = ini_read_string("position", "room", lvl_apart);
var room_map = ds_map_create();
room_map[? "lvl_apart"] = lvl_apart;
var room_id = room_map[? loadLvl];
room_goto(room_id);
	
	instance_destroy(obj_player)
	if (!object_exists(obj_player)) { show_debug_message("destroed") }
	var x_position = ini_read_real("position", "location_x", 5);
	var y_position = ini_read_real("position", "location_y", 250);
	instance_create_layer(x_position, y_position, "Instances", obj_player);
	if (object_exists(obj_player)) { show_debug_message("created") }
	ini_read_real("player", "hp", 2);
	ini_read_real("player", "money", 0);
/*
	var cells_count = array_length_1d(obj_inventory.inventory_cells);
	for (var i = 0; i < cells_count; i++) {
		var section_name = "cell_" + string(i);
	    if (ini_key_exists(section_name, "type")) {
			var cell_type = ini_read_string(section_name, "type", "inventory");
			var item_name = ini_read_string(section_name, "item_name", "empty"); 
			var item_quantity = ini_read_real(section_name, "item_quantity", 0); 
			var cell = obj_inventory.inventory_cells[i];
	        cell.cell_type = cell_type;
            cell.item = {};
            cell.item.name = item_name;
            cell.item.quantity = item_quantity;
			}
		}*/
	ini_close()
