/// @description Insert description here
// You can write your code in this editor

cam_siz = 1;
anim_index = noone;

solid = true;
is_agresive = true;
alert = false;
alert_dis = 1;
ready_attack = true
hit = false;
move_direction = undefined;
attacking = false;
incoming_dmg = false;

HP = 111;
//patrol_speed = 0.5
patrol_speed = 0
//move_speed = 1;
move_speed = 0;
attack_dis = 48;
//attack_delay = 30; todo подумать над зависимостью что типа скорость комнаты деленное на колличество кадров
attack_delay = 55;
attack_cooldown = 160;
vis_dis = 250;
stun_time = 30;

path_start(p_lvl2_enemy1, patrol_speed, path_action_reverse, true)

path = path_add();
calc_path_delay = 30;
calc_path_timer = irandom(60);

instance_create_layer(x, y+10, "Instances", obj_trase);

a_idle = spr_swordman_idle;
a_walk = spr_swordman_walk;
a_damage = spr_swordman_damage;
a_death = spr_swordman_death;
a_attack_1 = noone;
a_attack_2 = noone;
a_attack_3 = noone;
a_other = noone;


s_walk = noone; //звук шагов хз надо ли
s_damage = noone; //получение урона
s_damage_crit = snd_wilhelm_scream; 
s_death = noone; //крик+выдох
a_attack_1 = spr_swordman_attack_slow; 
a_attack_2 = noone;
a_attack_3 = noone;
a_other = noone;
