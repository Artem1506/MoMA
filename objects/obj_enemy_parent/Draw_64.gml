/// @description Insert description here
// You can write your code in this editor


if (hit == true) {
	if (cam_siz < 1) { cam_siz += 0.01 }
	//camera_set_view_pos(view_camera[0], x+100, y)
	camera_set_view_size(view_camera[0], 682*cam_siz, 384*cam_siz)
	
	if (cam_alph > 0) { cam_alph -= 0.01 }
	draw_set_alpha(cam_alph)
	draw_set_color(c_red)
	draw_rectangle(0, 0, 682, 384, false)
}
show_debug_message(string(cam_siz))



/*

var spd = room_height * 5;
var step = 476 / spd 

if (alert == true) {
	if (x2 < 577) { x2 += step }
	
	draw_set_color(c_red)
	draw_rectangle(101, 372, x2, 377, false)
}


