/// @description Insert description here
// You can write your code in this editor


draw_self();

if (global.playerIsShadow = true){
	draw_sprite(spr_lampMarker_off,spr_lampMarker_off,x,y);
} else { 
	draw_sprite(spr_lampMarker_on,spr_lampMarker_on,x,y);
}