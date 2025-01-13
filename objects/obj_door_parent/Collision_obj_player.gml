/// @description Insert description here
// You can write your code in this editor

collision_player = true;

if (global.playerIsInteract == true && solid == true && is_locked = false){
	sprite_index = sprite_DoorOpen;
	solid = false;
	image_index += 0;
	audio_play_sound (snd_door_opening,10,false);
}

var pocket_1 = obj_inventory.inventory_cells[2]; //надо свойство прописать что только в одном слоте лежат отмычки
//var pocket_2 = obj_inventory.inventory_cells[3];

if (pocket_1.item != undefined && pocket_1.item.itemName == "Отмычка") {
	haveKey = true;
} else { haveKey = false }

if (keyboard_check_pressed(ord("R")) && is_locked == true) {
	if (haveKey == true && !instance_exists(obj_checkCoin)) {
		var check_coin_inst = instance_create_layer(x, y-50, "HUD", obj_checkCoin);
			if (check_coin_inst != noone) {
				var result = check_coin_inst.check_result;
			}
		if (result == true) {
			sc_apiPost(object_get_name(object_index), "master_key_success");
			alarm[0] = 121;
		}
		if (result == false) {
			sc_apiPost(object_get_name(object_index), "master_key_fail");
			pocket_1.item = undefined;
		}
	}
}

if (keyboard_check_pressed(ord("F")) && is_locked == true) {
	if (!instance_exists(obj_checkCoin)) {
		var check_coin_inst = instance_create_layer(x, y-50, "HUD", obj_checkCoin);
		global.playerNoiseLvl =+5;
		alarm[1] = 1;
			if (check_coin_inst != noone) {
				var result = check_coin_inst.check_result;
			}
		if (result == true) {
			sc_apiPost(object_get_name(object_index), "power_kick_success");
			alarm[0] = 121;
			sprite_index = sprite_DoorOpen;
			solid = false;
			image_index += 0;
			audio_play_sound (snd_door_opening,10,false);
			obj_player.sprite_index = spr_playerStayR
			// прокрутить анимацию 1 раз и вернуть старый спрайт 
			//if (image_index >= 4) {
			//image_speed = 0
			//}
		}
		if (result == false) {
			sc_apiPost(object_get_name(object_index), "power_kick_fail")
			obj_player.sprite_index = spr_playerStayL;
			audio_play_sound(snd_kickDoor, 1, false)
			global.playerHp -- 
			}
	}
}
