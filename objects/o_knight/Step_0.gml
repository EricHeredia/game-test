switch (state) {
	case "chase":
		#region Chase State
		set_state_sprite(s_knight_walk, .4, 0);
		if !instance_exists(o_skeleton) break;
		
		image_xscale = sign(o_skeleton.x - x);
		if image_xscale == 0 {
			image_xscale = 1;
		}
		
		var direction_facing = image_xscale;
		var distance_to_player = point_distance(x, y, o_skeleton.x, o_skeleton.y);
		
		if distance_to_player <= attack_range {
			state = "attack";
		} else {
			move_and_collide(direction_facing * chase_speed, 0);
		}
		
		#endregion
		break;
	
	case "attack":
		#region Attack State
		set_state_sprite(s_knight_attack, .6, 0);
		if animation_end() {
			state = "chase";
		}
		#endregion
		break;
}