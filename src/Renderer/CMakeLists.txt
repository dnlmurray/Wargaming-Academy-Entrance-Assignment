add_library(wga_renderer_lib STATIC EXCLUDE_FROM_ALL
    IndexBuffer.cpp
    Shader.cpp
    VertexArray.cpp
    Window.cpp
)

target_include_directories(wga_renderer_lib
    PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}
)

target_link_libraries(wga_renderer_lib
    PUBLIC
        wga_input_lib
        wga_memory_lib
        glfw
        GLEW::glew
        OpenGL::GL
)