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
# add_subdirectory(lib)
target_sources(${target} PRIVATE
    lib/async_auto_reset_event.cpp
    lib/async_manual_reset_event.cpp
    lib/async_mutex.cpp
    lib/auto_reset_event.cpp
    lib/cancellation_registration.cpp
    lib/cancellation_source.cpp
    lib/cancellation_state.cpp
    lib/cancellation_token.cpp
    # lib/file.cpp
    lib/file_read_operation.cpp
    lib/file_write_operation.cpp
    lib/io_service.cpp
    lib/ip_address.cpp
    lib/ip_endpoint.cpp
    lib/ipv4_address.cpp
    lib/ipv4_endpoint.cpp
    lib/ipv6_address.cpp
    lib/ipv6_endpoint.cpp
    lib/lightweight_manual_reset_event.cpp
    # lib/readable_file.cpp
    # lib/read_only_file.cpp
    # lib/read_write_file.cpp
    # lib/socket_accept_operation.cpp
    # lib/socket_connect_operation.cpp
    # lib/socket.cpp
    # lib/socket_disconnect_operation.cpp
    # lib/socket_helpers.cpp
    # lib/socket_recv_from_operation.cpp
    # lib/socket_recv_operation.cpp
    # lib/socket_send_operation.cpp
    # lib/socket_send_to_operation.cpp
    lib/spin_mutex.cpp
    lib/spin_wait.cpp
    lib/static_thread_pool.cpp
    # lib/win32.cpp
    # lib/writable_file.cpp
    # lib/write_only_file.cpp
)

add_subdirectory(test)
