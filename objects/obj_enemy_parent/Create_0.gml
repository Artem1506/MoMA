/// @description Insert description here
// You can write your code in this editor


solid = true;
is_agresive = true;
alert = false;
alert_dis = 1;
ready_attack = true

HP = 3;
patrol_speed = 0.5
move_speed = 1;
attack_dis = 32;
attack_delay = 30;
attack_cooldown = 360;
vis_dis = 250;
stun_time = 30;

path_start(p_lvl2_enemy1, patrol_speed,path_action_reverse, true)

path = path_add();
calc_path_delay = 30;
calc_path_timer = irandom(60);

instance_create_layer(x, y+10, "Instances", obj_trase);
