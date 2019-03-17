
add_library(f03gl SHARED GLUT_fonts.c OpenGL_${GLUT}.f90 OpenGL_glu.f90 OpenGL_gl.f90)

if (WIN32)
  set( F90GLUTLIB freeglut opengl32 glu32 )
else()
  set( F90GLUTLIB glut GL GLU )
endif ()

target_link_libraries(f03gl ${F90GLUTLIB})

install(TARGETS f03gl LIBRARY DESTINATION lib RUNTIME DESTINATION bin)