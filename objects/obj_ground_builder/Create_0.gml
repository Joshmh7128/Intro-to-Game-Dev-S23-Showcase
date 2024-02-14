grid_size = 64;
// populate the room with our ground tiles
data = [grid_size, grid_size] // tile data
extras = [grid_size, grid_size] // extras data
// fill each int with randomized tile data
for (x = 0; x < grid_size; x++)
{
	for (y = 0; y < grid_size; y++)	
	{
		data[x,y] = int64(random_range(0, 4));
		extras[x,y] =  int64(random_range(0, 10));
	}
}

// then create a list of the tiles
tile_sprites = [Desert_Tile_1, Desert_Tile_2, Desert_Tile_3, Desert_Tile_4]