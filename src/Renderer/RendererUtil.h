#ifndef H_RENDERERUTIL
#define H_RENDERERUTIL

#include "GL/glew.h"

namespace Renderer
{
    inline void UnbindAll()
    {
        glUseProgram(0);
        glBindBuffer(GL_ARRAY_BUFFER, 0);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
        glBindVertexArray(0);
    }
}

#endif // !H_RENDERERUTIL

