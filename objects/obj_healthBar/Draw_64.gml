/// @description рисование ХП бара

draw_self();

if (global.playerHp != undefined || global.playerHp != noone) {
	if (global.playerHp >= 2){
		sprite_index = spr_healthBar_full 
		}
	if (global.playerHp = 1){
		sprite_index = spr_healthBar_low 
		}
	if (global.playerHp <= 0){
		sprite_index = spr_healthBar_empty 
		} 
	else if (global.playerHp == undefined || global.playerHp == noone) { 
		sprite_index = 0;
		draw_text(x, y, "error");
	}
}


