/// @description Insert description here
// You can write your code in this editor
/*
draw_self();

draw_set_font(f_rus_default);
draw_set_color(c_black);
draw_text(x,y,"HP" + string(global.playerHp));
draw_text(x,y+15,"isInteract" + string(global.playerIsInteract));
draw_text(x,y+30,"isShadow" + string(global.playerIsShadow));

draw_set_color(c_white)

//draw_text(x,y-10,"inv_ico" + string(obj_invCell.itemData.itemIcoName));
draw_text(x,y+150,"is_dragging" + string(obj_invCell.is_dragging));
if (obj_invCell.drag_item != undefined) { 
	draw_text(x,y+165,"drag_item" + string(obj_invCell.drag_item)); 
	}
// Начальная позиция для вывода текста
var start_x = 0;
var start_y = 70;
var offset_y = 20;  // Смещение по вертикали для каждого элемента

    for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
        var cell = obj_inventory.inventory_cells[i]; // Получаем ячейку
        var text = "Ячейка " + string(i); // Формируем текст для отображения

        // Если ячейка не пуста и содержит предмет, добавляем информацию о предмете
        if (cell.itemData != undefined) {
            text += string(obj_invCell.itemData);
        }

        // Выводим текст на экран
        draw_text(start_x, start_y + (i * offset_y), text);
}
