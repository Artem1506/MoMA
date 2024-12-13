/// @description Insert description here
// You can write your code in this editor

visible = true;
sprite_index = spr_inventory;
offset_x = 0;
offset_y = 0;


var cellWidth = 32;  
var cellHeight = 32; 
var cellSpacing_x = 32;  
var cellSpacing_y = 16;
var rows = 2;         
var cols = 2;         
var start_x = x-50;    
var start_y = y-100;  

inventory_cells = [];

// Создаем ячейки
for (var i = 0; i < rows; i++) {
    for (var j = 0; j < cols; j++) {
		var cell_x = start_x + j * (cellWidth + cellSpacing_x);
		var cell_y = start_y + i * (cellHeight + cellSpacing_y);
        
		var cell = instance_create_layer(cell_x, cell_y, "HUD", obj_invCell);
        
        // Назначаем тип ячейке
        if (i == 0 && j == 0) {
            cell.cell_type = "r_hand"; 
        } else if (i == 0 && j == 1) {
            cell.cell_type = "l_hand"; 
        } else {
            cell.cell_type = "none"; 
        }
		inventory_cells[i * cols + j] = cell;
    }
}

