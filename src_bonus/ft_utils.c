#include "../inc_bonus/cub3d_bonus.h"

t_map	*create_empty_map()
{
	t_map	*map;
	int		counter;

	counter = -1;
	map = malloc(sizeof(*map));
	if (!map)
		return (NULL);
	map->map = NULL;
	map->enemies = NULL;
	while (++counter < MAX_WALL_CHARS)
		map->walls[counter].texture = NULL;
	counter = -1;
	while (++counter < MAX_ENTITIES)
		map->entity[counter].texture = NULL;
	map->C = 0;
	map->F = 0;
	map->bonus = 0;
	map->path_prefix = 0;
	map->player_coords.x = BAD_COORD;
	map->player_coords.y = BAD_COORD;
	map->last_collision.x = BAD_COORD;
	map->last_collision.y = BAD_COORD;
	return (map);
}

int	ft_arraylen(void **arr)
{
	int	counter;

	counter = 0;
	while (arr && arr[counter])
		++counter;
	return (counter);
}

int	is_space(char c)
{
	return (c != ' ' && c != '\t' && c != '\n');
}

int		ft_is_empty(char *line)
{
	while (line && *line)
	{
		if (is_space(*line))
			return (0);
		++line;
	}
	return (1);
}

void	error_exit(t_game *game, int return_value, char *message)
{
	if (return_value)
	{
		ft_putendl_fd(message, 2);
	}
	//free(all)
	// (void ) game;
	if (game != NULL)
		mlx_do_key_autorepeaton(game->mlx.id);
	exit(return_value);
}

t_img	initialize_img(t_img *img, void *mlx_ptr, int width, int height)
{
	img->mlx_img = mlx_new_image(mlx_ptr, width, height);
	if (img->mlx_img == NULL)
		error_exit(NULL, 1, "Memory allocation error: t_img");
	img->addr = (int *) mlx_get_data_addr(img->mlx_img, &img->bpp, &img->line_length, &img->endian);
	img->size = (t_vector) {width, height};
	return (*img);
}

void	print_map_debug(t_map *map)
{
	char	**ptr;

	printf("NO %s\nSO %s\nWE %s\nEA %s\nF %d,%d,%d\nC %d,%d,%d\n\n",
		(char *)map->walls[0].texture->content, (char *)map->walls[1].texture->content,
		(char *)map->walls[2].texture->content, (char *)map->walls[3].texture->content,
		map->F >> 16, (map->F >> 8) % (1 << 8), map->F % (1 << 8),
		map->C >> 16, (map->C >> 8) % (1 << 8), map->C % (1 << 8));
	printf("Player X: %d\nPlayer Y: %d\nPlayer orientation: %f\n",
		map->player_coords.x, map->player_coords.y, map->player_orient);
	ptr = map->map;
	while (*ptr)
	{
		printf("%s\n", *ptr);
		++ptr;
	}
	// printf("\nIs enclosed? %d\n", is_enclosed(map));
}
