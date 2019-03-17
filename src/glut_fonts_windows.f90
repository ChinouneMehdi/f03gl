MODULE glut_fonts
  USE iso_c_binding ,ONLY: C_PTR, C_NULL_PTR
  IMPLICIT NONE
  TYPE(C_PTR), PUBLIC, PARAMETER :: GLUT_STROKE_ROMAN          = TRANSFER( 0, C_NULL_PTR )
  TYPE(C_PTR), PUBLIC, PARAMETER :: GLUT_STROKE_MONO_ROMAN     = TRANSFER( 1, C_NULL_PTR )
  TYPE(C_PTR), PUBLIC, PARAMETER :: GLUT_BITMAP_9_BY_15        = TRANSFER( 2, C_NULL_PTR )
  TYPE(C_PTR), PUBLIC, PARAMETER :: GLUT_BITMAP_8_BY_13        = TRANSFER( 3, C_NULL_PTR )
  TYPE(C_PTR), PUBLIC, PARAMETER :: GLUT_BITMAP_TIMES_ROMAN_10 = TRANSFER( 4, C_NULL_PTR )
  TYPE(C_PTR), PUBLIC, PARAMETER :: GLUT_BITMAP_TIMES_ROMAN_24 = TRANSFER( 5, C_NULL_PTR )
  TYPE(C_PTR), PUBLIC, PARAMETER :: GLUT_BITMAP_HELVETICA_10   = TRANSFER( 6, C_NULL_PTR )
  TYPE(C_PTR), PUBLIC, PARAMETER :: GLUT_BITMAP_HELVETICA_12   = TRANSFER( 7, C_NULL_PTR )
  TYPE(C_PTR), PUBLIC, PARAMETER :: GLUT_BITMAP_HELVETICA_18   = TRANSFER( 8, C_NULL_PTR )
END MODULE glut_fonts