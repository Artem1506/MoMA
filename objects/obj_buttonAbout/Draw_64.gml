/// @description Insert description here
// You can write your code in this editor

if (spawn_GUI == true) {

// Размеры скроллбокса
var box_x = 300;       // X-координата левого верхнего угла
var box_y = 50;       // Y-координата левого верхнего угла
var box_width = 300;   // Ширина
var box_height = 250;  // Высота

content_height = undefined;
scroll_offset = 0;

// Фон и рамка скроллбокса
draw_set_color(c_black);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);

draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, true);

// Управление прокруткой
if (mouse_wheel_up()) scroll_offset -= 10; // Прокрутка вверх
if (mouse_wheel_down()) scroll_offset += 10; // Прокрутка вниз

// Отрисовка текста с учетом прокрутки
var text_margin = 10;
var text_x = box_x + text_margin;
var text_y = box_y + text_margin;

if (content_height == undefined) content_height = string_height_ext(content, box_width - text_margin * 2, 0);
if (scroll_offset == undefined) scroll_offset = 0;

// Ограничения прокрутки
if (scroll_offset < 0) scroll_offset = 0;
if (scroll_offset > content_height - box_height + text_margin * 2) 
    scroll_offset = content_height - box_height + text_margin * 2;

draw_set_color(c_white);
draw_text_ext_transformed(text_x, text_y - scroll_offset, content, box_width - text_margin * 2, 0, 1, 1, 1);
}
