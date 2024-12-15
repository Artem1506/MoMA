/// @description Insert description here
// You can write your code in this editor

if (is_dragging) {
    is_dragging = false;
	// Проверяем, если мышь находитcя в пределах допустимой области (сцены или ячейки инвентаря)
    if (mouse_x >= x && mouse_x <= x + obj_inventory.cellWidth && 
	mouse_y >= y && mouse_y <= y + obj_inventory.cellHeight) {
        // Если ячейка пуста, возвращаем объект в ячейку
        if (item == undefined) {
            item = dragItem;  // Помещаем объект обратно в ячейку
        }
    } else {
        // Если объект был перетянут за пределы инвентаря, создаём его на сцене
        new_item = instance_create_layer(mouse_x, mouse_y, "Instances", dragItem.object_index);
    }
}

/*todo если работать со слотом то ячейка не чистится просто таскается по экрану, 
		фактически мы не обьект перемещаем а ячейку
если с иконкой то она не дропается переменная ис драгинг не меняется на фолс