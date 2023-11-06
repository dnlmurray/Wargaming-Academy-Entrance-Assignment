#include "Game.h"

namespace Game
{
	bool CheckColumns(GameState& state)
	{
		TileType condition;

		for (u32 column = 0; column < 3; column++)
		{
			condition = state.GetConditionsDataPointer()[column];

			for (u32 row = 0; row < 5; row++)
				if (state.GetTileDataPointer()[row * 5 + column * 2] != condition) return false;
		}

		return true;
	}

	u16 DetermineSelectedTile(const ScreenGrid* grid, f32 xpos, f32 ypos)
	{
		// 0 is an invalid state

		if (xpos <= grid->xdata[0] || xpos >= grid->xdata[grid->xlength - 1]) return 0; // cursor isout of grid
		if (ypos >= grid->ydata[0] || ypos <= grid->ydata[grid->ylength - 1]) return 0; // cursor isout of grid

		u16 column = 0;
		u16 row = 0;

		for (u32 i = 0; i < grid->xlength; i++)
		{
			if (xpos >= grid->xdata[i] && xpos <= grid->xdata[i + 1])
			{
				column = i;
				break;
			}
		}

		for (u32 i = 0; i < grid->ylength; i++)
		{
			if (ypos <= grid->ydata[i] && ypos >= grid->ydata[i + 1])
			{
				row = i;
				break;
			}
		}

		return (row * 5 + column) + 1;
	}

	void MouseButtonCallback(GLFWwindow* window, int button, int action, int mods)
	{
		Renderer::Window& windowobj = *(Renderer::Window*)glfwGetWindowUserPointer(window);
		Game::GameState& state = *(Game::GameState*)windowobj.GetState();

		Input::CursorPosition pos;
		u16 selectedTile;

		pos = Input::GetCursorPos(windowobj);
		selectedTile = DetermineSelectedTile(state.GetGrid(), pos.x, pos.y);

		if (selectedTile == 0) return;
		selectedTile--;							// translate from tile number to index

		state.SelectTile(selectedTile);

	}
}