// Script assets have changed for v2.3.0 see

function check_player (){
	if (instance_exists(obj_player)) {
		var _dis = point_distance(obj_player.x, obj_player.y, self.x, self.y);
		var _dis2 = distance_to_object(obj_player);
		
		if ((_dis <= alert_dis) or alert) and _dis2 > attack_dis {
			alert = true;
			if (instance_exists(obj_alertBar)) { obj_alertBar.alert = true }
			if calc_path_timer-- <= 0 {
				calc_path_timer = calc_path_delay;
				var _found_player = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, choose(0, 1))
	
				if _found_player {
					path_start(path, move_speed, path_action_stop, false)
				}
			}
		} else {
			if _dis2 <= attack_dis {
				path_end();
			}
		}
	}	
}
