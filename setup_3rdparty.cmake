# 设置第三方库的依赖
message("########## Setting up 3rd-party dependences for: ${CMAKE_CURRENT_SOURCE_DIR} ###########")
set(THIRDPARTY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/3rdparty)


# 1.检查OpenCV库是否可用
find_package(OpenCV  REQUIRED)

if (OpenCV_FOUND)
    include_directories(${OpenCV_INCLUDE_DIRS})
    message("=================================================================================")
    message(STATUS "    OpenCV library status:")
    message(STATUS "    version: ${OpenCV_VERSION}")
    message(STATUS "    libraries: ${OpenCV_LIBS}")
    message(STATUS "    include path: ${OpenCV_INCLUDE_DIRS}")
    message("=================================================================================")
else (OpenCV_FOUND)
    message(FATAL_ERROR "OpenCV library not found")
endif (OpenCV_FOUND)

# 2.设置ONNXRUNTIME
message("########## Setting up ONNXRuntime dependences for: ${CMAKE_CURRENT_SOURCE_DIR} ###########")
if (EXISTS ${THIRDPARTY_DIR})
    # 设置onnxruntime的路径 include和lib
    set(ONNXRUNTIME_DIR ${THIRDPARTY_DIR}/onnxruntime)
    set(ONNXRUNTIMR_INCLUDE_DIR ${ONNXRUNTIME_DIR}/include)
    set(ONNXRUNTIMR_LIBRARY_DIR ${ONNXRUNTIME_DIR}/lib)
    message(${ONNXRUNTIMR_INCLUDE_DIR})
endif ()