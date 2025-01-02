/// @description Insert description here
// You can write your code in this editor

event_inherited();

normalStyle = spr_lastCheckpoint_normal;
hoveredStyle = spr_lastCheckpoint_hovered;
pressedStyle = spr_lastCheckpoint_pressed;

callback_function = function() {
	sc_apiPost("load_game", "checkpoint")
	
	ini_open("saveGame.ini");
	
	var loadLvl = ini_read_string("position", "room", lvl_apart);
	var room_map = ds_map_create();
	room_map[? "lvl_apart"] = lvl_apart;
	var room_id = room_map[? loadLvl];
	global.is_loaded = true;
	ini_close()
	global.is_paused = false;
	audio_stop_all();
	instance_activate_all();
	layer_destroy(global.pause_layer);
	room_goto(room_id);
}