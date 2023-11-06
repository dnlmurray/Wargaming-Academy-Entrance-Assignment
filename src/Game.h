#ifndef H_GAME
#define H_GAME

#include "DataTypes.h"
#include "Input.h"

namespace Game // Implementation of the game mechanics
{
	struct FieldProperties
	{
		Vertex gridOrigin;
		f32 tileSize, padding;
		u16 numOfTiles;
		u8 gridHeight, gridWidth; // in tiles

		FieldProperties(u8 gridHeight, u8 gridWidth, f32 tileSize, f32 padding)
			: gridHeight(gridHeight)
			, gridWidth(gridWidth)
			, tileSize(tileSize)
			, padding(padding)
			, numOfTiles(gridHeight* gridWidth)
			, gridOrigin({ 0, -1.0f * (gridWidth * tileSize) / 2, (gridHeight * tileSize) / 2, 0.0f })
		{ }
	};

	struct ScreenGrid
	{
		f32* xdata, * ydata;
		u16 xlength, ylength;

		ScreenGrid(const FieldProperties& props)
			: xlength(props.gridWidth + 1)
			, ylength(props.gridHeight + 1)
		{
			xdata = new f32[xlength];
			ydata = new f32[ylength];
		}

		~ScreenGrid()
		{
			delete[] xdata;
			delete[] ydata;
		}
	};

	class GameState
	{
	private:
		TileType* m_tiletypes; // It has to be initialized in the GameState class constructor
		TileType* m_conditions;
		const ScreenGrid* m_grid;
		const FieldProperties* m_props;
		u32 m_selectedTileIndex;
		bool m_tileSelected;
		bool m_changed;
		TileType m_seltype; // type of the selected tile

	public:
		GameState(const FieldProperties* props, const ScreenGrid* grid)
			: m_tileSelected(false)
			, m_selectedTileIndex(0)
			, m_tiletypes(new TileType[props->numOfTiles])
			, m_conditions(new TileType[3])
			, m_grid(grid)
			, m_props(props)
		{ }

		~GameState()
		{
			delete[] m_tiletypes;
			delete[] m_conditions;
		}

		inline void SelectTile(u32 index)
		{
			if (!m_tileSelected) // No tile selected
			{
				if (m_tiletypes[index] == Blocked) return;
				m_tileSelected = true;
				m_selectedTileIndex = index;
				m_seltype = m_tiletypes[index];
				m_tiletypes[index] = Selected;
			}
			else if (IsSelected(index)) // Selection of the same tile causes selection reset
			{
				m_tileSelected = false;
				m_tiletypes[index] = m_seltype;
			}
			else // if selected tile is different than the selected tile from the previous step
			{
				if (m_tiletypes[index] != Empty)
				{
					m_tiletypes[m_selectedTileIndex] = m_seltype;
					ResetSelection();
					return;
				}


				SwapTiles(index);
			}
		}

		inline void SwapTiles(u32 emptyTile)
		{
			if ((emptyTile == m_selectedTileIndex + 1) ||
				(emptyTile == m_selectedTileIndex - 1) ||
				(emptyTile == m_selectedTileIndex + 5) ||
				(emptyTile == m_selectedTileIndex - 5))
			{
				m_tiletypes[emptyTile] = m_seltype;
				m_tiletypes[m_selectedTileIndex] = Empty;
				m_tileSelected = false;
			}
			else
			{
				ResetSelection();
			}
		}

		inline void ResetSelection()
		{
			m_tiletypes[m_selectedTileIndex] = m_seltype;
			m_tileSelected = false;
		}

		inline TileType* GetTileDataPointer() const { return m_tiletypes; }
		inline TileType* GetConditionsDataPointer() const { return m_conditions; }
		inline const ScreenGrid* GetGrid() const { return m_grid; }
		inline u32 GetSelectedTileIndex() const { return m_selectedTileIndex; }
		inline bool IsThereSelectedTile() const { return m_tileSelected; }
		inline bool IsSelected(u32 index) const { return m_tileSelected && (m_selectedTileIndex == index); }
		inline bool GetChangeStatus() const { return m_changed; }
	};

	extern bool CheckColumns(GameState& state);

	extern u16 DetermineSelectedTile(const ScreenGrid* grid, f32 xpos, f32 ypos);

	extern void MouseButtonCallback(GLFWwindow* window, int button, int action, int mods);
}

#endif // !H_GAME

