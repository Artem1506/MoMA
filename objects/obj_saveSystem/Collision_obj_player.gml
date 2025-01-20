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

for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
	var cell = obj_inventory.inventory_cells[i];
	var section_name = "cell_" + string(i); 
	var cell_cell_type = base64_encode(cell.cell_type);
	ini_write_string(section_name, "type", cell_cell_type);
	var cell_item = base64_encode(cell.item);
	ini_write_string(section_name, "item", cell_item);
}
var currentRoom = base64_encode(room_get_name(room));
ini_write_string("position", "room", currentRoom);
var obj_x = base64_encode(obj_player.x);
var obj_y = base64_encode(obj_player.y);
ini_write_string("position", "location_x", obj_x);
ini_write_string("position", "location_y", obj_y);

/*код ниже нужен для загрузки списка обьектов на сцене, но список он получает в виде 
ИДишников который процедурно сгенерированы, и получается что а палки в ИНИ файле ИД 11, 
а в только что открытой комнате у этой же палки ИД 12, а ид 11 у диалога например
записывать состояния в ини файлы не вариант.
var Instances = layer_get_id("Instances")
var layer1 = layer_get_all_elements(Instances);
var layer1_encode = base64_encode(layer1);
ini_write_string("layers", "Instances", layer1_encode);
var Dialog = layer_get_id("Dialog")
var layer2 = layer_get_all_elements(Dialog);
var layer2_encode = base64_encode(layer2);
ini_write_string("layers", "Dialog", layer2_encode);*/

ini_close();
