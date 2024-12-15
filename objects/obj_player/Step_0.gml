/// @description Insert description here
// You can write your code in this editor

// перемещение персонажа
if (keyboard_check(vk_left)) { x -= playerSpeed; }
if (keyboard_check(vk_right)) { x += playerSpeed; }
if (keyboard_check(vk_up)) { y -= playerSpeed; }
if (keyboard_check(vk_down)) { y += playerSpeed; }

if (keyboard_check(vk_shift)) { playerSpeed = 3; } 
//todo сделать что бы при отпускании шифта переменная сново менялась на первоначальное значение

	if (!place_meeting(x,y,obj_lamp1)) {
		global.playerIsShadow = true;
	}

