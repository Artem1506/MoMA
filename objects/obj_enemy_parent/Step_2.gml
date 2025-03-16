/// @description Insert description here
// You can write your code in this editor

var move_direction = sign(pre_x - x);
if (move_direction < 0) {
    image_xscale = -1;
} else if (move_direction > 0) {
    image_xscale = 1;
}