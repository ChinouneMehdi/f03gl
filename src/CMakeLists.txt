
set( srcs OpenGL_freeglut.f90 OpenGL_glu.f90 OpenGL_gl.f90 )

if(WIN32)
  set( srcs ${srcs} "glut_fonts_windows.f90" )
else()
  enable_language( C )
  set( srcs ${srcs} "GLUT_fonts.c" "glut_fonts_linux.f90" )
endif()

add_library( f03gl_object OBJECT ${srcs} )
set_property( TARGET f03gl_object PROPERTY POSITION_INDEPENDENT_CODE 1 )

set_target_properties( f03gl_object PROPERTIES Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/modules/ )

add_library( f03gl_static STATIC $<TARGET_OBJECTS:f03gl_object>)
add_library( f03gl_shared SHARED $<TARGET_OBJECTS:f03gl_object>)

set_target_properties( f03gl_static f03gl_shared PROPERTIES OUTPUT_NAME f03gl )

if (WIN32)
  set( F90GLUTLIB freeglut opengl32 glu32 )
else()
  set( F90GLUTLIB glut GL GLU )
endif ()

target_link_libraries( f03gl_shared ${F90GLUTLIB} )

install( TARGETS f03gl_shared f03gl_static
         RUNTIME DESTINATION bin
         LIBRARY DESTINATION lib
         ARCHIVE DESTINATION lib )
install( DIRECTORY ${CMAKE_BINARY_DIR}/modules/ DESTINATION include )