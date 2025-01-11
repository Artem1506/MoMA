/// @description Insert description here
// You can write your code in this editor

var l_hand = obj_inventory.inventory_cells[1];

if (l_hand.item != undefined && l_hand.item.itemName == "Вино") {
	sc_apiPost(object_get_name(object_index), "drink");
	global.playerHp ++
	l_hand.item = undefined;
}
