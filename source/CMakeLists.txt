cmake_minimum_required(VERSION 3.23)

# ===================================================
# Description et information du projet
# ===================================================
set(PROJECT_NAME "template")
project(${PROJECT_NAME} CXX)

# Inclusion des modules cmake lié au projet
include(${CMAKE_SOURCE_DIR}/cmake/init.cmake)
enable_testing()


# ===================================================
# Option du projet
# ===================================================
option(ENABLE_SAMPLES "compile all samples" OFF)
mark_as_advanced(ENABLE_SAMPLE)
option(ENABLE_TESTS "compile all tests" OFF)
mark_as_advanced(ENABLE_TESTS)

# ===================================================
# Configuration du compilateur et du projet cmake
# ===================================================
include(standard_config)
include(flag_config)

add_subdirectory(app)
