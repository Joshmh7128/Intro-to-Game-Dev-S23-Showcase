if (place_meeting(x,y, par_wall))
{
	instance_destroy(self);	
}

if (place_meeting(x,y,par_enemy))
{
	instance_place(x,y,par_enemy).hp -= 1;
	
	instance_destroy(self);	
}

image_angle = direction;

image_xscale = 0.5;
image_yscale = 0.5;