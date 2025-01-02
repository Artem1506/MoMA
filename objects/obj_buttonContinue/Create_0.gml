/// @description Insert description here
// You can write your code in this editor

event_inherited();

normalStyle = spr_continue_normal;
hoveredStyle = spr_continue_hovered;
pressedStyle = spr_continue_pressed;

callback_function = function() {
	sc_apiPost("load_game", noone)
	
	ini_open("saveGame.ini");
	
	var loadLvl = ini_read_string("position", "room", lvl_apart);
	var room_map = ds_map_create();
	room_map[? "lvl_apart"] = lvl_apart;
	var room_id = room_map[? loadLvl];
	global.is_loaded = true;
	room_goto(room_id);
	
	ini_close()
	
}