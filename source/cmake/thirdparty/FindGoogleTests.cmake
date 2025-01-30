
find_package(Gtest QUIET)

if(GTEST_FOUND)
    message(STATUS "Found Google Test: ${GTEST_INCLUDE_DIRS}")
else()
    message(STATUS "Google Test not found. Downloading and building it from source.")
    include(FetchContent)
    FetchContent_Declare(
        googletest
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG v1.15.2
    )
    FetchContent_MakeAvailable(googletest)
endif()

add_library(thirdParty::GTest INTERFACE IMPORTED)
target_include_directories(thirdParty::GTest INTERFACE ${GTEST_INCLUDE_DIRS})
target_link_libraries(thirdParty::GTest INTERFACE GTest::gtest gtest_main)
