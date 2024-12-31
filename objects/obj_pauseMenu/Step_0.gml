/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape)) {
	global.is_paused = !global.is_paused;
	if (global.is_paused == true) {
		layer_create(-10, global.pause_layer);
		instance_create_layer(64, 64, global.pause_layer, obj_buttonResume);
		instance_create_layer(64, 128, global.pause_layer, obj_buttonContinue);
		instance_create_layer(64, 256, global.pause_layer, obj_buttonExit);
		audio_play_sound(snd_mainMenuThem3, 1, false);
		instance_deactivate_layer("Dialog");
		instance_deactivate_layer("HUD");
		instance_deactivate_layer("Instances");
		instance_activate_object(obj_pauseMenu);
	} else {
		instance_activate_all();
		layer_destroy(global.pause_layer);
	}
}
