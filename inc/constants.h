/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   constants.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kdancy <kdancy@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/10 18:30:11 by kdancy            #+#    #+#             */
/*   Updated: 2022/11/10 18:30:12 by kdancy           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CONSTANTS_H
# define CONSTANTS_H

# define BAD_FILE -2
# define FRAMERATE 30
# define BAD_COLOUR 0x1000000
# define BAD_COORD -1
# define PROJ_NAME "Cub3d"
# define FOV 0.66f
# define TEXTURE_SIZE 192
# define MAX_RENDER_DISTANCE 120
# define PI (float) M_PI
# define PL_ROT_KEY_SPEED 0.05f
# define PL_ROT_MOUSE_SPEED 0.002f
# define PL_SPEED 0.1f
# define PL_ACCELERATION 2.5f
# define PL_RADIUS 0.2f
# define PL_MAP_COLOR 0xFF0000
# define EN_SPEED 0.05f
# define RAYS_COLOR 0xFFDD2D
# define AIM_SIZE 4
# define AIM_COLOR 0xFF0000
# define TRANSPARENT_COLOR 0xFFFFFFFF
# define MAP_BG_COLOR 0xCC000000
# define MAP_WALLS_COLOR 0xCCFFFFFF
# define ENEMIES_MAP_COLOR 0x89D1FE
# define OBJECTS_MAP_COLOR 0xFFEF00
# define PACMAN_COLOR 0xFFCC00
# define MAX_PILLS 3
# define MAX_WALL_CHARS 4
# define MAX_HEALTH 1
# define FONT_SIZE 240
# define FONT_OFFSET 32
# define WALL_CHARS "1"
# define CARDINAL_POINTS "EWSN"

# ifndef ASSETS_PATH
#  define ASSETS_PATH "."
# endif

# ifdef __APPLE__
#  define CHAR_OFFSET 0

enum e_keys
{
	W_KEY = 13,
	A_KEY = 0,
	S_KEY = 1,
	D_KEY = 2,
	ESC_KEY = 53,
	UP_KEY = 126,
	LEFT_KEY = 123,
	DOWN_KEY = 125,
	RIGHT_KEY = 124,
	M_KEY = 46,
	Q_KEY = 12,
	E_KEY = 14,
	LEFT_CTRL_KEY = 256,
	BACKSPACE = 51,
	ENTER = 36,
};
# else
#  define CHAR_OFFSET 256
#  ifdef __linux__

enum e_keys
{
	W_KEY = 119,
	A_KEY = 97,
	S_KEY = 115,
	D_KEY = 100,
	ESC_KEY = 65307,
	UP_KEY = 65362,
	LEFT_KEY = 65361,
	DOWN_KEY = 65364,
	RIGHT_KEY = 65363,
	M_KEY = 109,
	Q_KEY = 113,
	E_KEY = 101,
	LEFT_CTRL_KEY = 65507,
	BACKSPACE = 65288,
	ENTER = 65293,
};

#  endif
# endif

enum e_layout
{
	VTop = 001,
	VCenter = 002,
	VBottom = 004,
	HLeft = 010,
	HCenter = 020,
	HRight = 040
};

#endif
