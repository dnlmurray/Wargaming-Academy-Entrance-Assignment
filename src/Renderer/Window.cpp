#include "Window.h"

namespace Renderer
{
	Window::Window(const char* name, u16 height, u16 width)
		: m_height(height)
		, m_width(width)
	{
		glfwWindowHint(GLFW_RESIZABLE, GL_FALSE);
		m_id = glfwCreateWindow(width, height, name, NULL, NULL);
		if (!m_id)
			glfwTerminate();

		glfwSetWindowUserPointer(m_id, this);
		glfwMakeContextCurrent(m_id);
	}

	Window::~Window()
	{
		glfwDestroyWindow(m_id);
	}
}