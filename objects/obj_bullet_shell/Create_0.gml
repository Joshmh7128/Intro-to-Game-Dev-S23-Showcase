direction = random_range(0, 360)
speed = random_range(2, 6)
rot_speed = random_range(5, 20)

// function to check if our place is free
function check_free(_prop_x, _prop_y)
{
	return !place_meeting(x + _prop_x, y + _prop_y, par_wall);
}