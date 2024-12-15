/// @description Insert description here
// You can write your code in this editor

if (item != undefined) {
	drag_item = instance_create_layer(mouse_x, mouse_y, "Instances", obj_dragItem);
	
	drag_item.item = item;
	drag_item.sprite_index = item.sprite_index;
	
	//is_dragging = true;
	//dragItem = item;
	//drag_offset_x = mouse_x - x;
	//drag_offset_y = mouse_y - y;
	item = undefined;
	//item.sprite_index = noone;
}

