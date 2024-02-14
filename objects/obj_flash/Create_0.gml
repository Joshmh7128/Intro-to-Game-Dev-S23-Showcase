play_death = false
count = 0;

// shake if we are close enough to the player
if (instance_find(obj_cameraFX,0) && distance_to_point(global.player_x, global.player_y) < 30)
{
	global.shaker.shaketime = 8;
}