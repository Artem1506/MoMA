/// @description Insert description here
// You can write your code in this editor

event_inherited(); //наследование логики родительского обьекта

normalStyle = spr_about_normal;
hoveredStyle = spr_about_hovered;
pressedStyle = spr_about_pressed;

spawn_GUI = false;
content = undefined;
scroll_offset = 0;


callback_function = function() {
    var text = file_text_open_read("about.txt");
    content = "";
    while (!file_text_eof(text)) {
        content += file_text_readln(text) + "\n";
	}
	file_text_close(text);
	
	spawn_GUI = true; 
	sc_apiPost("about", noone);
	//show_debug_message(content);
}
/*    file_text_close(text);
    show_message(content);
};