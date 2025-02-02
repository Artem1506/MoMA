/// @description Insert description here
// You can write your code in this editor

if (visible == true) {
	obj_dialog_gameOver.visible = true;
	layer_create(-10, global.gameOver_dialog);
	audio_play_sound(snd_gameOver4, 1, true);
	instance_deactivate_layer("HUD");
	instance_deactivate_layer("Instances");
	instance_activate_object(obj_gameOverMenu);
}

if (visible == false && layer_exists(global.gameOver_dialog)) { 
		instance_activate_all();
		layer_destroy(global.gameOver_dialog);
		audio_stop_all()
}
