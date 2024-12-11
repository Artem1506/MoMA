/// @description Insert description here
// You can write your code in this editor

draw_self();

if (global.playerHp >= 2){
	draw_sprite(spr_healthBar_full,gif_hp_full,x,y);
}
if (global.playerHp = 1){
	draw_sprite(spr_healthBar_low,gif_hp_low,x,y);
}
if (global.playerHp <= 0){
	draw_sprite(spr_healthBar_empty,gif_hp_empty,x,y);
}

gif_hp_full += 0.2;
gif_hp_low += 0.5;
gif_hp_empty += 0.5;