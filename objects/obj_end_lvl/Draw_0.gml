/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
	var pos_x = obj_player.x;
	var pos_y = obj_player.y;
}

if (global.mission_isDone == false &&  
collision_player == true) {
	show_debug_message("у меня нет цели, мне некуда идти")
	draw_sprite(spr_cloud, 0, pos_x, pos_y);
	draw_set_font(f_rus_default);
	draw_set_color(c_black);
	draw_text(pos_x-10, pos_y-49, "Нет цели,");
	draw_text(pos_x-10, pos_y-39, "некуда идти");
}

if (global.mission_isDone == true &&  
collision_player == true && 
instance_exists(obj_dialog_1_5)) {
	obj_dialog_1_5.visible = true;}
	if (instance_exists(obj_dialog_1_5) && 
	obj_dialog_1_5.dialog_action == "back" && 
	!instance_exists(obj_player)) {
		instance_activate_object(obj_player);
		obj_player.x = 560;
		obj_player.y = 145;
		obj_dialog_1_5.visible = false; 
		obj_dialog_1_5.current_node = "node_2";}
	if (next_lvl == true) {
	//audio_play_sound() эпичная музычка
		room_goto(lvl_startPage); 
		//тут переход в комнату со статистикой или в слой со статистикой
	}
