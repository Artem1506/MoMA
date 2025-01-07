/// @description Insert description here
// You can write your code in this editor

ini_open("saveGame.ini");
var id_gamer = base64_encode(global.idGamer);
ini_write_string("gamer", "id", id_gamer);
var obj_name = base64_encode(object_get_name(object_index));
ini_write_string("checkpoint", "id", obj_name);
var playerHp = base64_encode(global.playerHp);
ini_write_string("player", "hp", playerHp);
var playerMoney = base64_encode(global.playerMoney);
ini_write_string("player", "money", playerMoney);
// руками дописать проверку на наличие в слое уровня трости
for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
	var cell = obj_inventory.inventory_cells[i];
	var section_name = "cell_" + string(i); 
	ini_write_string(section_name, "type", cell.cell_type);
	
	ini_write_string(section_name, "item", cell.item);
    ini_write_string(section_name, "ico", cell.itemIco);
}
var currentRoom = base64_encode(room_get_name(room));
ini_write_string("position", "room", currentRoom);
var obj_x = base64_encode(x);
var obj_y = base64_encode(y);
ini_write_string("position", "location_x", obj_x);
ini_write_string("position", "location_y", obj_y);
ini_close();
