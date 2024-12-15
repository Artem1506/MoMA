/// @description Insert description here
// You can write your code in this editor

if (item != undefined) {
	is_dragging = true;
	dragItem = item;
	//itemIco = noone; // если скрыто это и показать ячейке то при релизе лкм дропается с ошибкой
	sprite_index = noone; //если скрыть это и показать строку 7, не переключается на исдрагинг фолс
	drag_offset_x = mouse_x - x;
	drag_offset_y = mouse_y - y;
	item = undefined;
}

