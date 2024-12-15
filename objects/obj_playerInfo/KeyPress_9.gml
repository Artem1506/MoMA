/// @description Insert description here
// You can write your code in this editor

// Укажите имя слоя
var target_layer = "Instances";
var target_layer2 = "HUD";

// Получаем список всех элементов на слое
var layer_elements = layer_get_all_elements(target_layer);
var layer_elements2 = layer_get_all_elements(target_layer2);

// Проходим по элементам слоя
for (var i = 0; i < array_length_1d(layer_elements); i++) {
    var element_id = layer_elements[i];
    
    // Проверяем, является ли элемент объектом
    
        show_debug_message("слой instances: " + object_get_name(element_id));
    }
for (var i = 0; i < array_length_1d(layer_elements2); i++) {
    var element_id2 = layer_elements2[i];
    
    // Проверяем, является ли элемент объектом
    
        show_debug_message("слоей HUD: " + object_get_name(element_id2));
    }