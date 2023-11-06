project(WargamingAcademyMinigame)

cmake_minimum_required(VERSION 3.4)

add_compile_options(-lpthread -llibGL)

find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)

add_subdirectory(dependencies)
add_subdirectory(src)