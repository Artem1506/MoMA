/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_text(x,y+45,"animName" + string(animStayR)); 

for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
        var cell = obj_inventory.inventory_cells[i]; // Получаем ячейку
        
        // Если ячейка не пуста и содержит предмет, добавляем информацию о предмете
        if (cell.item != undefined && cell.item.itemName == "Трость") {

			animStayL = spr_playerStayL;
			//todo напихать все анимации с палкой для бега удара и т.д.
        }
}
