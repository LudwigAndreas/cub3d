#include "../inc_bonus/cub3d_bonus.h"

// 0
void	pac_game_scene(t_game *game)
{
	fill_img_color(&game->hud_img, TRANSPARENT_COLOR);
	check_aliveness(game);
	player_controll(game);
	cast_rays(game);
	enemy_move(game);

	draw_ceil_floor_textured(game);
	draw_walls(game);
	draw_game_objects(game);

	draw_aim(game);

	draw_hud(game);
	put_frame(game);
	change_textures(game);
	update_time(game);
	if (edibles_eaten(game))
		game->scene.scene_func = win_game_scene;
}

// 1
void	death_game_scene(t_game *game)
{
	fill_img_color(&game->hud_img, TRANSPARENT_COLOR);
	draw_afterdeath_animation(game);
	if (game->afterdeath != 1)
	{
		player_death(game);
	}
	update_time(game);
}

// 2
void	win_game_scene(void *_game)
{
	t_game			*game;
	static int		i = 0;
	static t_ull	time = 0;

	game = _game;
	if (!i)
	{
		// cs_pause_sound(game->audio.song.play, 1);
		cs_play_sound(game->audio.ctx, game->audio.bonk.def);
		game->show_map = 0;
	}
	if (i < 50 && get_time() - time > 35)
	{
		time = get_time();
		dim_screen(game, i);
		++i;
	}
	else if (i == 50)
	{
		game->input_mode = WIN_SCREEN_MODE;
		game->player_lb_data->score_num = game->hud.score.value_numeric;
		ft_lst_insert(&game->leaderboard, ft_lstnew(game->player_lb_data), cmp_lb_entry);
		++i;
	}
	if (i > 50)
		put_ended_game_image(game);
}

// 3
void	pause_game_scene(t_game *game)
{
	fill_img_color(&game->hud_img, TRANSPARENT_COLOR);
	draw_hud(game);
	put_image_to_image(&game->hud_img, (t_vector){(game->mlx.win_size.x
	- game->img.size.x) / 2, 0}, &game->img);
	print_pause_menu_entries(game);
	mlx_put_image_to_window(game->mlx.id, game->mlx.window, game->hud_img.mlx_img,
							0, 0);
	update_time(game);
}

// 4
void	controls_game_scene(void *__game)
{
	const int	font_size = 60;
	t_game		*game;

	game = __game;
	fill_img_color(&game->hud_img, TRANSPARENT_COLOR);
	draw_hud(game);
	put_image_to_image(&game->hud_img, (t_vector){(game->mlx.win_size.x
	- game->img.size.x) / 2, 0}, &game->img);
	
	draw_rectangle_fill(&game->hud_img, (t_vector){game->hud_img.size.x / 2 -
		game->img.size.x / 2, 0}, (t_vector){game->img.size.x, game->img.size.y}
		, 0xA0000000);
	put_text_to_screen_layout(game->map->font, &game->hud_img, &(t_text){
		"controls", (t_vector){game->hud_img.size.x / 2, font_size}, 
		VCenter | HCenter, 0xE0E0E0}, font_size);
	put_text_to_screen_layout(game->map->font, &game->hud_img, &(t_text){
		"just move bro", (t_vector){game->hud_img.size.x / 2, 3 * font_size},
		VCenter | HCenter, 0xE0E0E0}, font_size);

	mlx_put_image_to_window(game->mlx.id, game->mlx.window, game->hud_img.mlx_img,
							0, 0);
	update_time(game);
}
