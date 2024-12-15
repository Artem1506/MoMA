/// @description Insert description here
// You can write your code in this editor
/*
// Проверяем, пересекается ли мышь с ячейкой инвентаря
show_debug_message("left released")
var target_cell = instance_place(x, y, obj_invCell);

if (target_cell != noone) {
    // Если ячейка пуста, кладем предмет обратно в нее
    if (target_cell.item == undefined) {
        target_cell.item = item;
        instance_destroy(); // Уничтожаем временный объект
    }
} else {
    // Если не попали в ячейку, размещаем предмет на игровой сцене
    var new_item = instance_create_layer(x, y, "Instances", item.object_index);
    instance_destroy(); // Уничтожаем временный объект
}