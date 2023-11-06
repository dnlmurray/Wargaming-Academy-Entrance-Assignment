// PURELY for constinency of level of abstraction in the main file

#ifndef H_DRAWCALLS
#define H_DRAWCALLS

#include "GL/glew.h"
#include "DataTypes.h"

namespace Renderer
{
	inline void DrawArrayElements(u32 count)
	{
		glDrawElements(GL_TRIANGLES, count, GL_UNSIGNED_INT, nullptr);
	}

	inline void DrawVertexArray(u32 count)
	{
		glDrawArrays(GL_TRIANGLES, 0, count);
	}
}

#endif // !H_DRAWCALLS
