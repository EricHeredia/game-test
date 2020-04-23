if creator == noone or creator == other or ds_list_find_index(hit_objects, other) != -1 {
	exit;
}

other.hp -= damage;

if instance_exists(o_skeleton) and creator.object_index == o_skeleton and other.hp <= 0 {
	o_skeleton.kills += 1;
}

ds_list_add(hit_objects, other);
show_debug_message(other.hp);
other.state = "knockback";
other.knockback_speed = knockback * image_xscale;
other.image_xscale = -image_xscale;