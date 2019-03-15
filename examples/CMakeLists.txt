
include_directories(${CMAKE_BINARY_DIR}/src)

set(examples sphere stars blender scube modview plotfunc)

foreach(expl ${examples})
  add_executable(${expl} ${expl}.f90)
  target_link_libraries(${expl} f03gl)
  add_test(NAME ${expl} COMMAND ${expl})
endforeach()
