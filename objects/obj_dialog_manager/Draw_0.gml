/// @description Draw dialogue and choices
// atention!!!! если в ноде есть ключ некст без вариантов ответа 
//допилить варианты с экшенами и кондишинами это будет парент для всех остальных диалогов

draw_set_font(f_rus_default);

var node = variable_struct_get(dialog_data, current_node);

var text = node.text;

draw_text(222, 300, string(text));

if (variable_struct_exists(node, "next")) {
	var text_x = 250;
    var text_y = 330;
    var end_text = "Далее";

    var text_width = string_width(end_text);
    var text_height = string_height(end_text);
    var hovered_contin = (mouse_x > text_x && mouse_x < text_x + text_width &&
                        mouse_y > text_y && mouse_y < text_y + text_height);

    var text_color = hovered_contin ? c_yellow : c_white;

    draw_text_color(text_x, text_y, end_text, text_color, text_color, text_color, text_color, 1);

    if (mouse_check_button_pressed(mb_left) && hovered_contin) {
		var next_node = variable_struct_get(node, "next");
        if (next_node != undefined) {
            current_node = next_node;
         }
	}
}

if (variable_struct_exists(node, "choices")) {
	var choices = variable_struct_get(node, "choices");

    var y_offset = 330;
    var keys = struct_get_names(choices);
    var hovered_key = undefined;

    for (var i = 0; i < array_length(keys); i++) {
        var key = keys[i];
        var choice = variable_struct_get(choices, key);
        var choice_text = variable_struct_get(choice, "text");

        if (choice_text != undefined) {
            var text_x = 250;
            var text_y = y_offset;
            var text_width = string_width(choice_text) + string_width(key) + 10;
            var text_height = string_height(choice_text);

            if (mouse_x > text_x && mouse_x < text_x + text_width &&
                mouse_y > text_y && mouse_y < text_y + text_height) {
                hovered_key = key;
            }
            var text_color = (hovered_key == key) ? c_yellow : c_white;
            draw_text_color(text_x, text_y, string(key) + ": " + choice_text, text_color, text_color, text_color, text_color, 1);
            y_offset += 10;
        }
    }
    if (mouse_check_button_pressed(mb_left) && hovered_key != undefined) {
        var next_node_val = variable_struct_get(choices, hovered_key);
        var next_node = variable_struct_get(next_node_val, "next");
        if (next_node != undefined) {
            current_node = next_node;
        }
    } 
} 
if (variable_struct_exists(node, "end")) {
	var text_x = 250;
    var text_y = 330;
    var end_text = "уйти";

    var text_width = string_width(end_text);
    var text_height = string_height(end_text);
    var hovered_exit = (mouse_x > text_x && mouse_x < text_x + text_width &&
                        mouse_y > text_y && mouse_y < text_y + text_height);

    var text_color = hovered_exit ? c_yellow : c_white;

    draw_text_color(text_x, text_y, end_text, text_color, text_color, text_color, text_color, 1);

    if (mouse_check_button_pressed(mb_left) && hovered_exit) {
        
		instance_destroy(); 
    }
}
