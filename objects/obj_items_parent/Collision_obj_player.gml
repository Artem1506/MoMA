/// @description Insert description here
// You can write your code in this editor

if (global.playerIsInteract == true) {
    
    var slot = -1;
    var cell;

    for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
        cell = obj_inventory.inventory_cells[i];

       if (cell.cell_type == "none") {  
            slot = i;
            break;
        } 
        else if (cell.cell_type == "r_hand" && self.type == "r_hand") {  
            slot = i;
            break;
        }
        else if (cell.cell_type == "l_hand" && self.type == "l_hand") {  
            slot = i;
            break;
        }
    }

    if (slot != -1) {
		var targetCell = obj_inventory.inventory_cells[slot];
        targetCell.item = self;
        targetCell.cell_type = self.type; // хз зачем это делать но без этого не работает
		instance_destroy();   
    } else {
        show_message("Инвентарь полон!"); // Нет свободных ячеек
    }
}
