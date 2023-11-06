#ifndef H_VERTEXARRAY
#define H_VERTEXARRAY

#include "DataTypes.h"
#include "GL/glew.h"

namespace Renderer
{
	struct VertexBufferLayout
	{
		i32 size;
		GLenum type;
		bool normalized;
		u32 offset;
	};

	class VertexArray
	{
	private:
		u32 m_id;

	public:
		VertexArray(const void* vertexData, u32 vertexCount, const VertexBufferLayout* layouts, u32 layoutCount, u32 stride);
		~VertexArray();

		void Bind() const;
		void Unbind() const;
	};
}

#endif // !H_VERTEXARRAY

