/// @description Insert description here
// You can write your code in this editor



if (instance_exists(dialog_current) && 
dialog_current.dialog_action == "draw_message") {
	draw_sprite(spr_quest1_p1, 0, 422, 32);
}
if (instance_exists(dialog_current) && 
dialog_current.dialog_action == "draw_message_2") {
	draw_sprite(spr_quest1_p2, 0, 422, 32);
}
