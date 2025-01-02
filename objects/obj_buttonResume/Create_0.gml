/// @description Insert description here
// You can write your code in this editor

event_inherited();

normalStyle = spr_resume_normal;
hoveredStyle = spr_resume_hovered;
pressedStyle = spr_resume_pressed;

callback_function = function() {
	global.is_paused = false;
	audio_stop_all();
	instance_activate_all();
	layer_destroy(global.pause_layer);
}