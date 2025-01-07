/// @description Insert description here
// You can write your code in this editor

if (global.idGamer == "undefined") {
	instance_deactivate_layer("Instances");
	instance_activate_object(obj_idGamerSystem);
	draw_sprite(spr_inputUser, 1, 128, 64);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(f_rus_default);
	draw_text(153, 120, text_input);
	
	if (text_valid == true && input_active == true) {
		draw_set_color(make_color_rgb(5, 50, 5));
		draw_text(153, 140, "Нажатие Enter для подтверждения");
	}
}