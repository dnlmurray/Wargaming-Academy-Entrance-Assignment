add_subdirectory(Input)
add_subdirectory(Memory)
add_subdirectory(Renderer)

add_executable(${PROJECT_NAME}
    Game.cpp
    GameInit.cpp
    GameLoop.cpp
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
        wga_input_lib
        wga_memory_lib
        wga_renderer_lib
)
