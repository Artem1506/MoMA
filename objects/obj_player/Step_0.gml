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

show_debug_message(string(playerSpeed))
show_debug_message("playerNoiseLvl")
show_debug_message(string(global.playerNoiseLvl))
show_debug_message(string(global.playerAgroDistance))

global.playerNoiseLvl = playerSpeed * 2; 
if (global.playerIsShadow == true) { var shadow = 1; }
	else { var shadow = 2 }
global.playerAgroDistance = global.playerNoiseLvl * shadow;

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
