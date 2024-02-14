// move to target_obj position
x = target_obj.x
y = target_obj.y

// rotate to player
image_angle = point_direction(x,y, global.player_x, global.player_y);

// if our angle is more than 180 change the index to the upsidedown one
if (image_angle > 90 && image_angle < 270)
	image_index = 1;
else
	image_index = 0;

counter--;
// every few seconds, shoot the player
if (counter <= 0)
{
	counter = 60 + random_range(0, 120);	
	var ourshot = instance_create_depth(x,y,depth-1, obj_enemy_bullet);
	ourshot.direction = point_direction(x,y, global.player_x, global.player_y);
}