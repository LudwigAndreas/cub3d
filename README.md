# Pac3D

Desktop game with self-made Ray-casting engine.

## Table of contents

- [About](#about)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Running the tests](#running-the-tests)
- [Usage](#usage)
- [Built Using](#built-using)
- [Authors](#authors)
- [Acknowledgements](#acknowledgements)
- [License](#license)

## About

Ray-casting project inspired by two legendary games: [Wolfenstein 3D](https://en.wikipedia.org/wiki/Wolfenstein_3D) and [Pac-Man](https://en.wikipedia.org/wiki/Pac-Man).

<p align="center">
<a href="https://youtu.be/mTbOpzq9PrI" target="_blank"><img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjhiMDVmMmNhZmI1NmJjNDQ2MjRhNjQ2ZDA3NmIyMTU2MzA0ZjRjZCZjdD1n/P5D0Zq1YTsU6Qd3RBX/giphy.gif" width=1727></a>
</p>
</div>
Pac3D is a implementation of a simple 3D game engine using ray-casting technique. It uses the same principles as the original Wolfenstein 3D game, but with a different perspective. The game is written in C and uses the [MinilibX](https://harm-smits.github.io/42docs/libs/minilibx) library for that handles the graphical output. This game is an attempt to imagine what Pacman would have looked like in 3d if it had been released in 1992 on the Wolfenstein 3D engine.

This project is a part of the [42 school](https://www.42.fr/) curriculum.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them.

```text
gcc >= 7.5.0
mlx >= 1.4.1
```

```bash
sudo apt-get install gcc
```

To install the MinilibX library, follow the instructions in the [official site](https://harm-smits.github.io/42docs/libs/minilibx/getting_started.html#installation)

### Installation

A step by step series of examples that tell you how to get a development env running.

Clone the repository.

```bash
git clone --recurse-submodules https://github.com/AndrefHub/cub3d.git

cd cub3d
```

Run the Makefile.

```bash
make         # Mandatory part
```

```bash
make bonus   # Bonus part
```

## Running the tests

Explain how to run the automated tests for this system.

```bash
make test
```

## Usage

To run the program, you need to provide a map file as an argument.

```bash
./cub3D maps/some_map.cub
```

### Bundled maps

`maps/e1m1.cub` - map for mandatory part
`maps/pacman.cub` - map for bonus part, replicates map from original Pac-Man game

## Built Using

- [C](https://en.wikipedia.org/wiki/C_(programming_language)) - Programming language
- [MinilibX](https://harm-smits.github.io/42docs/libs/minilibx) - Library for graphical output
- [Ray-casting](https://en.wikipedia.org/wiki/Ray_casting) - Rendering technique

## Authors

This project was developed by:

| <img src="https://avatars.githubusercontent.com/u/88089961?v=4" alt="drawing" width="50"/> |[LudwigAndreas](https://github.com/LudwigAndreas)|
| --- | --- |
| <img src="https://avatars.githubusercontent.com/u/57820208?s=60&v=4" alt="drawing" width="50"/> | [AndrefHub](https://github.com/AndrefHub) |

## Acknowledgements

- [Wolfenstein 3D](https://en.wikipedia.org/wiki/Wolfenstein) - First-person shooter video game
- [Original Pac-Man](https://en.wikipedia.org/wiki/Pac-Man) - Arcade game
- [MinilibX](https://harm-smits.github.io/42docs/libs/minilibx) - Library for graphical output used in ecole 42
- [School 21](https://21-school.ru/) - Educational institution

## License

This project is licensed under the School 21 License - see the [LICENSE](LICENSE) file for details.
