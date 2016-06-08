# googletestはtest/libに移すべき

set(GtestRoot ${PROJECT_SOURCE_DIR}/lib/googletest)
link_directories(${GtestRoot}/_build/googlemock)
link_libraries(gmock gmock_main)

include_directories(${ProductRoot})
include_directories(${GtestRoot}/googletest/include)
include_directories(${GtestRoot}/googlemock/include)

add_executable(test_product
  test_product.cpp
  )

add_custom_command(TARGET test_product
  POST_BUILD
  COMMAND echo '>> Run' ${CMAKE_CURRENT_BINARY_DIR}/test_product
  COMMAND ${CMAKE_CURRENT_BINARY_DIR}/test_product
  )
