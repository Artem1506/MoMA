/// @description Insert description here
// You can write your code in this editor

// Убедитесь, что global.playerIsInteract проверяется через сравнение (==), а не присваивание (=)
if (global.playerIsInteract = true) {
    // Переменная для поиска подходящей ячейки
    var slot = -1;

    // Пройдем по всем ячейкам инвентаря, чтобы найти подходящую для предмета
    for (var i = 0; i < array_length_1d(obj_inventory.inventory_cells); i++) {
        var cell = obj_inventory.inventory_cells[i];

        // Проверяем, свободна ли ячейка и подходит ли она для данного предмета
        if (cell.cell_type == "none") {  // Пустая ячейка
            slot = i;
			show_debug_message("Нашли пустую ячейку на позиции " + string(i));
            break;
        } 
        else if (cell.cell_type == "r_hand" && self.type == "r_hand") {  // Тип предмета "r_hand"
            slot = i;
			show_debug_message("Нашли пустую ячейку на позиции right " + string(i));
            break;
        }
        else if (cell.cell_type == "l_hand" && self.type == "l_hand") {  // Тип предмета "l_hand"
            slot = i;
            break;
        }
    }

    // Если нашли свободную ячейку
    if (slot != -1) {
        var target_cell = obj_inventory.inventory_cells[slot];
		show_debug_message("Добавляем предмет в ячейку с индексом " + string(slot));

        // Помещаем предмет в ячейку
        target_cell.item = self;  // Сохраняем ссылку на объект в ячейке

        // Убедимся, что ячейка больше не пуста (не "none")
        target_cell.cell_type = self.type;  // Устанавливаем тип ячейки в тип предмета
		show_debug_message("Ячейка теперь заполнена предметом типа " + self.type);
		
	

        // Уничтожаем предмет из мира
        //instance_destroy();  // Теперь уничтожаем объект
    } else {
        // Если нет свободных ячеек, уведомляем игрока (например, выводим сообщение)
        show_message("Инвентарь полон!");
    }
}
