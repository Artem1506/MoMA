/// @description Draw dialogue and choices

draw_set_font(f_rus_default);

// Проверяем, что dialog_data определена
if (dialog_data == undefined) {
    draw_text(50, 50, "Ошибка: dialog_data не загружена.");
    return;
}

// Проверяем, что current_node определён
//if (current_node == undefined) {
//    draw_text(50, 50, "Ошибка: current_node не определён.");
//    return;
//}

// Получаем текущий узел диалога
if (!is_struct(dialog_data)) {
    draw_text(50, 50, "Ошибка: dialog_data не является структурой.");
    return;
}

var node = dialog_data.dialogue[current_node];
if (node == undefined) {
    draw_text(50, 50, "Ошибка: Узел с ключом " + string(current_node) + " не найден.");
    return;
}

// Отображаем текст узла
var text = node.text;
if (text != undefined) {
    draw_text(50, 50, text);
} else {
    draw_text(50, 50, "Ошибка: Текст для узла отсутствует.");
}

// Отображаем варианты ответа
var choices = node.choices;
if (choices != undefined) {
    if (!is_struct(choices)) {
        draw_text(50, 100, "Ошибка: choices не является структурой.");
        return;
    }

    var y_offset = 100;
    var keys = struct_get_keys(choices);

    for (var i = 0; i < array_length(keys); i++) {
        var key = keys[i];
        var choice_text = choices[key].text;

        if (choice_text != undefined) {
            // Вычисляем цвет текста
            var text_color = (selected_choice == key) ? c_yellow : c_white;

            // Отображаем текст
            draw_text_color(50, y_offset, string(key) + ": " + choice_text, text_color, text_color, text_color, text_color, 1);
            y_offset += 30;
        } else {
            draw_text(50, y_offset, "Ошибка: Отсутствует текст для выбора " + string(key) + ".");
            y_offset += 30;
        }
    }
}

