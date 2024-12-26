// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_processChoice(choice_key) {
    // Получаем текущий узел диалога
    var node = dialogue_data[? "dialogue"][? current_node];

    // Проверяем наличие выбора в узле
    if (node[? "choices"] != undefined && node[? "choices"][? choice_key] != undefined) {
        var next_node = node[? "choices"][? choice_key][? "next"];

        // Переход на следующий узел
        if (next_node != undefined) {
            if (next_node == "end") {
                show_debug_message("Диалог завершён.");
                instance_destroy();  // Закрываем диалог
            } else {
                current_node = next_node;  // Обновляем текущий узел
            }
        }
    }
}