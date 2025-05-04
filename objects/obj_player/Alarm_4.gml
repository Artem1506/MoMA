/// @description afk sprite
// You can write your code in this editor

if (!keyboard_check(vk_anykey) && !mouse_check_button(mb_any)) {
	afk = true;
	show_debug_message("afk")
    randomize();
	curent_idle = choose(spr_player_idle1, spr_player_idle2);
    sprite_index = curent_idle;
	
    // Проверяем каждые 30 кадров (0.5 сек), не вернулся ли игрок
    //alarm[0] = 30;  
} /*if (image_index >= 8.5) {
    // Если было нажатие - сбрасываем в исходное состояние
    //sprite_index = normal_sprite;
	afk = false;
    alarm[0] = 120;
}