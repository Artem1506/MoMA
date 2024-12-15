/// @description Insert description here
// You can write your code in this editor
/*
if (is_dragging) {
    is_dragging = false;

    // Проверяем, если мышь находится в пределах области инвентаря
    if (position_meeting(mouse_x, mouse_y, obj_inventory)) {
        // Найдём ближайшую ячейку для возврата объекта
        with (obj_invCell) {
            if (item == undefined && point_in_rectangle(mouse_x, mouse_y, x, y, x + obj_inventory.cellWidth, y + obj_inventory.cellHeight)) {
                item = other.dragItem;  // Вернуть объект в ячейку
                other.dragItem = undefined; // Сбросить перетаскиваемый объект
                break;
            }
        }
    } else {
        // Создаём объект на сцене
        if (dragItem != undefined) {
            var new_item = instance_create_layer(mouse_x, mouse_y, "Instances", dragItem.object_index);
            new_item.x = mouse_x;
            new_item.y = mouse_y;
        }
    }
    dragItem = undefined; // Очистить ссылку на перетаскиваемый объект
}