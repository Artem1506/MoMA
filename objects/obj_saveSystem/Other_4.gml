/// @description Insert description here
// You can write your code in this editor
/*
ini_open("saveGame.ini");

var currentRoom = room_get_name(room)
ini_write_string("position", "room", currentRoom);
var obj_x = 5;
var obj_y = 250;
ini_write_real("position", "location_x", obj_x);
ini_write_real("position", "location_y", obj_y);
ini_write_real("player", "hp", global.playerHp);
ini_write_real("player", "money", global.playerMoney);

for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
	var cell = obj_inventory.inventory_cells[i];
	var section_name = "cell_" + string(i); 
	ini_write_string(section_name, "type", cell.cell_type);
	if (cell.item != undefined) {
        ini_write_string(section_name, "item_name", cell.item.name);
        ini_write_real(section_name, "item_quantity", cell.item.quantity);
    } else {
        ini_write_string(section_name, "item_name", "empty");
        ini_write_real(section_name, "item_quantity", 0);
    }
}
ini_close()
