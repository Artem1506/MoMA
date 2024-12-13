/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_text(x,y,"HP" + string(global.playerHp));
draw_text(x,y+15,"isInteract" + string(global.playerIsInteract));
draw_text(x,y+30,"isShadow" + string(global.playerIsShadow));


// Начальная позиция для вывода текста
var start_x = 0;
var start_y = 70;
var offset_y = 20;  // Смещение по вертикали для каждого элемента

// Проверка на существование инвентаря
if (obj_inventory != undefined) {
    // Проходим по массиву и выводим содержимое
    for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
        var cell = obj_inventory.inventory_cells[i]; // Получаем ячейку
        var text = "Ячейка " + string(i) + ": " + cell.cell_type; // Формируем текст для отображения

        // Если ячейка не пуста и содержит предмет, добавляем информацию о предмете
        if (cell.item != undefined) {
            text += " (Содержит предмет)";
        }

        // Выводим текст на экран
        draw_text(start_x, start_y + (i * offset_y), text);
    }
} else {
    draw_text(start_x, start_y, "Инвентарь не найден");
}

