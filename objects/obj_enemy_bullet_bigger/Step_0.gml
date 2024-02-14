if (place_meeting(x,y, par_wall))
{
	instance_destroy(self);	
	ourflash = instance_create_depth(x,y,depth-1,obj_flash)
	ourflash.play_death = true;
	
}

image_angle = direction;

image_xscale = 1.25;
image_yscale = 1.25;

// if we collide with the player, break and deal damage
if (place_meeting(x,y, obj_player_3))
{
	instance_destroy(self);	
	ourflash = instance_create_depth(x,y,depth-1,obj_flash)
	ourflash.play_death = true;
	instance_find(obj_player_3,0).get_hit(x,y);
}