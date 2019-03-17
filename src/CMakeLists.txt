
set( srcs OpenGL_${GLUT}.f90 OpenGL_glu.f90 OpenGL_gl.f90)

if(WIN32)
  set(srcs ${srcs} "glut_fonts_windows.f90" )
else()
  set(srcs ${srcs} "GLUT_fonts.c" "glut_fonts_linux.f90" )
endif()

add_library(f03gl SHARED ${srcs})

if (WIN32)
  set( F90GLUTLIB freeglut opengl32 glu32 )
else()
  set( F90GLUTLIB glut GL GLU )
endif ()

target_link_libraries(f03gl ${F90GLUTLIB})

install(TARGETS f03gl LIBRARY DESTINATION lib RUNTIME DESTINATION bin)