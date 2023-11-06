#ifndef H_EVENT
#define H_EVENT

#include "GLFW/glfw3.h"
#include "Window.h"

namespace Input
{
	struct CursorPosition { f64 x, y; };

	inline void PollEvents() { glfwPollEvents(); }

	inline void WaitEvents() { glfwWaitEvents(); }

	inline CursorPosition GetCursorPos(const Renderer::Window& window)
	{
		Input::CursorPosition pos;
		glfwGetCursorPos(window.GetID(), &pos.x, &pos.y);
		pos.x = (pos.x - window.GetWidth() / 2) / (0.5f * window.GetWidth());
		pos.y = (window.GetHeight() / 2 - pos.y) / (0.5f * window.GetWidth());
		return pos;
	}
}

#endif // !1

