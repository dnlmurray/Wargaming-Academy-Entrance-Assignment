#ifndef H_INDEXBUFFER
#define H_INDEXBUFFER

#include "DataTypes.h"

namespace Renderer
{
	class IndexBuffer
	{
	private:
		u32 m_id;
		u32 m_count;

	public:
		IndexBuffer(const u32* indexData, u32 indexCount);
		~IndexBuffer();

		void Bind() const;
		void Unbind() const;

		inline u32 GetID() const { return m_id; }
		inline u32 GetCount() const { return m_count; }
	};
}


#endif // !H_INDEXBUFFER