/// @description Insert description here
// You can write your code in this editor

event_inherited();

normalStyle = spr_continue_normal;
hoveredStyle = spr_continue_hovered;
pressedStyle = spr_continue_pressed;

callback_function = function() {
	
	ini_open("saveGame.ini");
	var obj_name = ini_read_string("checkpoint", "id", noone);
	var obj_name_decode = base64_decode(obj_name);
	var loadLvl = ini_read_string("position", "room", lvl_apart);
	var loadLvl_decoe = base64_decode(loadLvl);
	var room_map = ds_map_create();
	room_map[? "lvl_apart"] = lvl_apart;
	var room_id = room_map[? loadLvl_decoe];
	global.is_loaded = true;
	sc_apiPost("load_game", obj_name_decode)
	ini_close()
	
	room_goto(room_id);
}