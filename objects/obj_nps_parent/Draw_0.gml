/// @description Insert description here
// You can write your code in this editor

draw_self();

if (obj_dialog_1_4.dialog_action == "draw_message") {
	draw_sprite(spr_about_hovered, 0, 422, 32);
}
if (obj_dialog_1_4.dialog_action == "draw_message_2") {
	draw_sprite(spr_about_normal, 0, 422, 32);
}
