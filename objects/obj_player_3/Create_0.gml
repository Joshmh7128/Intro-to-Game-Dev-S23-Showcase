global.player_x = x
global.player_y = y

// move speed
move_speed = 1.5;
move_x = 0;
move_y = 0;

// function to check if our place is free
function check_free(_prop_x, _prop_y)
{
	return !place_meeting(x + _prop_x, y + _prop_y, par_wall);
}

sprite_index = player_idle_strip4;	

if (has_shadow)
{
	ourshadow = instance_create_depth(x,y, depth - 1, obj_under_shadow);
	ourshadow.follow_object = self;
	ourshadow.follow_offset = 4;
}

knockbacktime = 0;
knock_move_x = 0;
knock_move_y = 0;

flashtime = 0;

function get_hit(bullet_x, bullet_y)
{
	hp--;
	
	if (hp <= 0)
	{
		rundeath(bullet_x, bullet_y)
	}
	
	if (does_knockback)
	{	
		// do knockback movement
		knockbacktime = 12;
		// knock direction
		dir = point_direction(bullet_x, bullet_y, x, y);
	
		// add our knockback movement
		knock_move_x = lengthdir_x(4, dir)
		knock_move_y = lengthdir_y(4, dir)
	}
	
	// flash white
	if (has_shadow)
	{
		flashtime = 6;	
	}
	
	// check if we sleep
	if (instance_find(obj_cameraFX,0))
		if (global.does_sleep)
			instance_find(obj_cameraFX, 0).sleep();
}


function gunknock(inx, iny)
{
	if (does_knockback)
	{	
		// do knockback movement
		knockbacktime = 4;
		// knock direction
		dir = point_direction(inx, iny, x, y);
	
		// add our knockback movement
		knock_move_x = lengthdir_x(0.5, dir)
		knock_move_y = lengthdir_y(0.5, dir)
	}	
}

hp = 3;

function rundeath(killerx, killery)
{
	if (has_meaning)
	{	
		// create the death object
		dead = instance_create_depth(x,y,depth-1, obj_dead_player);
		dead.inx = killerx;
		dead.iny = killery;
	
		// end by destroying this object and its gun
		instance_destroy(ourshadow);
		instance_destroy(instance_find(obj_gun_handler_bigger,0));
		instance_destroy(self);
	}
}