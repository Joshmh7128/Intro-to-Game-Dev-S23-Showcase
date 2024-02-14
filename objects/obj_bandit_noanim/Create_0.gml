// give ourselves a gun
our_gun = instance_create_depth(x,y,depth-1, obj_bandit_gun_handler_basic)
our_gun.target_obj = self;

move_speed = 0.5; // how fast we move

move_direction = random_range(0, 360) // our random start movement direction

counter = 120 + random_range(0, 120);

image_speed = 0;

// function to check if our place is free
function check_free(_prop_x, _prop_y)
{
	return !place_meeting(x + _prop_x, y + _prop_y, par_wall);
}

hp = 5;