#include "VertexArray.h"
#include "GL/glew.h"

namespace Renderer
{
	VertexArray::VertexArray(const void* vertexData, u32 vertexCount, const VertexBufferLayout* layouts, u32 layoutCount, u32 stride)
	{
		// Initialize vertex array
		glGenVertexArrays(1, &m_id);
		glBindVertexArray(m_id);

		// Initialize vertex buffer
		u32 vbid;
		glGenBuffers(1, &vbid);
		glBindBuffer(GL_ARRAY_BUFFER, vbid);
		glBufferData(GL_ARRAY_BUFFER, vertexCount, vertexData, GL_STATIC_DRAW);

		// Vertex buffer layout
		for (u32 i = 0; i < layoutCount; i++)
		{
			glEnableVertexAttribArray(i);
			glVertexAttribPointer(i, layouts[i].size, layouts[i].type, layouts[i].normalized, stride, reinterpret_cast<void*>(layouts[i].offset));
		}
	}

	VertexArray::~VertexArray()
	{
		glDeleteVertexArrays(1, &m_id);
	}

	void VertexArray::Bind() const
	{
		glBindVertexArray(m_id);
	}

	void VertexArray::Unbind() const
	{
		glBindVertexArray(0);
	}
}