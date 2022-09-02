#include "../inc/cub3d.h"

t_map	*create_empty_map()
{
	t_map	*map;

	map = malloc(sizeof(*map));
	map->map = NULL;
	// map->texture_list[0] = NULL;
	// map->texture_list[1] = NULL;
	// map->texture_list[2] = NULL;
	// map->texture_list[3] = NULL;
	map->NO = NULL;
	map->SO = NULL;
	map->WE = NULL;
	map->EA = NULL;
	map->C = 0;
	map->F = 0;
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

void	print_map_debug(t_map *map)
{
	char	**ptr;

	// printf("NO %s\nSO %s\nWE %s\nEA %s\nF %d,%d,%d\nC %d,%d,%d\n\n",
	// 	map->NO, map->SO, map->WE, map->EA,
	// 	map->F >> 16, (map->F >> 8) % (1 << 8), map->F % (1 << 8),
	// 	map->C >> 16, (map->C >> 8) % (1 << 8), map->C % (1 << 8));
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

