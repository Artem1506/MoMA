/// @description Insert description here
// You can write your code in this editor

dialog_data = sc_loadDialog("dialog_1.json");
current_node = "node_1";  // ID текущего узла
current_choices = "choices";  // ID текущего узла

show_debug_message("dialog_data from obj")
show_debug_message(dialog_data)

//var test1 = struct_get_names(dialog_data.node_1.choices)
//var test1 = struct_get_names(dialog_data.current_node)
var test1 = variable_struct_get(dialog_data, current_node) // рабочий варик! 
show_debug_message(test1)
show_debug_message("test1")

var test2 = variable_struct_get(dialog_data, current_choices)
var test22 = dialog_data.node_1.choices
show_debug_message(test22)
show_debug_message(test2)

var test3 = struct_get_names(dialog_data.node_1.choices.a)
var test33 = dialog_data.node_1.choices
show_debug_message(test3)
show_debug_message("test33")
show_debug_message(test33)

//var test4 = struct_get_names(dialog_data.node_1.choices.a.condition)
//show_debug_message(test4)

var test5 = dialog_data.node_1.choices.a.r_text
show_debug_message(test5)

//show_debug_message(dialog_data.dialogue)
//show_debug_message(dialog_data.current_node)
//show_debug_message(current_node)
//show_debug_message(dialog_data.dialogue.1)

