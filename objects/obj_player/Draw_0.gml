/// @description Insert description here
// You can write your code in this editor

draw_self();

//draw_text(x,y+45,"animName" + string(animStayR)); 

var rHand = obj_inventory.inventory_cells[0];
        if (rHand.item != undefined && rHand.item.itemName == "Трость") {
			animStayR = spr_v2PlayerStayR;
			animStayL = spr_v2PlayerStayL;
			//todo напихать все анимации с палкой для бега удара и т.д.
        } if (rHand.item == undefined) {
			animStayR = spr_v1PlayerStayR;
			animStayL = spr_v1PlayerStayL;
		}
//todo зархардкодить спрайт для бутылке в правой руке
