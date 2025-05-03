/// @description Insert description here
// You can write your code in this editor

global.playerName = "Арчибальт Кейн";
global.playerHp = 2;
global.playerMoney = 0;
global.playerIsShadow = true;
global.playerIsInteract = false;
global.playerNoiseLvl = 0;
noiseLvlCoeff = 0;
playerSpeed = 1;
playerRest = true;
is_attack = false;
is_kick = false;
attack_cooldown = false;
attack_cooldown_alarm = image_index / 6; //какаята задержка зависящая от максимального кол-ва кадров в анимации

global.playerAgroDistance = 0;

afk = false;
curent_idle = undefined;
//spr_idle_afk = [spr_player_idle1, spr_player_idle2];
//function get_random_idle() {
//    randomize();
//	curent_idle = choose(spr_player_idle1, spr_player_idle2);
//    sprite_index(current_idle);
//}




/*
animStayR = spr_v1PlayerStayR;
animStayL = spr_v1PlayerStayL;
animWalkR = spr_v2PlayerWalkR;
animWalkL = spr_v2PlayerWalkL;
animRunR = noone;
animRunL = noone;
animKickL = noone;
animKickR = noone;
//todo добавить анимайи и обозвать их переменными


