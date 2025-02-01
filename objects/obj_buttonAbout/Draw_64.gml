/// @description Creates a scrollable text box

if (spawn_GUI == true) {
	
	draw_sprite(spr_QR_linkToTelegram, 0, 64, 64);
	
	var version = extension_get_version("Windows")
	draw_text(0, 0, version)
	
    var box_x = 300, box_y = 0;       // Координаты верхнего левого угла
    var box_width = 382, box_height = 384; // Размеры рамки
    var text_margin = 5; // Отступ текста

    // Ограничение прокрутки
    if (scroll_offset < 0) scroll_offset = 0;
    var content_height = 1111;
    if (scroll_offset > content_height - box_height + text_margin) 
        scroll_offset = content_height - box_height + text_margin;
		
	// Управление прокруткой
    if (mouse_wheel_up()) scroll_offset -= 10; 
    if (mouse_wheel_down()) scroll_offset += 10;

    // Отрисовка рамки
	draw_set_alpha(0.8);
	
    draw_set_color(c_black);
    draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);

    draw_set_color(make_color_rgb(110, 106, 109));
    draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, true);
	
	draw_set_alpha(1);
	
    // Отрисовка текста
	draw_set_font(f_rus_default)
    var text_x = box_x + text_margin;
    var text_y = box_y + text_margin - scroll_offset; // Учитываем прокрутку
    draw_set_color(c_white);
    draw_text_ext(text_x, text_y, content, 15, box_width - text_margin);
}	
	if (keyboard_check_pressed(vk_escape)) {
		spawn_GUI = false;
	}
