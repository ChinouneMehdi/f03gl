
include_directories( ${CMAKE_BINARY_DIR}/modules )

set( examples RandomSphere sphere stars blender scube modview plotfunc )

foreach( expl ${examples} )
  add_executable( ${expl} ${expl}.f90 )
  target_link_libraries( ${expl} f03gl_shared)
  set_target_properties( ${expl} PROPERTIES
    Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${expl}/ )
  add_test( NAME ${expl} COMMAND ${expl} )
endforeach()
