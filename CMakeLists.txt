cmake_minimum_required(VERSION 3.16)
project(lite_ai_toolkit)


message(${CMAKE_CURRENT_LIST_DIR})


set(CMAKE_CXX_STANDARD 17)

include(setup_3rdparty.cmake)
message(${OpenCV_INCLUDE_DIRS})

# 导入opencv头路径
include_directories(${OpenCV_INCLUDE_DIRS})
# 导入onnxruntime的头路径
include_directories(${ONNXRUNTIMR_INCLUDE_DIR})


add_executable(lite_ai_toolkit main.cpp)
target_link_libraries(lite_ai_toolkit ${OpenCV_LIBS} ${ONNXRUNTIMR_LIBRARY_DIR}/libonnxruntime.so.1.15.0)


