if creator == noone or creator == other or ds_list_find_index(hit_objects, other) != -1 {
	exit;
}

other.hp -= damage;
ds_list_add(hit_objects, other);
show_debug_message(other.hp);
other.state = "knockback";
other.knockback_speed = knockback * image_xscale;
other.image_xscale = -image_xscale;