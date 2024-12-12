/// @description Insert description here
// You can write your code in this editor

visible = true;

var cell_width = 32;  // Ширина ячейки
var cell_height = 32; // Высота ячейки
var rows = 2;         // Количество строк
var cols = 2;         // Количество столбцов
var start_x = x;      // Начальная координата X для поля
var start_y = y;      // Начальная координата Y для поля

// Создаем ячейки
for (var i = 0; i < rows; i++) {
    for (var j = 0; j < cols; j++) {
        var cell = instance_create_layer(start_x + j * cell_width, start_y + i * cell_height, "Instances", obj_invCell);
        
        // Назначаем тип ячейке
        if (i == 0 && j == 0) {
            cell.cell_type = "r_hand";  // Правая рука
        } else if (i == 0 && j == 1) {
            cell.cell_type = "l_hand";  // Левая рука
        } else {
            cell.cell_type = "none";    // Без типа
        }
    }
}

