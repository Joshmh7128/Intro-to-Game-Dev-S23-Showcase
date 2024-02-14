// give ourselves a gun
our_gun = instance_create_depth(x,y,depth-1, obj_bandit_gun_handler_bigger)
our_gun.target_obj = self;
our_gun.does_flash = does_flash
our_gun.shells = shells;

move_speed = 1; // how fast we move
start_speed = 1; // constant

move_direction = random_range(0, 360) // our random start movement direction

counter = 120 + random_range(0, 120);

// function to check if our place is free
function check_free(_prop_x, _prop_y)
{
	return !place_meeting(x + _prop_x, y + _prop_y, par_wall);
}

hp = 2;
last_frame_hp = 2;
hurt_flash = 0;
knockback_time = 0;

if (has_shadow)
{
	ourshadow = instance_create_depth(x,y, depth - 1, obj_under_shadow);
	ourshadow.follow_object = self;
	ourshadow.follow_offset = 4;
}
