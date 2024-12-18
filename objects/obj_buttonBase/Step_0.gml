/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    if (mouse_check_button_pressed(mb_left)) {
        sprite_index = pressedStule;
        is_pressed = true;
    } else if (mouse_check_button_released(mb_left) && is_pressed) {
        is_pressed = false;
        if (callback_function != noone) {
            callback_function(); 
        }
    } else {
        sprite_index = hoveredStule; 
    }
} else {
    sprite_index = normalStule; 
    is_pressed = false;
}