global.player_x = x
global.player_y = y

// move speed
move_speed = 6;

image_speed = 0;

// function to check if our place is free
function check_free(_prop_x, _prop_y)
{
	return !place_meeting(x + _prop_x, y + _prop_y, par_wall);
}