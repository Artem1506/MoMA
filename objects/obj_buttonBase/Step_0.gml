/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    if (mouse_check_button_pressed(mb_left)) {
        is_pressed = true;
		audio_play_sound(snd_mecanicalClick, 1, false);
		sprite_index = pressedStyle;
		} else if (mouse_check_button_released(mb_left) && is_pressed == true) {
			is_pressed = false;
			sprite_index = hoveredStyle;
				if (callback_function != noone) {
					callback_function(); 
					}
			} else if (!mouse_check_button(mb_left)) {
					sprite_index = hoveredStyle;
				//	audio_play_sound(snd_shortClick, 1, false); воспроизводится зациклено, низкий приоритет потом можно починить
					}
	} else {
    sprite_index = normalStyle; 
    is_pressed = false;
}