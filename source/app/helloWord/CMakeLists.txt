# ===================================================
# Description et information de l'application
# ===================================================
set(target "helloWord")

# ===================================================
# Options de compilation
# ===================================================
option(ENABLE_TEST_${target} "Build tests for ${target}" OFF)
mark_as_advanced(ENABLE_TEST_${target})

# ===================================================
# Creation de l'executable
# ===================================================
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

# ===================================================
# Tests
# ===================================================

if (ENABLE_TESTS OR ENABLE_TEST_${target})
  add_subdirectory(tests)
endif()
