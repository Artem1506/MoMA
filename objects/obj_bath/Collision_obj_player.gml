/// @description Insert description here
// You can write your code in this editor

if (global.playerIsInteract == true && sprite_index == spr_bath_botle) {
    
    var slot = -1;
    var cell;

    for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
        cell = obj_inventory.inventory_cells[i];

       if (cell.item == undefined) {  
            slot = i;
            break;
        } /*
        else if (cell.cell_type == "r_hand" && self.type == "r_hand") {  
            slot = i;
            break;
        }
        else if (cell.cell_type == "l_hand" && self.type == "l_hand") {  
            slot = i;
            break;
        }*/
    }

    if (slot != -1) {
		var targetCell = obj_inventory.inventory_cells[slot];
        targetCell.item = obj_botle;
        //targetCell.cell_type = obj_botle.type; // хз зачем это делать но без этого не работает
        targetCell.itemIco = spr_botle;
		sprite_index = spr_bath_empty; 
		obj_dialog_1_3.visible = true;
    } 
}
