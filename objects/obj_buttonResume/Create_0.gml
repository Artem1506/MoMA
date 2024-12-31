/// @description Insert description here
// You can write your code in this editor

event_inherited();

normalStyle = spr_exit_normal;
hoveredStyle = spr_exit_hovered;
pressedStyle = spr_exit_pressed;

callback_function = function() {
	global.is_paused = false;
	instance_activate_all();
	layer_destroy(global.pause_layer);
}