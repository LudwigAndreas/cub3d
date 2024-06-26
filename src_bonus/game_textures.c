/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   game_textures.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kdancy <kdancy@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/09 18:49:41 by lsherry           #+#    #+#             */
/*   Updated: 2022/11/10 18:24:37 by kdancy           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc_bonus/cub3d_bonus.h"

void	draw_texture_set(t_game *game, struct s_column *column)
{
	column->texture_id = ft_strchr(WALL_CHARS, game->grid
		[column->cell.y][column->cell.x]) - WALL_CHARS;
}

void	skip_transparent_background(t_img *img)
{
	int		x;
	int		y;
	short	opaque_pix_y;

	x = 0;
	while (x < img->size.x)
	{
		y = 0;
		opaque_pix_y = INT16_MAX;
		img->alpha_start_x[x] = INT16_MAX;
		while (y < img->size.y)
		{
			if (img->addr[y * img->size.x + x] >> 24 == 0x00)
			{
				if (opaque_pix_y == INT16_MAX)
					img->alpha_start_x[x] = y;
				opaque_pix_y = (short) y;
			}
			y++;
		}
		img->alpha_end_x[x] = opaque_pix_y;
		x++;
	}
}

void	import_texture_to_img(t_game *game,
	t_img *img, char *filename, t_vector size)
{
	int	tex_size;

	tex_size = TEXTURE_SIZE;
	if (ft_strlen(filename) < 5)
		error_exit(game, 1, "Initialization fail: Invalid texture filename");
	if (ft_strncmp(".xpm", &filename[ft_strlen(filename) - 4], 4) == 0)
		img->mlx_img = mlx_xpm_file_to_image
			(game->mlx.id, filename, &tex_size, &tex_size);
	else
		error_exit(game, 1, "Initialization fail: Invalid texture format");
	if (img->mlx_img == NULL)
	{
		error_exit(game, 1, filename);
	}
	img->addr = (int *) mlx_get_data_addr
		(img->mlx_img, &img->bpp, &img->line_length, &img->endian);
	img->size.x = size.x;
	img->size.y = size.y;
	img->alpha_start_x = malloc(sizeof(short) * img->size.x);
	img->alpha_end_x = malloc(sizeof(short) * img->size.x);
	skip_transparent_background(img);
}

void	initialize_sprites(t_game *game,
	int size, t_texture *sprites_list, int t_size)
{
	t_list	*texture_list;
	t_img	*img;
	int		c;

	c = -1;
	while (++c < size)
	{
		texture_list = sprites_list[c].texture;
		sprites_list[c].img = NULL;
		while (texture_list)
		{
			img = malloc(sizeof(*img));
			if (img == NULL)
				error_exit(game, 1, "Memory allocation error: Sprites \
					initializing");
			import_texture_to_img(game, img, texture_list->content,
				(t_vector){t_size, t_size});
			ft_lstadd_back(&sprites_list[c].img, ft_lstnew(img));
			texture_list = texture_list->next;
		}
		if (sprites_list[c].img)
			ft_lstlast(sprites_list[c].img)->next = sprites_list[c].img;
	}
}

void	initialize_wall_textures(t_game *game)
{
	int	counter;

	counter = -1;
	while (++counter < MAX_WALL_CHARS)
		game->textures[counter] = *(t_img *)
			game->map->walls[counter].img->content;
}
