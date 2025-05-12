/// @description 
// You can write your code in this editor

cam_siz = 1;
anim_index = noone;

solid = true;
is_agresive = true;
alert = false;
ready_attack = true
hit = false;
move_direction = undefined;
attacking = false;
incoming_dmg = false;

alert_dis = 1; //noise trigger distance
HP = 10; //self hit point
patrol_speed = 0.5 //speed when 'alert = false' (pixel per second)
move_speed = 1; //base speed (pixel per second)
attack_dis = 48; //distance when enemy stop moving and attack (pixel)
attack_delay = undefined; //will set in step event
attack_cooldown = room_speed * 2; //time betweene attack 
vis_dis = 250; //visible trigger distance (pixel)
stun_time = room_speed * 3; //stun time

//path_start(p_lvl2_enemy1, patrol_speed, path_action_reverse, true); // if need, set in instance

path = path_add();
calc_path_delay = 30;
calc_path_timer = irandom(120);


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
