/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index, 0, x + offset_x, y + offset_y);

if (sprite_index == spr_inventoryBg) {
	draw_set_font(f_rus_defaultBig);
	draw_set_color(c_red);
	draw_text(x + offset_x, y + offset_y, "coins - "+string(global.playerMoney));
}
