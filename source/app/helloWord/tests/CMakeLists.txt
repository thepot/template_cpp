find_package(GoogleTests REQUIRED)

set(test_target test_${target})

add_executable(${test_target} test_demo.cpp)
target_link_libraries(${test_target} ${target}_lib thirdParty::GTest)
set_target_properties(${test_target} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/test)

include(GoogleTest)
gtest_discover_tests(${test_target})