cmake_minimum_required(VERSION 3.10.2 FATAL_ERROR)


project(MulticopterControlTunable)

find_package(gz-sim8 REQUIRED COMPONENTS gui)

find_package(gz-cmake3 REQUIRED)
find_package(gz-plugin2 REQUIRED COMPONENTS register)
add_library(MulticopterControlTunable SHARED MulticopterVelocityControlTunable.cc LeeVelocityController.cc Common.cc)
target_link_libraries(MulticopterControlTunable
  gz-plugin2::gz-plugin2
  gz-sim8::gz-sim8
  gz-common5::gz-common5
  gz-transport13::gz-transport13
  Eigen3::Eigen)
