/// @description Insert description here
// You can write your code in this editor

// перемещение персонажа
if (keyboard_check_released(ord("A"))) { sprite_index = animStayL; }
if (keyboard_check_released(ord("D"))) { sprite_index = animStayR; }
if (keyboard_check(ord("A"))) { x -= playerSpeed; }
if (keyboard_check(ord("A"))) { sprite_index = animWalkL; }
if (keyboard_check(ord("D"))) { x += playerSpeed; }
if (keyboard_check(ord("D"))) { sprite_index = animWalkR; }
if (keyboard_check(ord("W"))) { y -= 1; } // переменную выпелил ибо нех впадлу рисовать анимации бега вверх и вниз
if (keyboard_check(ord("S"))) { y += 1; }

if (keyboard_check(ord("E"))) { global.playerIsInteract = true; }
if (keyboard_check_released(ord("E"))) { global.playerIsInteract = false; }

//if (!keyboard_check(ord("A")) || !keyboard_check(ord("D"))) { playerSpeed = 0 
//	} else { playerSpeed = 1 }
/*
show_debug_message(string(playerSpeed))
show_debug_message("playerNoiseLvl")
show_debug_message(string(global.playerNoiseLvl))
show_debug_message(string(global.playerAgroDistance))
*/

if (!keyboard_check(ord("A")) && !keyboard_check(ord("D"))) { 
	global.playerNoiseLvl = 0 
} else {
	global.playerNoiseLvl = playerSpeed * 2;
}
if (global.playerIsShadow == true) { var shadow = 1; }
	else { var shadow = 5 } //протестить геймплейно возможно больше сделать надо
global.playerAgroDistance = global.playerNoiseLvl + shadow;

if (keyboard_check(vk_shift) && playerRest == true) {
	playerSpeed = 3;
	alarm[0] = 60; 
	playerRest = false; }
	
if (keyboard_check(vk_control)) {
	playerSpeed = 0.5; }	

if (!keyboard_check(vk_control) && !keyboard_check(vk_shift)) { 
	playerSpeed = 1; }

// изменение переменной на свету или в тени
	if (!place_meeting(x,y,obj_lamp1)) {
		global.playerIsShadow = true;
	}
