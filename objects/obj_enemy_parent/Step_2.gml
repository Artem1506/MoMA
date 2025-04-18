/// @description Insert description here
// You can write your code in this editor

move_direction = sign(pre_x - x);

if (move_direction != 0) {
	sprite_index = a_walk;
}

if (move_direction == 0 && attacking != true && HP != 0 && incoming_dmg != true) {
	sprite_index = a_idle;
}

if (move_direction < 0) {
    image_xscale = 1;
} else if (move_direction > 0) {
    image_xscale = -1;
}