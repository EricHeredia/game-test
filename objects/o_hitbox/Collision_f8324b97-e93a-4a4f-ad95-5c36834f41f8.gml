if creator == noone or creator == other {
	exit;
}

other.hp -= damage;
show_debug_message(other.hp);