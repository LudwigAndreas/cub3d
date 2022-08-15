#include "../inc/cub3d.h"
// #define CUTE_SOUND_IMPLEMENTATION
// # define CUTE_SOUND_FORCE_SDL
#include "../cute_sound/cute_sound.h"
void	check_borders(t_game *game)
{
	char	tile;

	tile = game->grid[(int) game->player.pos.y / MAP_GRID_SIZE][(int) game->player.pos.x / MAP_GRID_SIZE];

	if (tile != '0')
	{
		if ((game->player.pos.x - (int ) game->player.pos.x) - (game->player.pos.y - (int ) game->player.pos.y) > 0)
			game->player.pos.x -= game->player.delta.x;
		else
			game->player.pos.y -= game->player.delta.y;
	}
}

void	check_restrictions(t_game *game)
{
	if (game->player.angle < 0)
		game->player.angle += 2 * PI;
	if (game->player.angle > 2 * PI)
		game->player.angle -= 2 * PI;
	if (game->player.pos.x > game->map->map_size.x * MAP_GRID_SIZE)
		game->player.pos.x -= MAP_GRID_SIZE;
	if (game->player.pos.x < 0)
		game->player.pos.x += MAP_GRID_SIZE;
	if (game->player.pos.y > game->map->map_size.y * MAP_GRID_SIZE)
		game->player.pos.y -= MAP_GRID_SIZE;
	if (game->player.pos.y < 0)
		game->player.pos.y += MAP_GRID_SIZE;
	check_borders(game);
}

void	player_controll(t_game *game)
{
	if (game->key.mouse == true)
	{
		mlx_mouse_get_pos(game->mlx.window, &game->key.mpos.x,&game->key.mpos.y);
		game->key.mdir.x = game->key.mpos.x - game->img.size.x / 2;
		game->key.mdir.y = game->key.mpos.y - game->img.size.y / 2;
		mlx_mouse_move(game->mlx.window, game->img.size.x / 2, game->img.size.y / 2);
		game->player.angle += (float) game->key.mdir.x * PL_ROT_MOUSE_SPEED;
		game->player.delta.x = cosf(game->player.angle) * PL_SPEED;
		game->player.delta.y = sinf(game->player.angle) * PL_SPEED;
	}
	if (key_pressed(game,W_KEY))
	{
		if (game->map->map[(int)game->player.pos.y / MAP_GRID_SIZE][(int)(game->player.pos.x + game->player.delta.x) / MAP_GRID_SIZE] != '1')
		{
			game->player.pos.x += game->player.delta.x;
		}
		if (game->map->map[(int)(game->player.pos.y + game->player.delta.y) / MAP_GRID_SIZE][(int)game->player.pos.x / MAP_GRID_SIZE] != '1')
			game->player.pos.y += game->player.delta.y;
	}
	if (key_pressed(game,S_KEY))
	{
		if (game->map->map[(int)game->player.pos.y / MAP_GRID_SIZE][(int)(game->player.pos.x - game->player.delta.x) / MAP_GRID_SIZE] != '1')
			game->player.pos.x -= game->player.delta.x;
		if (game->map->map[(int)(game->player.pos.y - game->player.delta.y) / MAP_GRID_SIZE][(int)game->player.pos.x / MAP_GRID_SIZE] != '1')
			game->player.pos.y -= game->player.delta.y;
	}
	if (key_pressed(game,D_KEY))
	{
		if (game->map->map[(int)game->player.pos.y / MAP_GRID_SIZE][(int)(game->player.pos.x - game->player.delta.y) / MAP_GRID_SIZE] != '1')
			game->player.pos.x -= game->player.delta.y;
		if (game->map->map[(int)(game->player.pos.y + game->player.delta.x) / MAP_GRID_SIZE][(int)game->player.pos.x / MAP_GRID_SIZE] != '1')
			game->player.pos.y += game->player.delta.x;
	}
	if (key_pressed(game,A_KEY))
	{
		if (game->map->map[(int)game->player.pos.y / MAP_GRID_SIZE][(int)(game->player.pos.x + game->player.delta.y) / MAP_GRID_SIZE] != '1')
			game->player.pos.x += game->player.delta.y;
		if (game->map->map[(int)(game->player.pos.y - game->player.delta.x) / MAP_GRID_SIZE][(int)game->player.pos.x / MAP_GRID_SIZE] != '1')
			game->player.pos.y -= game->player.delta.x;
	}
	if (key_pressed(game,LEFT_KEY))
	{
		game->player.angle += PL_ROT_KEY_SPEED;
		game->player.delta.x = cosf(game->player.angle) * PL_SPEED;
		game->player.delta.y = sinf(game->player.angle) * PL_SPEED;
	}
	if (key_pressed(game,RIGHT_KEY))
	{
		game->player.angle -= PL_ROT_KEY_SPEED;
		game->player.delta.x = cosf(game->player.angle) * PL_SPEED;
		game->player.delta.y = sinf(game->player.angle) * PL_SPEED;
	}
	check_restrictions(game);
}

int	game_loop(t_game *game)
{
	static clock_t	cur_time;
	static int		fps;

	player_controll(game);
	img_clear_rgb(&game->img, 0x808080);
//	draw_player(game);
	cast_rays(game);
	draw_walls(game);
	draw_aim(game);

	mlx_put_image_to_window(game->mlx.id, game->mlx.window, game->img.mlx_img, 0, 0);
	if (game->show_map)
		draw_map(game);

	if (clock() != cur_time)
		fps = CLOCKS_PER_SEC / (clock() - cur_time);
	cur_time = clock();
	mlx_string_put(game->mlx.id, game->mlx.window, 0, 15, 0x00FFFFFF, \
		(char []){'0' + fps / 100, '0' + fps / 10 % 10, '0' + fps % 10, '\0'});
	return (0);
}