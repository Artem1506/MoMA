/// @description Insert description here
// You can write your code in this editor

// Убедитесь, что global.playerIsInteract проверяется через сравнение (==), а не присваивание (=)
if (global.playerIsInteract == true) { // Проверка глобального флага взаимодействия
    var inventory_cells = []; // Создаем пустой массив

    // Ищем объекты типа obj_invCell, с которыми пересекаемся
    with (obj_invCell) {
        if (place_meeting(x, y, other)) {
            array_push(inventory_cells, id); // Добавляем id ячейки в массив
        }
    }

    // Если массив заполнен, проверяем ячейки
    if (array_length(inventory_cells) > 0) {
        for (var i = 0; i < array_length(inventory_cells); i++) {
            var cell = inventory_cells[i];
            if (cell.cell_type == stick_type && cell.item == noone) {
                // Назначаем предмет ячейке
                cell.item = id;
                x = cell.x + 32;  // Центрируем объект в ячейке
                y = cell.y + 32;
                break;
            }
        }
    }
}
