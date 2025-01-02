/// @description Insert description here
// You can write your code in this editor

ini_open("saveGame.ini");
ini_write_real("player", "hp", global.playerHp);
ini_write_real("player", "money", global.playerMoney);
// руками дописать проверку на наличие в слое уровня трости
for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
	var cell = obj_inventory.inventory_cells[i];
	var section_name = "cell_" + string(i); 
	ini_write_string(section_name, "type", cell.cell_type);
	
	ini_write_string(section_name, "item", cell.item);
    ini_write_string(section_name, "ico", cell.itemIco);
}
var currentRoom = room_get_name(room)
ini_write_string("position", "room", currentRoom);
var obj_x = x;
var obj_y = y;
ini_write_real("position", "location_x", obj_x);
ini_write_real("position", "location_y", obj_y);
ini_close()
