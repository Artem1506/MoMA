/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index, 0, x + offset_x, y + offset_y);

if (sprite_index == spr_inventoryBg && global.playerMoney > 0) {
	draw_set_font(f_rus_defaultBig);
	draw_set_color(c_red);
	draw_text(x + offset_x, y + offset_y, "пай - "+string(global.playerMoney));
	// временно, потом норм монетку вставить
	draw_sprite(spr_check_coin, spr_check_coin, x+offset_x+45, y+offset_y)
}
