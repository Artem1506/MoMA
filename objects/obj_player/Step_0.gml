/// @description Insert description here
// You can write your code in this editor

// перемещение персонажа
if (keyboard_check(ord("A"))) { x -= playerSpeed; }
if (keyboard_check(ord("D"))) { x += playerSpeed; }
if (keyboard_check(ord("W"))) { y -= 1; } // переменную выпелил ибо нех впадлу рисовать анимации бега вверх и вниз
if (keyboard_check(ord("S"))) { y += 1; }

// при зажатом шифте включаем бег 
if (keyboard_check(vk_shift)) { playerSpeed = 3; 
}	else { playerSpeed = 1;
	}

// изменение маркера 
	if (!place_meeting(x,y,obj_lamp1)) {
		global.playerIsShadow = true;
	}
