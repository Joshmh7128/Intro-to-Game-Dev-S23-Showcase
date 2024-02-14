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
	if (can_shoot)
	{
		counter = 60 + random_range(0, 120);
	
		shotpos_x = lengthdir_x(24, image_angle)
		shotpos_y = lengthdir_y(24, image_angle)
	
	
		var ourshot = instance_create_depth(x+shotpos_x, y+shotpos_y,depth-1, obj_enemy_bullet_bigger);
		ourshot.direction = point_direction(x,y, global.player_x, global.player_y);
		// play a sound
		audio_play_sound(shot_1, 99, false, 1, 0, random_range(0.9, 1.2));

		if (does_flash)
		{
			instance_create_depth(x+shotpos_x, y+shotpos_y,depth-1, obj_flash);
			var ourshadow = instance_create_depth(x,y, depth - 1, obj_under_shadow);
			ourshadow.follow_object = ourshot;
			ourshadow.follow_offset = 4;
		}
	
		if (shells)
		{
			instance_create_depth(x,y,depth-1, obj_bullet_shell);
		}
	}
}