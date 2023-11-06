// PURELY for constinency of level of abstraction in the main file

#ifndef H_GLFW
#define H_GLFW

#include <iostream>

#include "GLFW/glfw3.h"
#include "Window.h"

namespace GLFW
{
	void Terminate() { glfwTerminate(); }

	void Init() { if(!glfwInit()) std::cout << "Failed to initialize GLFW\n"; }
}

#endif // !H_GLFW

