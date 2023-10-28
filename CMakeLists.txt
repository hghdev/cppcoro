cmake_minimum_required(VERSION 3.27)

project(cppcoro
    VERSION 0.0.1
    DESCRIPTION "The 'cppcoro' library provides a large set of general-purpose \
        primitives for making use of the coroutines TS proposal described in \
        N4680."
    HOMEPAGE_URL https://github.com/lewissbaker/cppcoro
    LANGUAGES CXX
)

set(target cppcoro)
add_library(${target})
target_compile_features(${target} PRIVATE cxx_std_20)
target_include_directories(${target} PUBLIC include)
add_subdirectory(lib)

add_subdirectory(test)
