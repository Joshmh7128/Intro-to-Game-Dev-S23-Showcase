if (speed > 0)
{
	speed -= 0.1	
}

if (speed < 0)
{
	speed += 0.05
}

// we don't want this animation to loop
if (image_index >= 5)
	image_speed = 0;
	
// move around

// check if we can move
var check_x = lengthdir_x(speed, direction)
var check_y = lengthdir_y(speed, direction)

if (!check_free(check_x, check_y))
{
	speed *= -1;
}