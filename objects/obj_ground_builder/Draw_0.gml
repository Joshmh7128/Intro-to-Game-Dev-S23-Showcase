// go through all of our sprites and draw them every 32 pixels
for (x = 0; x < grid_size; x++)
{
	for (y = 0; y < grid_size; y++)
	{
		draw_sprite_ext(tile_sprites[data[x,y]], 0, x * 32, y * 32, 1, 1, 0, c_white, 1)
		// then make a ~10% chance to draw an extra on top of that
		if (extras[x,y] <= 1)
		{
			draw_sprite_ext(Desert_Extras_strip4, data[x,y], x * 32, y * 32, 1, 1, 0, c_white, 1)
		}
	}
}