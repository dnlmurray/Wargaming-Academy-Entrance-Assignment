#ifndef H_GAMEINIT
#define H_GAMEINIT

#include "DataTypes.h"
#include "Game.h"

namespace GameInit
{
	enum SceneElement : u8 { V_PLAYIFIELD = 0, V_CONDITIONS = 1 };

	extern void GenerateVertecies(SceneElement element, Vertex* vertecies, const Game::FieldProperties& props);
	extern void GetIndexArray(u32* indices, u32 numOfTiles);
	extern void SetupField(TileType* tiletypes, const Game::FieldProperties& props);
	extern void ChangeColors(TileType* types, Color* colors, u32 count);
	extern void GeneratePlayfieldGrid(const Game::ScreenGrid& grid, const Game::FieldProperties& props);
}

#endif // !H_GAMEINIT

