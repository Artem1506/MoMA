// Script assets have changed for v2.3.0 see

function check_player (){
	if (instance_exists(obj_player)) {
		var _dis = distance_to_object(obj_player);
		//move_towards_point(obj_player.x, obj_player.y, 1);
		if ((_dis <= alert_dis) or alert) and _dis > attack_dis {
			alert = true;
			if calc_path_timer-- <= 0 {
				calc_path_timer = calc_path_delay;
				var _found_player = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, choose(0, 1))
	
				if _found_player {
					path_start(path, move_speed, path_action_stop, false)
				}
			}
		} else {
			if _dis <= attack_dis {
				path_end();
			}
		}
	}	
}
