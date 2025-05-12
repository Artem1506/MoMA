/// @description Insert description here
// You can write your code in this editor

//show_debug_message(string(obj_trase.id))


if (id.image_xscale == 1) { obj_trase.x = id.x+16; }
if (id.image_xscale == -1) { obj_trase.x = id.x-16; }
obj_trase.y = id.y-16;
show_debug_message(string(obj_trase.x))

if (place_meeting(x, y, obj_enemy_parent)) {
    x = xprevious;
    y = yprevious;
}

attack_delay = game_get_speed(gamespeed_fps) / 10 * image_number

if (HP <= 0) {
	move_speed = 0
	solid = false
	//image_index = 0
	sprite_index = a_death;
	//audio_play_sound(s_death, 10, false)
	if (image_index >= 6.5) {
		//solid = false;
		instance_destroy()
	}
}

pre_x = xprevious;

if (is_agresive == true) {
	//alert_dis = (global.playerNoiseLvl * global.playerNoiseLvl * 2);
	
	check_player();
	if (alert == true && attack_dis >= distance_to_object(obj_player) && ready_attack == true) {
		attacking = true;
		ready_attack = false
		//draw_sprite(a_attack_1, anim_index, x,y)
		image_index = 0;
		sprite_index = a_attack_1;
		move_speed = 0;
		//ready_attack = false;
		alarm[0] = attack_delay;
	}
}

