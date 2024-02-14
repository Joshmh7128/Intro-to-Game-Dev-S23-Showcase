// move to player position
x = global.player_x
y = global.player_y

// rotate to player
image_angle = point_direction(x,y, mouse_x, mouse_y);

// if our angle is more than 180 change the index to the upsidedown one
if (image_angle > 90 && image_angle < 270)
	image_index = 1;
else
	image_index = 0;
	
remaining_firerate--;

// if we are clicking and our firerate is low enough shoot
if (!mouse_check_button(0) && remaining_firerate <= 0)
{
	shotpos_x = lengthdir_x(16, image_angle)
	shotpos_y = lengthdir_y(16, image_angle)
	
	ourshot = instance_create_depth(x+shotpos_x, y+shotpos_y,depth-1, obj_player_bullet_fast)
	ourshot.direction = point_direction(x,y, mouse_x, mouse_y);
	remaining_firerate = firerate;
	
	// play a sound
	audio_play_sound(shot_sounds[irandom_range(0, 2)], 99, false, 1, 0, random_range(0.9, 1.2));
}