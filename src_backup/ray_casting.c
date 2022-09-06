#include "../inc/cub3d.h"

void	draw_wall_scaled(t_img *img, const t_img *texture, const struct s_column *column, int x)
{
	const double	step = (double ) texture->size.y / column->height;
	const unsigned	tex_col = (unsigned ) column->texture_pos % TEXTURE_SIZE;
	int				y;
	double			tex_y;
	int 			max_height;

	tex_y = 0;
	if (column->height >= img->size.y)
	{
		tex_y += (double ) texture->size.y * (column->height - img->size.y) / 2 / column->height;
		y = 0;
		max_height = img->size.y;
	}
	else
	{
		y = img->size.y / 2 - column->height / 2;
		max_height = y + column->height;
	}
	while (y < max_height)
	{
		img->addr[y * img->size.x + x] = texture->addr[(unsigned )tex_y * texture->size.x + tex_col];
		tex_y += step;
		y++;
	}
}

void	draw_walls(t_game *game)
{
	int				x;
//	unsigned int	texture_id;

	x = 0;
	while (x < game->img.size.x)
	{
		draw_texture_set(game, &game->column[x]);
//		texture_id = ft_strchr(CARDINAL_POINTS, game->column[x].dir) - CARDINAL_POINTS;
//		ft_putnbr_fd(texture_id, 1);
		draw_wall_scaled(&game->img, &game->textures[game->column[x].texture_id],
						 &game->column[x], x);
		x++;
	}
}

t_ray	ray_initialize(t_game *game, float ray_angle)
{
	t_ray ray;

	ray.dir.x = cosf(ray_angle);
	ray.dir.y = sinf(ray_angle);
	ray.unit = (t_fvector) {sqrtf(1 + tanf(ray_angle) * tanf(ray_angle)),
							sqrtf(1 + 1 / (tanf(ray_angle) * tanf(ray_angle)))};
	ray.map_tile = (t_vector) {game->player.pos.x, game->player.pos.y};
	if (ray.dir.x < 0) {
		ray.step.x = -1;
		ray.length.x =
				(game->player.pos.x - (float) ray.map_tile.x) * ray.unit.x;
	} else {
		ray.step.x = 1;
		ray.length.x = (((float) ray.map_tile.x + 1) - game->player.pos.x) *
					   ray.unit.x;
	}
	if (ray.dir.y < 0) {
		ray.step.y = -1;
		ray.length.y =
				(game->player.pos.y - (float) ray.map_tile.y) * ray.unit.y;
	} else {
		ray.step.y = 1;
		ray.length.y = (((float) ray.map_tile.y + 1) - game->player.pos.y) *
					   ray.unit.y;
	}
	return (ray);
}

float	interception_distance(t_game *game, t_ray *ray)
{
	float distance;

	distance = 0.0f;
	while (distance < MAX_RENDER_DISTANCE)
	{
		if (ray->length.x < ray->length.y)
		{
			ray->map_tile.x += ray->step.x;
			distance = ray->length.x;
			ray->length.x += ray->unit.x;
		}
		else
		{
			ray->map_tile.y += ray->step.y;
			distance = ray->length.y;
			ray->length.y += ray->unit.y;
		}
		if (ray->map_tile.y >= 0 && ray->map_tile.x >= 0 &&
			ray->map_tile.y / MAP_GRID_SIZE < game->map->map_size.y &&
			ray->map_tile.x / MAP_GRID_SIZE < game->map->map_size.x)
		{
			if (is_wall(game->grid[ray->map_tile.y / MAP_GRID_SIZE]
											[ray->map_tile.x / MAP_GRID_SIZE]))
				break;
		}
	}
	return (distance);
}

void	initialize_columns(t_game *game, t_ray *ray, float distance, int i, float ray_angle)
{
	float camera;

	if (distance < MAX_RENDER_DISTANCE)
	{
		camera = game->player.angle - ray_angle;
		if (camera < 0)
			camera += 2 * PI;
		if (camera > 2 * PI)
			camera -= 2 * PI;
		game->column[i].height = (MAP_GRID_SIZE * ABS_WALL_SIZE) / (distance
			* cosf(camera));
		game->column[i].perp_dist = distance * cosf(camera);
		game->column[i].pos = (t_fvector) {game->player.pos.x + cosf(ray_angle)
			* distance, game->player.pos.y + sinf(ray_angle) * distance};
		if (ray->length.y - ray->unit.y < ray->length.x - ray->unit.x)
		{
			game->column[i].fade = 2.f;
			game->column[i].dir = "SN"[(int) (game->column[i].pos.x > game->player.pos.x)];
			game->column[i].texture_pos = (game->player.pos.y + sinf(ray_angle) * distance ) * TEXTURE_SIZE / MAP_GRID_SIZE;
		}
		else
		{
			game->column[i].fade = 1.f;
			game->column[i].dir = "EW"[(int) (game->column[i].pos.y > game->player.pos.y)];
			game->column[i].texture_pos = (game->player.pos.x + cosf(ray_angle) * distance) * TEXTURE_SIZE / MAP_GRID_SIZE;
		}
		if (game->column[i].dir == 'W' || game->column[i].dir == 'S')
			game->column[i].texture_pos = TEXTURE_SIZE * ABS_WALL_SIZE - game->column[i].texture_pos;
		if (distance > MAX_RENDER_DISTANCE)
			game->column[i].color = 0xFFAAAA;
		game->column[i].distance = distance;
		game->column[i].ray_dir = ray->dir;
		game->column[i].cell = (t_vector) {ray->map_tile.x / MAP_GRID_SIZE, ray->map_tile.y / MAP_GRID_SIZE};
	}
	else
	{
		game->column->height = 1;
		game->column[i].color = 0x00DCE7;
		game->column->distance = 1000;
	}
}

void	get_interception(t_game *game, float ray_angle, int i) //DDA algorithm
{
	t_ray	ray;
	float	distance;

	ray = ray_initialize(game, ray_angle);
	distance = interception_distance(game, &ray);
	initialize_columns(game, &ray, distance, i, ray_angle);
}