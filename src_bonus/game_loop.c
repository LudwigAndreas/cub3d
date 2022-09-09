#include "../inc_bonus/cub3d_bonus.h"


int	game_loop(t_game *game)
{
	player_controll(game);
	enemy_move(game);
	fill_img_color(&game->img, 0x808080);
	fill_floor_color(&game->img, game->map->F);
	fill_ceiling_color(&game->img, game->map->C);
//	draw_player(game);
	cast_rays(game);
	draw_walls(game);

	draw_aim(game);

	mlx_put_image_to_window(game->mlx.id, game->mlx.window, game->img.mlx_img,
							0, 0);
	if (game->show_map)
		draw_map(game);
	draw_fps(game);
	game->time.last = get_time(); //TODO: move this line to game_loop
	change_textures(game); //TODO: do something with fps. it is terrible
	return (0);
}