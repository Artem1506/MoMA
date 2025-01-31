/// @description Insert description here
// You can write your code in this editor

if (global.playerIsInteract == true) {
    
    var slot = -1;
    var cell;

    for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
       cell = obj_inventory.inventory_cells[i];

       if (cell.itemData.itemObject == undefined) {  
            slot = i;
            break;
        }
    }
    if (slot != -1) {
		var targetCell = obj_inventory.inventory_cells[slot];
        targetCell.itemData = self.itemData;
		instance_destroy();   
    } 
}
