// move vector
if (knockbacktime == 0)
{
	_move_x = 0;
	_move_y = 0;
	
	// movement
	if (keyboard_check(ord("W")))
		_move_y = -1 * move_speed;
	if (keyboard_check(ord("S")))
		_move_y = 1 * move_speed;
	if (keyboard_check(ord("A")))
		_move_x = -1 * move_speed;
	if (keyboard_check(ord("D")))
		_move_x = 1 * move_speed;
}
	
if (check_free(_move_x, _move_y))
{
	// application of movement
	x += _move_x;
	y += _move_y;
	// also add our knockback movement
	x += knock_move_x;
	y += knock_move_y;
}

// reduce our knockback time
if (knockbacktime > 0)
	knockbacktime--;
else 
	knockbacktime = 0;
	
// slow our knockback x movements
if (knock_move_x > 0)
	knock_move_x -= 0.1;
else 
	knock_move_x = 0;
	
// slow our knockback y movements
if (knock_move_y > 0)
	knock_move_y -= 0.1;
else 
	knock_move_y = 0;
	
	
// set our position
global.player_x = x
global.player_y = y

// draw our sprites based on our movement inupts
if (abs(_move_x) > 0 || abs(_move_y) > 0)
{
	sprite_index = player_run_strip6;	
} else
{
	sprite_index = player_idle_strip4;	
}

// if we are hurt, flash our hurt sprite
if (flashtime > 0)
{
	sprite_index = player_run_hurt;
	flashtime--;
}

// flip the image if we need to
if (_move_x > 0)
	image_xscale = 1;

if (_move_x < 0)
	image_xscale = -1;
	
	

