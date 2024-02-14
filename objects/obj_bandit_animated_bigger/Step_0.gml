if (knockback_time <= 0)
	direction = move_direction;

if (knockback_time >= 0)
	knockback_time--;

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

// slow down movespeed
if (move_speed > start_speed)
	move_speed -= 0.05

counter--;
// stop moving for a little
if (counter <= 30)
{
	move_speed = 0;	
}

// every 2 seconds change our direction
if (counter <= 0 && knockback_time <= 0)
{
	move_direction = random_range(0, 360)
	counter = 120 + random_range(0, 120);
	move_speed = 1;	
}

// has our HP changed since the last frame
if (hp != last_frame_hp)
{
	// set it
	last_frame_hp = hp;
	// we took damage, so flash our character
	if (does_flash)
		hurt_flash = 6;
		
	// then knock us back
	if (does_knockback)
	{
		knockback_time = 30;
		direction = point_direction(global.player_x, global.player_y,x,y)
		move_speed = start_speed * 5;
	}
}

// die
if (hp <= 0)
{
	if (has_shadow)
		instance_destroy(ourshadow);	
	
	// play the sound
	audio_play_sound(enemy_death, 99, false, 1, 0, random_range(0.9, 1.2));
	
	// if we do knockback, create a dead version of ourselves
	if (does_knockback)
		instance_create_depth(x,y,depth-1, obj_dead_bandit)
	
	instance_destroy(our_gun.id);
	instance_destroy(self);	
}

// normal movement
if (hurt_flash <= 0)
{
	if (speed == 0)
	{
		sprite_index = bandit_idle_strip4;
	}
	else
	{
		sprite_index = bandit_walk_strip6;	
	}
}

// hurt flash
if (hurt_flash > 0)
{
	hurt_flash--;
	// play our hurt sprite
	sprite_index = bandit_walk_hurt
}

if (move_direction > 90 && move_direction < 270)
{
	image_xscale = -1;	
} else
{
	image_xscale = 1;
}