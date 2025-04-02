/// @description Insert description here
// You can write your code in this editor

//show_debug_message(string(alarm[0]))

if (run = false) {
	alarm[0] = delay;
	//show_debug_message(string(alarm[0]))
}

if (run = true) { 
	show_debug_message(string(alarm[0]))
	x += spd;
	if (x > room_width+200) {
		x = -200;
		run = false;
	}
}
