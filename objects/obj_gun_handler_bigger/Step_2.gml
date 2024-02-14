// if we want to slow the lerp
if (physicality)
{
	x = lerp(x, global.player_x, 0.5)
	y = lerp(y, global.player_y, 0.5)
	
} else
{
	// move to target_obj position
	x = global.player_x
	y = global.player_y
}

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
	shotpos_x = lengthdir_x(24, image_angle)
	shotpos_y = lengthdir_y(24, image_angle)
	
	ourshot = instance_create_depth(x+shotpos_x, y+shotpos_y,depth-1, obj_player_bullet_bigger)
	ourshot.direction = point_direction(x,y, mouse_x, mouse_y);
	ourshot.has_shadow = does_flash;
	
	if (is_inaccurate)
	{
		ourshot.direction = point_direction(x,y, mouse_x + random_range(-10,10), mouse_y + random_range(-10,10));
	}
	
	remaining_firerate = firerate;
	
	// play a sound
	audio_play_sound(shot_sounds[irandom_range(0, 2)], 99, false, 1, 0, random_range(0.9, 1.2));
	
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
	
	// call our knockback on the player
	instance_find(obj_player_3,0).gunknock(x+shotpos_x, y+shotpos_y)
}