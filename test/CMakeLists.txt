cmake_minimum_required(VERSION 3.27)

project(test
    VERSION 0.0.1
    DESCRIPTION "Tests for cppcoro"
    HOMEPAGE_URL https://github.com/lewissbaker/cppcoro
    LANGUAGES CXX
)

enable_testing()
include(CTest)

set(target test)
add_executable(${target})
target_compile_features(${target} PRIVATE cxx_std_20)
target_link_libraries(${target} PRIVATE cppcoro)
target_sources(${target} PRIVATE
    main.cpp
    async_auto_reset_event_tests.cpp
    async_generator_tests.cpp
    async_latch_tests.cpp
    async_manual_reset_event_tests.cpp
    async_mutex_tests.cpp
    cancellation_token_tests.cpp
    counted.cpp
    # file_tests.cpp
    generator_tests.cpp
    # io_service_tests.cpp
    ip_address_tests.cpp
    ip_endpoint_tests.cpp
    ipv4_address_tests.cpp
    ipv4_endpoint_tests.cpp
    ipv6_address_tests.cpp
    ipv6_endpoint_tests.cpp
    multi_producer_sequencer_tests.cpp
    recursive_generator_tests.cpp
    # scheduling_operator_tests.cpp
    sequence_barrier_tests.cpp
    shared_task_tests.cpp
    single_consumer_async_auto_reset_event_tests.cpp
    single_producer_sequencer_tests.cpp
    # socket_tests.cpp
    static_thread_pool_tests.cpp
    sync_wait_tests.cpp
    task_tests.cpp
    # when_all_ready_tests.cpp
    # when_all_tests.cpp
)


set(target fixmes)
add_executable(${target})
target_compile_features(${target} PRIVATE cxx_std_20)
target_link_libraries(${target} PRIVATE cppcoro)
target_sources(${target} PRIVATE
    main.cpp
    # file_tests.cpp
    # io_service_tests.cpp
    # scheduling_operator_tests.cpp
    # socket_tests.cpp
    # when_all_ready_tests.cpp
    # when_all_tests.cpp
)
