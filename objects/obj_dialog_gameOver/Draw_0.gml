/// @description Insert description here
// You can write your code in this editor
// статус в 23 строке

event_inherited()

var node = variable_struct_get(dialog_data, current_node);

if (variable_struct_exists(node, "end")) {
	var text_x = 490;
    var text_y = 340;
    var end_text = "Уйти";

    var text_width = string_width(end_text);
    var text_height = string_height(end_text);
    var hovered_exit = (mouse_x > text_x && mouse_x < text_x + text_width &&
                        mouse_y > text_y && mouse_y < text_y + text_height);

    var text_color = hovered_exit ? c_yellow : c_white;

    draw_text_color(text_x, text_y, end_text, text_color, text_color, text_color, text_color, 1);

    if (mouse_check_button_pressed(mb_left) && hovered_exit) {
        dialog_end = true;
		obj_gameOverMenu_dialog.visible = false;
		instance_destroy(); 
		instance_activate_object(obj_player);
    }
}
