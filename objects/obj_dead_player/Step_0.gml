// we don't want this to loop
if (image_index >= 2)
	image_speed = 0;
	
for (var i = 0; i < instance_number(obj_enemy_bullet_bigger); i++;)
{
	instance_destroy(instance_find(obj_enemy_bullet_bigger,i));
}

// set our global position
global.player_x = x;
global.player_y = y;

// set our direction
direction = point_direction(inx, iny, x, y)

// now bounce around the room
if (speed > 0)
{
	speed -= 0.1	
}

if (speed < 0)
{
	speed += 0.05
}

// move around

// check if we can move
var check_x = lengthdir_x(speed, direction)
var check_y = lengthdir_y(speed, direction)

if (!check_free(check_x, check_y))
{
	speed *= -1;
}