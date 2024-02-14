global.player_x = x
global.player_y = y

// move speed
move_speed = 6;

// function to check if our place is free
function check_free(_prop_x, _prop_y)
{
	return !place_meeting(x + _prop_x, y + _prop_y, par_wall);
}

sprite_index = player_idle_strip4;	