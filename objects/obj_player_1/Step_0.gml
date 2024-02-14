// move vector
var _move_x = 0;
var _move_y = 0;

// movement
if (keyboard_check(ord("W")))
	_move_y = -1
if (keyboard_check(ord("S")))
	_move_y = 1
if (keyboard_check(ord("A")))
	_move_x = -1
if (keyboard_check(ord("D")))
	_move_x = 1
	
if (check_free(_move_x, _move_y))
{
	// application of movement
	x += _move_x;
	y += _move_y;
}

// set our position
global.player_x = x
global.player_y = y
