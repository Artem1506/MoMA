// Script assets have changed for v2.3.0 see

function check_player (){
	var dis = distance_to_object(obj_player);
	move_towards_point(obj_player.x, obj_player.y, 1);

}