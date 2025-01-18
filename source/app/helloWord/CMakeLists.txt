# ===================================================
# Description et information de l'application
# ===================================================
set(target "helloWord")


add_executable(${target})
target_sources(${target} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp")
target_link_libraries(${target} PRIVATE ${target}_lib)

# ===================================================
# Creation de la librairie associe
# ===================================================
add_library(${target}_lib STATIC)


target_sources(${target}_lib
  PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}/src/demo.cpp"
)
target_include_directories(${target}_lib
  PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}/include"
)