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

HP = 1;
patrol_speed = 0.5
move_speed = 1;
attack_dis = 32;
attack_delay = 30;
attack_cooldown = 360;
vis_dis = 250;
stun_time = 30;

path_start(p_lvl2_enemy1, patrol_speed, path_action_reverse, true)

path = path_add();
calc_path_delay = 30;
calc_path_timer = irandom(60);

instance_create_layer(x, y+10, "Instances", obj_trase);

a_idle = noone;
a_walk = noone;
a_damage = noone;
a_death = spr_swordman_death;
a_attack_1 = noone;
a_attack_2 = noone;
a_attack_3 = noone;
a_other = noone;


s_walk = noone; //звук шагов хз надо ли
s_damage = noone; //получение урона
s_damage_crit = snd_wilhelm_scream; 
s_death = noone; //крик+выдох
a_attack_1 = noone; 
a_attack_2 = noone;
a_attack_3 = noone;
a_other = noone;
