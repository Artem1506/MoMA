/// @description Insert description here
// You can write your code in this editor

if (!keyboard_check(vk_shift) && !keyboard_check(vk_control) && afk == false && attack_cooldown == false) {
	sprite_index = spr_player_idle0;
	if (keyboard_check_released(ord("A")) || keyboard_check_released(ord("D"))) { 
		sprite_index = spr_player_idle0; }
}
if (keyboard_check(vk_anykey) || mouse_check_button(mb_any) || image_index >= 8) { 
	afk = false; alarm[4] = 600; }

if (keyboard_check(ord("A")) && attack_cooldown == false) { x -= playerSpeed; image_xscale = -1;
	if (!keyboard_check(vk_shift) && !keyboard_check(vk_control)) { sprite_index = spr_player_walk } 
}
if (keyboard_check(ord("D")) && attack_cooldown == false) { x += playerSpeed; image_xscale = 1; 
	if (!keyboard_check(vk_shift) && !keyboard_check(vk_control)) { sprite_index = spr_player_walk }
}
if (keyboard_check(ord("W"))) { y -= 1; } // переменную выпелил ибо нех впадлу рисовать анимации бега вверх и вниз
if (keyboard_check(ord("S"))) { y += 1; }

if (keyboard_check(ord("E"))) { global.playerIsInteract = true; 
	if (x == xprevious) { sprite_index = spr_player_grab; }
}
if (keyboard_check_released(ord("E"))) { global.playerIsInteract = false; }

if (keyboard_check_pressed(ord("L"))) {
	if (attack_cooldown == false && !keyboard_check(vk_control)) {
		is_attack = true;
		attack_cooldown = true;
		alarm[3] = 2;
		sprite_index = spr_player_attack1; //допилить что бы спрайт менялся в зависимости от слота инвентаря
		instance_create_layer(x, y, "HUD", obj_weapon)
		alarm[2] = obj_weapon.weapon_spd;
	}
	if (attack_cooldown == false && keyboard_check(vk_control)) {
		is_attack = true;
		attack_cooldown = true;
		alarm[3] = 2;
		sprite_index = spr_player_sneekAttack;
		instance_create_layer(x, y, "HUD", obj_weapon)
		alarm[2] = obj_weapon.weapon_spd
	}
} 

if (keyboard_check_pressed(ord("F"))) {
	if (attack_cooldown == false) {
		is_kick = true;
		attack_cooldown = true;
		alarm[3] = 2;
		sprite_index = spr_player_kick;
		instance_create_layer(x, y, "HUD", obj_weapon)
		alarm[2] = 30;	
	}
}
//if (!keyboard_check(ord("A")) || !keyboard_check(ord("D"))) { playerSpeed = 0 
//	} else { playerSpeed = 1 }
/*
show_debug_message(string(playerSpeed))
show_debug_message("playerNoiseLvl")
show_debug_message(string(global.playerNoiseLvl))
show_debug_message(string(global.playerAgroDistance))
*/

if (!keyboard_check(ord("W")) && !keyboard_check(ord("A")) && !keyboard_check(ord("S")) && !keyboard_check(ord("D"))) { 
	global.playerNoiseLvl = 0 
} else {
	global.playerNoiseLvl = playerSpeed * 2;
}
// подумать над переделать зависимость от скорости на какой-то коээфициент, 
//так как скорость не линейна в подкрадывании, и еще подумать над зависимостью от поверхности

//if (global.playerIsShadow == true) { var shadow = 1; }
//	else { var shadow = 5 } //убрал потому что атамарные механики шум и видение
//global.playerAgroDistance = global.playerNoiseLvl + shadow;

if (keyboard_check(vk_shift) && playerRest == true) {
	playerSpeed = 3;
	if (playerSpeed >= 2) { sprite_index = spr_player_run; }
}
if (keyboard_check_pressed(vk_shift) && playerRest == true) { alarm[0] = 60; }
	
if (keyboard_check_pressed(vk_control)) {
	if (sprite_index != spr_player_down) {
		sprite_index = spr_player_down; }
	if (sprite_index == spr_player_down) { 
		alarm[3] = 1; sprite_index = spr_player_down_idle; }
}	
if (keyboard_check(vk_control) 
&& !keyboard_check(ord("W")) 
&& !keyboard_check(ord("A")) 
&& !keyboard_check(ord("S")) 
&& !keyboard_check(ord("D"))
&& attack_cooldown == false) {
	sprite_index = spr_player_down_idle;
}

if (keyboard_check(vk_control)) { 
	if (keyboard_check(ord("A")) 
	|| keyboard_check(ord("D")) 
	|| keyboard_check(ord("W")) 
	|| keyboard_check(ord("S"))) {
		sprite_index = spr_player_down_move; 
		if (image_index > 3) { playerSpeed = 1; }
		else { playerSpeed = 0.2 }
	}
}

if (!keyboard_check(vk_control) && !keyboard_check(vk_shift)) { 
	playerSpeed = 1; }

// изменение переменной на свету или в тени (слишклм жесткая зависимость) todo
if (!place_meeting(x,y,obj_lamp1) 
&& obj_moon.current_spr != spr_moon_lvl2_1) {
		global.playerIsShadow = true;
}

if (attack_cooldown == true) {
	//is_attack = false;
    playerSpeed = 0;
	//mouse_clear(mb_left);
} 
//show_debug_message(string(is_attack))
//show_debug_message(string(attack_cooldown))
