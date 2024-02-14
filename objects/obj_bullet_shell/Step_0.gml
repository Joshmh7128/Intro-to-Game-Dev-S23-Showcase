// slow down overtime towards zero
if (speed > 0)
{
	speed -= 0.1	
}

if (speed < 0)
{
	speed += 0.05
}

if (rot_speed > 0)
{
	rot_speed -= 0.1	
}

if (rot_speed < 0)
{
	rot_speed += 0.05
}

image_angle += rot_speed;

// check if we can move
var check_x = lengthdir_x(speed, direction)
var check_y = lengthdir_y(speed, direction)

if (!check_free(check_x, check_y))
{
	speed *= -1;
}