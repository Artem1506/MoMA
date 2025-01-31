/// @description Insert description here
// You can write your code in this editor

ini_open("saveGame.ini");
var id_gamer = base64_encode(global.idGamer);
ini_write_string("gamer", "id", id_gamer);
var obj_name = base64_encode(object_get_name(object_index));
ini_write_string("checkpoint", "id", obj_name);
var mission_isDone = base64_encode(global.mission_isDone);
ini_write_string("player", "mission", mission_isDone);
var playerHp = base64_encode(global.playerHp);
ini_write_string("player", "hp", playerHp);
var playerMoney = base64_encode(global.playerMoney);
ini_write_string("player", "money", playerMoney);
ini_write_real("player", "death", global.death);

for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
	var cell = obj_inventory.inventory_cells[i];
	var section_name = "cell_" + string(i); 
	var cell_item = base64_encode(json_stringify(cell.itemData));
	ini_write_string(section_name, "item", cell_item);
}

var currentRoom = base64_encode(room_get_name(room));
ini_write_string("position", "room", currentRoom);
var obj_x = base64_encode(obj_player.x);
var obj_y = base64_encode(obj_player.y);
ini_write_string("position", "location_x", obj_x);
ini_write_string("position", "location_y", obj_y);

current_instances = 
{
	dialog_1_1 : instance_exists(obj_dialog_1_1),
	dialog_1_2 : instance_exists(obj_dialog_1_2),
	dialog_1_3 : instance_exists(obj_dialog_1_3),
	dialog_1_4 : instance_exists(obj_dialog_1_4),
	dialog_1_5 : instance_exists(obj_dialog_1_5),
	botle : instance_exists(obj_botle),
	botleEmpty : instance_exists(obj_botleEmpty),
	stick : instance_exists(obj_stick),
	key : instance_exists(obj_key)
};
var instances = base64_encode(json_stringify(current_instances));
ini_write_string("instances", "objects", instances);

ini_close();
