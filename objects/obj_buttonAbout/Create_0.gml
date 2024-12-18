/// @description Insert description here
// You can write your code in this editor

event_inherited(); //наследование логики родительского обьекта

normalStule = spr_newGame_hovered;
hoveredStule = spr_newGame_pressed;
pressedStule = spr_newGame_normal;

spawn_GUI = false;
content = undefined;


callback_function = function() {
    var text = file_text_open_read("n_info.txt");
    content = "";
    while (!file_text_eof(text)) {
        content += file_text_readln(text) + "\n";
	}
	file_text_close(text);
	
	spawn_GUI = true; 
	//show_debug_message(content);
}
/*    file_text_close(text);
    show_message(content);
};