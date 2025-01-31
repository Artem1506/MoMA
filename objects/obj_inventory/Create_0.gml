/// @description Insert description here
// You can write your code in this editor

visible = true;
sprite_index = spr_inventory;
offset_x = 0;
offset_y = 0;

cellWidth = 32;  
cellHeight = 32; 
var cellSpacing_x = 32;  
var cellSpacing_y = 16;
var rows = 2;         
var cols = 2;         
var start_x = x-50;    
var start_y = y-100;  

inventory_cells = [];

for (var i = 0; i < rows; i++) {
    for (var j = 0; j < cols; j++) {
		var cell_x = start_x + j * (cellWidth + cellSpacing_x);
		var cell_y = start_y + i * (cellHeight + cellSpacing_y);
        
		var cell = instance_create_layer(cell_x, cell_y, "HUD", obj_invCell);
        
		cell_index = i * cols + j;
		inventory_cells[cell_index] = cell;
		cell.cell_index = cell_index; 
    }
}
