cmake_minimum_required(VERSION 3.15)

## Create project
project(happy-hacking-gnu C)

## Include source code
file(GLOB_RECURSE src src/*.h src/*.c)

## Add dependencies
file(GLOB_RECURSE deps deps/argparse/argparse.c deps/hidapi/linux/hid.c)

## Create executable
add_executable(happy-hacking-gnu ${src} ${deps})
set_target_properties(happy-hacking-gnu PROPERTIES OUTPUT_NAME "hhg")

## Include libraries 
target_link_libraries(happy-hacking-gnu PRIVATE udev)
target_include_directories(happy-hacking-gnu PRIVATE deps/argparse deps/hidapi/hidapi)