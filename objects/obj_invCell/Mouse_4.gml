/// @description Insert description here
// You can write your code in this editor

if (itemData.itemObject != undefined) {
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_dragItem);
	obj_dragItem.itemData = itemData;
	obj_dragItem.sprite_index = asset_get_index(itemData.itemIcoName);
	
	self.itemData = {
	itemIcoName : undefined,
	itemObject : undefined
	};
}

