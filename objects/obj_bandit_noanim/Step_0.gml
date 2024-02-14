direction = move_direction;

// check if we can move
var check_x = lengthdir_x(move_speed, direction)
var check_y = lengthdir_y(move_speed, direction)

if (check_free(check_x, check_y))
{
	speed = move_speed;	
} else
{
	move_speed *= -1;
}

counter--;
// stop moving for a little
if (counter <= 30)
{
	move_speed = 0;	
}

// every 2 seconds change our direction
if (counter <= 0)
{
	move_direction = random_range(0, 360)
	counter = 120 + random_range(0, 120);
	move_speed = 1;	
}

// die
if (hp <= 0)
{
	instance_destroy(our_gun.id);
	instance_destroy(self);	
}
