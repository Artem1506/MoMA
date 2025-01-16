/// @description Draw dialogue and choices
//
//допилить варианты с экшенами и кондишинами это будет парент для всех остальных диалогов

draw_set_font(f_rus_defaultBig);

var node = variable_struct_get(dialog_data, current_node);

if (variable_struct_exists(node, "action")) {
	dialog_action = variable_struct_get(node, "action");
	var spriteID = asset_get_index(dialog_action)
	draw_sprite(spriteID, 0, 0, 0);
}

var scroll_offset = 0;
var box_x = 32, box_y = 32;       // падинги по горизонтали по 100 пикселов
var box_width = 192, box_height = 256; // Размеры рамки, падинги по горизонтали по 100 пикселов
var text_margin = 5; // Отступ текста

if (scroll_offset < 0) scroll_offset = 0;
    var content_height = 256;
    if (scroll_offset > content_height - box_height + text_margin) {
        scroll_offset = content_height - box_height + text_margin;
	}
    if (mouse_wheel_up()) scroll_offset -= 5; 
    if (mouse_wheel_down()) scroll_offset += 5;
	
var text = node.text;

    var text_x = box_x + text_margin;
    var text_y = box_y + text_margin - scroll_offset;
    draw_set_color(c_white);
    draw_text_ext(text_x, text_y, text, 15, box_width - text_margin);

if (variable_struct_exists(node, "next")) {
	var text_x = 96;
    var text_y = 320;
    var end_text = "Далее";

    var text_width = string_width(end_text);
    var text_height = string_height(end_text);
    var hovered_contin = (mouse_x > text_x && mouse_x < text_x + text_width &&
                        mouse_y > text_y && mouse_y < text_y + text_height);

    var text_color = hovered_contin ? c_silver : c_white;

    draw_text_color(text_x, text_y, end_text, text_color, text_color, text_color, text_color, 1);

    if (mouse_check_button_pressed(mb_left) && hovered_contin) {
		var next_node = variable_struct_get(node, "next");
        if (next_node != undefined) {
            current_node = next_node;
         }
	}
}

if (variable_struct_exists(node, "end")) {
	var text_x = 96;
    var text_y = 320;
    var end_text = "Продолжить";

    var text_width = string_width(end_text);
    var text_height = string_height(end_text);
    var hovered_exit = (mouse_x > text_x && mouse_x < text_x + text_width &&
                        mouse_y > text_y && mouse_y < text_y + text_height);

    var text_color = hovered_exit ? c_silver : c_white;

    draw_text_color(text_x, text_y, end_text, text_color, text_color, text_color, text_color, 1);

    if (mouse_check_button_pressed(mb_left) && hovered_exit) {
        
		room_goto(next_room);
    }
}
