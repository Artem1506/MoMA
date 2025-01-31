/// @description Insert description here
// You can write your code in this editor

var target_cell = instance_place(x, y, obj_invCell);
var newItem = asset_get_index(itemData.itemObject)

if (target_cell != noone) {
    // Если ячейка пуста, кладем предмет обратно в нее
    if (target_cell.itemData.itemObject == undefined) {
        target_cell.itemData = itemData;
        instance_destroy();
    }
} else {
    instance_create_layer(x, y, "Instances", newItem);
    instance_destroy();
}
