#include "GameInit.h"

#include <iostream>

namespace GameInit
{
	void GenerateVertecies(SceneElement element, Vertex* vertecies, const Game::FieldProperties& props)
	{
		f32 shift = props.tileSize + props.padding;

		if (element == V_PLAYIFIELD)
		{
			u32 id;				// vertex id corresponding to the tile
			u16 v0, v1, v2, v3; // vertex indices for one tile
		
			u32 totalCount = 0;

			for (u16 rowCount = 0; rowCount < props.gridHeight; rowCount++)
			{
				for (u16 columnCount = 0; columnCount < props.gridWidth; columnCount++)
				{
					v0 = (totalCount) * 4;
					v1 = (totalCount) * 4 + 1;
					v2 = (totalCount) * 4 + 2;
					v3 = (totalCount) * 4 + 3;

					// ID
					id = 5*rowCount + columnCount;
					vertecies[v0].id = id;
					vertecies[v1].id = id;
					vertecies[v2].id = id;
					vertecies[v3].id = id;

					// X coordinates
					vertecies[v0].position[0] = props.gridOrigin.position[0] + shift * columnCount;
					vertecies[v1].position[0] = vertecies[v0].position[0] + props.tileSize;
					vertecies[v2].position[0] = vertecies[v0].position[0];
					vertecies[v3].position[0] = vertecies[v1].position[0];

					// Y coordinates
					vertecies[v0].position[1] = props.gridOrigin.position[1] - shift * rowCount;
					vertecies[v1].position[1] = vertecies[v0].position[1];
					vertecies[v2].position[1] = vertecies[v0].position[1] - props.tileSize;
					vertecies[v3].position[1] = vertecies[v2].position[1];

					// Z is always 0 for obvious reasons
					vertecies[v0].position[2] = 0;
					vertecies[v1].position[2] = 0;
					vertecies[v2].position[2] = 0;
					vertecies[v3].position[2] = 0;

					totalCount++;
				}
			}
		}
		else if (element == V_CONDITIONS)
		{
			// Generates 3 markers
			for (u32 i = 0; i < 3; i++)
			{
				vertecies[i * 3].id = i;
				vertecies[i * 3].position[0] = props.gridOrigin.position[0] + i*(shift * 2.0f);
				vertecies[i * 3].position[1] = props.gridOrigin.position[1] + shift;
				vertecies[i * 3].position[2] = 0;

				vertecies[i * 3 + 1].id = i;
				vertecies[i * 3 + 1].position[0] = props.gridOrigin.position[0] + ((f32)props.tileSize)/2 + i * (shift * 2.0f);
				vertecies[i * 3 + 1].position[1] = props.gridOrigin.position[1] + props.padding;
				vertecies[i * 3 + 1].position[2] = 0;

				vertecies[i * 3 + 2].id = i;
				vertecies[i * 3 + 2].position[0] = props.gridOrigin.position[0] + props.tileSize + i * (shift * 2.0f);
				vertecies[i * 3 + 2].position[1] = vertecies[i * 3].position[1];
				vertecies[i * 3 + 2].position[2] = 0;
			}
		}
		else
		{
			std::cout << "[Error]: Unknown scene element" << std::endl;
		}
		
	}

	void GetIndexArray(u32* indices, u32 numOfTiles)
	{
		u32 orderPattern[6] = { 0, 1, 3, 3, 2, 0 };

		for (u32 tile = 0; tile < numOfTiles; tile++)
		{
			for (u32 i = 0; i < 6; i++)
				indices[tile * 6 + i] = orderPattern[i] + 4 * tile;
		}
	}

	void SetupField(TileType* tiletypes, const Game::FieldProperties& props)
	{
		// Type array for game mechanics operation
		tiletypes[0] = Orange; tiletypes[1] = Blocked; tiletypes[2] = Green; tiletypes[3] = Blocked; tiletypes[4] = Orange;
		tiletypes[5] = Red; tiletypes[6] = Empty; tiletypes[7] = Green; tiletypes[8] = Empty; tiletypes[9] = Orange;
		tiletypes[10] = Green; tiletypes[11] = Blocked; tiletypes[12] = Red; tiletypes[13] = Blocked; tiletypes[14] = Red;
		tiletypes[15] = Orange; tiletypes[16] = Empty; tiletypes[17] = Orange; tiletypes[18] = Empty; tiletypes[19] = Green;
		tiletypes[20] = Red; tiletypes[21] = Blocked; tiletypes[22] = Red; tiletypes[23] = Blocked; tiletypes[24] = Green;
	}

	void ChangeColors(TileType* types, Color* colors, u32 count)
	{
		// Population the tile colors array
		for (u32 i = 0; i < count; i++)
		{
			switch (types[i])
			{
			case Blocked:
				colors[i] = { 0.9f, 0.9f, 0.9f, 1.0f };
				break;
			case Empty:
				colors[i] = { 0.0f, 0.0f, 0.0f, 1.0f };
				break;
			case Selected:
				colors[i] = { 0.2f, 0.2f, 0.2f, 1.0f };
				break;
			case Orange:
				colors[i] = { 1.0f, 0.5f, 0.1f, 1.0f };
				break;
			case Red:
				colors[i] = { 1.0f, 0.0f, 0.0f, 1.0f };
				break;
			case Green:
				colors[i] = { 0.7f, 0.8f, 0.0f, 1.0f };
				break;
			}  
		}
	}

	// Intended to use for input detection
	void GeneratePlayfieldGrid(const Game::ScreenGrid& grid, const Game::FieldProperties& props)
	{
		f32 shift = props.tileSize + 0.5f * props.padding;

		for (u32 i = 0; i <= props.gridWidth; i++)
		{
			grid.xdata[i] = props.gridOrigin.position[0] + shift * i;
		}

		for (u32 i = 0; i <= props.gridHeight; i++)
		{
			grid.ydata[i] = props.gridOrigin.position[1] - shift * i;
		}
	}
}