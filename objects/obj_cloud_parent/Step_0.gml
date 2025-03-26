/// @description Insert description here
// You can write your code in this editor

if (instance_exists(self)) { x += spd }

if (instance_exists(self) && x >= 1350) {
	x = -300
}

if (!place_meeting(x, y, obj_moon)) {
	obj_moon.current_spr = spr_moon_lvl2_1;
}
