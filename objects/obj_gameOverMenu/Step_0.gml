/// @description Insert description here
// You can write your code in this editor

if (global.playerHp <= 0) {
	var sentApi = false;
	visible = true;
	var currentRoom = string(room_get_name(room));
	sc_apiPost("death", currentRoom);
	sentApi = true;
	layer_create(-10, global.gameOver_layer);
	instance_create_layer(64, 104, global.gameOver_layer, obj_buttonLastCheckpoint);
	instance_create_layer(64, 284, global.gameOver_layer, obj_buttonExit);
	audio_play_sound(snd_gameOver4, 20, true);
	instance_deactivate_layer("Dialog");
	instance_deactivate_layer("HUD");
	instance_deactivate_layer("Instances");
	instance_activate_object(obj_gameOverMenu);
} /*else {
	instance_activate_all();
	//layer_destroy(global.gameOver_layer);
	//audio_stop_all()
	}
