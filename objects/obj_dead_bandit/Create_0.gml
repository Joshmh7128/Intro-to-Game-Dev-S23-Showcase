// set our launch direction
direction = point_direction(global.player_x, global.player_y, x, y)
speed = 5

// function to check if our place is free
function check_free(_prop_x, _prop_y)
{
	return !place_meeting(x + _prop_x, y + _prop_y, par_wall);
}

ourshadow = instance_create_depth(x,y, depth + 1, obj_under_shadow);
ourshadow.follow_object = self;
ourshadow.follow_offset = 4;