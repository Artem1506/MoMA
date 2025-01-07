/// @description Insert description here
// You can write your code in this editor

	ini_open("saveGame.ini");	
	var id_gamer = ini_read_string("gamer", "id", "dW5kZWZpbmVk");
	global.idGamer = base64_decode(id_gamer);
	ini_close();

	text_input = "";
	max_length = 20;
	text_valid = false;
	input_active = true;
	blocked_symbols = ["\"", "'", "\\", ",", ";", "<", ">", "/", "|", ":"];
	obligatory_let = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", 
             "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
	obligatory_num = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];

	
	