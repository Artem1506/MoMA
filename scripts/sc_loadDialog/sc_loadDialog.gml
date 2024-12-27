///@description загрузка из json файла и преобразование в структуру GML

function sc_loadDialog() {
var file_path = argument0; // json файл с диалогом

var file_content = file_text_open_read(file_path);
var dialogue_json = "";

    while (!file_text_eof(file_content)) {
        dialogue_json += file_text_read_string(file_content);
        file_text_readln(file_content);
    }
    file_text_close(file_content);
	
	var dialog_data = json_parse(dialogue_json)
	
	if (is_struct(dialog_data)) {show_debug_message("pobeda")} 
	else {show_debug_message("bitch")}
	
    return dialog_data	
}
