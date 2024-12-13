/// @description Insert description here
// You can write your code in this editor

// перемещение персонажа
if (keyboard_check(vk_left)) { x -= speed; }
if (keyboard_check(vk_right)) { x += speed; }
if (keyboard_check(vk_up)) { y -= speed; }
if (keyboard_check(vk_down)) { y += speed; }

	if (!place_meeting(x,y,obj_lamp1)) {
		global.playerIsShadow = true;
	}

