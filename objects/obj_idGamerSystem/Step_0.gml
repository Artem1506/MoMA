/// @description Insert description here
// You can write your code in this editor

if (input_active) {
    var key = keyboard_lastkey;
	if (keyboard_check_pressed(key)) {
		var char = chr(key);
		if (key != vk_enter && key != vk_space && key != vk_shift && key != vk_alt) { 
			if (!array_contains(blocked_symbols, char)) {
				if (string_length(text_input) < max_length) {
					text_input += char;
				}
			}
		}
	}
	
    if (keyboard_check(vk_backspace)) {
        if (string_length(text_input) > 0) {
            text_input = string_copy(text_input, 1, string_length(text_input) - 1);
        }
    }
	
	obligatory_let_exist = false;
	obligatory_num_exist = false;
	for (var i = 0; i < array_length_1d(obligatory_let); i++) { 
			if (string_pos(obligatory_let[i], text_input) > 0) { 
				obligatory_let_exist = true; break 
				}
			}
	for (var i = 0; i < array_length_1d(obligatory_num); i++) { 
			if (string_pos(obligatory_num[i], text_input) > 0) { 
				obligatory_num_exist = true; break 
				}
			}
	if (string_length(text_input) >= 5 && obligatory_let_exist == true && obligatory_num_exist == true) {
		text_valid = true; 
		}

    if (keyboard_check_pressed(vk_enter) && text_valid == true) {
        global.idGamer = text_input;
        input_active = false;
		instance_activate_all(); 
        instance_destroy();
    }
}
