#ifndef H_WINDOW
#define H_WINDOW

#include "GLFW/glfw3.h"
#include "DataTypes.h"

namespace Renderer
{
	class Window
	{
	private:
		GLFWwindow* m_id;
		void* m_state;
		u16 m_height, m_width;

	public:
		Window(const char* name, u16 height, u16 width);
		~Window();

		void SwapBuffers() const { glfwSwapBuffers(m_id); }

		inline bool WindowShouldClose() { return glfwWindowShouldClose(m_id); }
		inline void ClearBufferBit() { glClear(GL_COLOR_BUFFER_BIT); }

		inline GLFWwindow* GetID() const { return m_id; }
		inline u16 GetHeight() const { return m_height; }
		inline u16 GetWidth()  const { return m_width; }

		inline void SetState(void* state) { m_state = state; }
		inline void* GetState() const { return m_state; }
	};
}

#endif // !H_WINDOW

