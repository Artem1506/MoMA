/// Script assets have changed for v2.3.0 see

//todo не работает вывод платформы
//закончилась триалка
/*
function sc_apiPost() {
	
var event = argument0;
var result = argument1;

var url = "https://api.sheetbest.com/sheets/90b857c3-c26c-4ce5-9f85-d956d835092c";

var id_gamer = global.idGamer; 
var current_date_time = date_current_datetime();
var system_date = date_date_string(current_date_time) + " " + date_time_string(current_date_time);
var platform = string(os_type);
var screen_width = display_get_width();
var window_width = window_get_width();

var post_data_map = ds_map_create();
ds_map_add(post_data_map, "id_gamer", id_gamer); 
ds_map_add(post_data_map, "event", event); 
ds_map_add(post_data_map, "result", result);
ds_map_add(post_data_map, "timestamp", system_date);
ds_map_add(post_data_map, "platform", platform);
ds_map_add(post_data_map, "screen_width", screen_width);
ds_map_add(post_data_map, "window_width", window_width);

var post_data = json_encode(post_data_map);

//show_debug_message("post_data: " + post_data);

ds_map_destroy(post_data_map);

var headers = ds_map_create();
ds_map_add(headers, "Content-Type", "application/json");

http_request(url, "POST", headers, post_data);
}
