if (count >= 8)
{
	if (play_death) 
		audio_play_sound(shot_die, 99, false, 1, 0, random_range(0.9, 1.2));
	
	instance_destroy(self);	
}