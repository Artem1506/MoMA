/// @description drink vine
// You can write your code in this editor

var slot = -1;
var cell;

for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
    cell = obj_inventory.inventory_cells[i];
    if (cell.itemData.itemObject == "obj_botle") {  
		haveBotle = true;
		slot = i;
        break;
	}
}
if (haveBotle == true) {
	sc_apiPost(object_get_name(object_index), "drink");
	global.playerHp ++ ;
	obj_inventory.inventory_cells[slot].itemData = {
			itemIcoName : spr_botleEmpty,
			itemObject : obj_botleEmpty }
}