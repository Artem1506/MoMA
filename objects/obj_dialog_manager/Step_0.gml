/// @description Insert description here
// You can write your code in this editor

if (visible == true) { instance_deactivate_object(obj_player)
	//keyboard_check_pressed(ord("W")) || 
	//keyboard_check_pressed(ord("A")) ||
	//keyboard_check_pressed(ord("S")) || 
	//keyboard_check_pressed(ord("D")) 
}
 
//else { playerSpeed = 1 }
	

// Определяем переменную для выбранного варианта
var selected_choice = "";

// Обрабатываем выбор через цифры
if (keyboard_check_pressed(ord("1"))) {
    selected_choice = "a";  // Выбор "a"
}
if (keyboard_check_pressed(ord("2"))) {
    selected_choice = "b";  // Выбор "b"
}
if (keyboard_check_pressed(ord("3"))) {
    selected_choice = "c";  // Выбор "c"
}

// Обрабатываем выбор с помощью стрелки вниз
if (keyboard_check_pressed(vk_down)) {
    // В этом случае просто меняем выбор, например, на "b"
    selected_choice = "b";
}

// Обрабатываем подтверждение выбора
if (keyboard_check_pressed(vk_enter) && selected_choice != "") {
    process_choice(selected_choice);  // Обрабатываем выбранный вариант
}

// В зависимости от текущего выбора отображаем выделенный вариант
if (selected_choice == "a") {
    show_debug_message("Choice A selected");
}
else if (selected_choice == "b") {
    show_debug_message("Choice B selected");
}
else if (selected_choice == "c") {
    show_debug_message("Choice C selected");
}
