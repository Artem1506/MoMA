/// @description Insert description here
// You can write your code in this editor

if (global.mission_isDone == false &&  
collision_player == true) {
	show_debug_message("у меня нет цели, мне некуда идти")
	draw_sprite(spr_cloud, 0, x, y-64);
	draw_set_font(f_rus_default);
	draw_set_color(c_black);
	draw_text(x, y-70, "у меня нет цели, мне некуда идти");
}

if (global.mission_isDone == true &&  
collision_player == true &&
object_exists(obj_dialog_1_5)) {
	obj_dialog_1_5.visible = true;
	if (obj_dialog_1_5.dialog_action == "back") {
		show_debug_message("atention!!!")
		obj_dialog_1_5.visible = false }
	if (obj_dialog_1_5.dialog_end == true) {
	//audio_play_sound() эписная музычка
	room_goto(lvl_startPage);
	}
}