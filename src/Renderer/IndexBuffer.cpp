#include "IndexBuffer.h"

#include "GL/glew.h"

#ifdef DEBUG
	#include "Debug.h"
#endif

namespace Renderer
{
	IndexBuffer::IndexBuffer(const u32* indexData, u32 indexCount)
		: m_count(indexCount)
	{
		glGenBuffers(1, &m_id);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_id);
		glBufferData(GL_ELEMENT_ARRAY_BUFFER, indexCount * sizeof(u32), indexData, GL_STATIC_DRAW);
	}

	IndexBuffer::~IndexBuffer()
	{
		glDeleteBuffers(1, &m_id);
	}

	void IndexBuffer::Bind() const
	{
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_id);
	}

	void IndexBuffer::Unbind() const
	{
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	}
}