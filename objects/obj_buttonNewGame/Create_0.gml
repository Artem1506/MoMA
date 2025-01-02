/// @description Insert description here
// You can write your code in this editor
event_inherited();

normalStyle = spr_newGame_normal;
hoveredStyle = spr_newGame_hovered;
pressedStyle = spr_newGame_pressed;

callback_function = function() {
	global.is_loaded = false;
	room_goto(lvl_apart);
	sc_apiPost("new_game", noone);
}

