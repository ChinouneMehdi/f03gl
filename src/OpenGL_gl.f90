MODULE OpenGL_kinds
  USE, INTRINSIC :: ISO_C_BINDING
  IMPLICIT NONE
  PUBLIC

  ! Kind parameters
  ! Integer types:
  INTEGER, PARAMETER :: GLbyte=C_SIGNED_CHAR, GLshort=C_SHORT,            &
    GLint=C_INT, GLsizei=C_INT, GLboolean=C_SIGNED_CHAR, GLenum=C_INT,  &
    GLbitfield=C_INT, GLcint=C_INT, GLubyte=C_SIGNED_CHAR, &
    GLushort=C_SHORT, GLuint=C_INT
  ! Real types:
  INTEGER, PARAMETER :: GLdouble=C_DOUBLE, GLfloat=C_FLOAT, GLclampf=C_FLOAT, &
    GLclampd=C_DOUBLE

END MODULE OpenGL_kinds
MODULE OpenGL_GL
  USE, INTRINSIC :: ISO_C_BINDING
  USE OpenGL_kinds
  IMPLICIT NONE
  PUBLIC


  !  Version values
  INTEGER(GLenum), PARAMETER :: GL_VERSION_1_1=1
  INTEGER(GLenum), PARAMETER :: GL_VERSION_1_2=1

  !  AccumOp values
  INTEGER(GLenum), PARAMETER :: GL_ACCUM                 = INT( z'0100' ) ! 0x0100
  INTEGER(GLenum), PARAMETER :: GL_LOAD                  = INT( z'0101' ) ! 0x0101
  INTEGER(GLenum), PARAMETER :: GL_RETURN                = INT( z'0102' ) ! 0x0102
  INTEGER(GLenum), PARAMETER :: GL_MULT                  = INT( z'0103' ) ! 0x0103
  INTEGER(GLenum), PARAMETER :: GL_ADD                   = INT( z'0104' ) ! 0x0104
  !  AlphaFunction values
  INTEGER(GLenum), PARAMETER :: GL_NEVER                 = INT( z'0200' ) ! 0x0200
  INTEGER(GLenum), PARAMETER :: GL_LESS                  = INT( z'0201' ) ! 0x0201
  INTEGER(GLenum), PARAMETER :: GL_EQUAL                 = INT( z'0202' ) ! 0x0202
  INTEGER(GLenum), PARAMETER :: GL_LEQUAL                = INT( z'0203' ) ! 0x0203
  INTEGER(GLenum), PARAMETER :: GL_GREATER               = INT( z'0204' ) ! 0x0204
  INTEGER(GLenum), PARAMETER :: GL_NOTEQUAL              = INT( z'0205' ) ! 0x0205
  INTEGER(GLenum), PARAMETER :: GL_GEQUAL                = INT( z'0206' ) ! 0x0206
  INTEGER(GLenum), PARAMETER :: GL_ALWAYS                = INT( z'0207' ) ! 0x0207
  !  AttribMask values
  INTEGER(GLbitfield), PARAMETER :: GL_CURRENT_BIT           = INT( z'00000001' ) ! 0x00000001
  INTEGER(GLbitfield), PARAMETER :: GL_POINT_BIT             = INT( z'00000002' ) ! 0x00000002
  INTEGER(GLbitfield), PARAMETER :: GL_LINE_BIT              = INT( z'00000004' ) ! 0x00000004
  INTEGER(GLbitfield), PARAMETER :: GL_POLYGON_BIT           = INT( z'00000008' ) ! 0x00000008
  INTEGER(GLbitfield), PARAMETER :: GL_POLYGON_STIPPLE_BIT   = INT( z'00000010' ) ! 0x00000010
  INTEGER(GLbitfield), PARAMETER :: GL_PIXEL_MODE_BIT        = INT( z'00000020' ) ! 0x00000020
  INTEGER(GLbitfield), PARAMETER :: GL_LIGHTING_BIT          = INT( z'00000040' ) ! 0x00000040
  INTEGER(GLbitfield), PARAMETER :: GL_FOG_BIT               = INT( z'00000080' ) ! 0x00000080
  INTEGER(GLbitfield), PARAMETER :: GL_DEPTH_BUFFER_BIT      = INT( z'00000100' ) ! 0x00000100
  INTEGER(GLbitfield), PARAMETER :: GL_ACCUM_BUFFER_BIT      = INT( z'00000200' ) ! 0x00000200
  INTEGER(GLbitfield), PARAMETER :: GL_STENCIL_BUFFER_BIT    = INT( z'00000400' ) ! 0x00000400
  INTEGER(GLbitfield), PARAMETER :: GL_VIEWPORT_BIT          = INT( z'00000800' ) ! 0x00000800
  INTEGER(GLbitfield), PARAMETER :: GL_TRANSFORM_BIT         = INT( z'00001000' ) ! 0x00001000
  INTEGER(GLbitfield), PARAMETER :: GL_ENABLE_BIT            = INT( z'00002000' ) ! 0x00002000
  INTEGER(GLbitfield), PARAMETER :: GL_COLOR_BUFFER_BIT      = INT( z'00004000' ) ! 0x00004000
  INTEGER(GLbitfield), PARAMETER :: GL_HINT_BIT              = INT( z'00008000' ) ! 0x00008000
  INTEGER(GLbitfield), PARAMETER :: GL_EVAL_BIT              = INT( z'00010000' ) ! 0x00010000
  INTEGER(GLbitfield), PARAMETER :: GL_LIST_BIT              = INT( z'00020000' ) ! 0x00020000
  INTEGER(GLbitfield), PARAMETER :: GL_TEXTURE_BIT           = INT( z'00040000' ) ! 0x00040000
  INTEGER(GLbitfield), PARAMETER :: GL_SCISSOR_BIT           = INT( z'00080000' ) ! 0x00080000
  INTEGER(GLbitfield), PARAMETER :: GL_ALL_ATTRIB_BITS       = INT( z'000fffff' ) ! 0x000fffff
  !  BeginMode values
  INTEGER(GLenum), PARAMETER :: GL_POINTS                = INT( z'0000' ) ! 0x0000
  INTEGER(GLenum), PARAMETER :: GL_LINES                 = INT( z'0001' ) ! 0x0001
  INTEGER(GLenum), PARAMETER :: GL_LINE_LOOP             = INT( z'0002' ) ! 0x0002
  INTEGER(GLenum), PARAMETER :: GL_LINE_STRIP            = INT( z'0003' ) ! 0x0003
  INTEGER(GLenum), PARAMETER :: GL_TRIANGLES             = INT( z'0004' ) ! 0x0004
  INTEGER(GLenum), PARAMETER :: GL_TRIANGLE_STRIP        = INT( z'0005' ) ! 0x0005
  INTEGER(GLenum), PARAMETER :: GL_TRIANGLE_FAN          = INT( z'0006' ) ! 0x0006
  INTEGER(GLenum), PARAMETER :: GL_QUADS                 = INT( z'0007' ) ! 0x0007
  INTEGER(GLenum), PARAMETER :: GL_QUAD_STRIP            = INT( z'0008' ) ! 0x0008
  INTEGER(GLenum), PARAMETER :: GL_POLYGON               = INT( z'0009' ) ! 0x0009
  !  BlendEquationMode values
  !  BlendingFactorDest values
  INTEGER(GLenum), PARAMETER :: GL_ZERO                  = 0 ! 0
  INTEGER(GLenum), PARAMETER :: GL_ONE                   = 1 ! 1
  INTEGER(GLenum), PARAMETER :: GL_SRC_COLOR             = INT( z'0300' ) ! 0x0300
  INTEGER(GLenum), PARAMETER :: GL_ONE_MINUS_SRC_COLOR   = INT( z'0301' ) ! 0x0301
  INTEGER(GLenum), PARAMETER :: GL_SRC_ALPHA             = INT( z'0302' ) ! 0x0302
  INTEGER(GLenum), PARAMETER :: GL_ONE_MINUS_SRC_ALPHA   = INT( z'0303' ) ! 0x0303
  INTEGER(GLenum), PARAMETER :: GL_DST_ALPHA             = INT( z'0304' ) ! 0x0304
  INTEGER(GLenum), PARAMETER :: GL_ONE_MINUS_DST_ALPHA   = INT( z'0305' ) ! 0x0305
  !  BlendingFactorSrc values
  INTEGER(GLenum), PARAMETER :: GL_DST_COLOR             = INT( z'0306' ) ! 0x0306
  INTEGER(GLenum), PARAMETER :: GL_ONE_MINUS_DST_COLOR   = INT( z'0307' ) ! 0x0307
  INTEGER(GLenum), PARAMETER :: GL_SRC_ALPHA_SATURATE    = INT( z'0308' ) ! 0x0308
  !  Boolean values
  INTEGER(GLboolean), PARAMETER :: GL_TRUE                  = 1 ! 1
  INTEGER(GLboolean), PARAMETER :: GL_FALSE                 = 0 ! 0
  !  ClearBufferMask values
  !  ClientArrayType values
  !  ClipPlaneName values
  INTEGER(GLenum), PARAMETER :: GL_CLIP_PLANE0           = INT( z'3000' ) ! 0x3000
  INTEGER(GLenum), PARAMETER :: GL_CLIP_PLANE1           = INT( z'3001' ) ! 0x3001
  INTEGER(GLenum), PARAMETER :: GL_CLIP_PLANE2           = INT( z'3002' ) ! 0x3002
  INTEGER(GLenum), PARAMETER :: GL_CLIP_PLANE3           = INT( z'3003' ) ! 0x3003
  INTEGER(GLenum), PARAMETER :: GL_CLIP_PLANE4           = INT( z'3004' ) ! 0x3004
  INTEGER(GLenum), PARAMETER :: GL_CLIP_PLANE5           = INT( z'3005' ) ! 0x3005
  !  ColorMaterialFace values
  !  ColorMaterialParameter values
  !  ColorPointerType values
  !  ColorTableParameterPName values
  !  ColorTableTarget values
  !  ConvolutionBorderMode values
  !  ConvolutionParameter values
  !  ConvolutionTarget values
  !  CullFaceMode values
  !  DataType values
  INTEGER(GLenum), PARAMETER :: GL_BYTE                  = INT( z'1400' ) ! 0x1400
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_BYTE         = INT( z'1401' ) ! 0x1401
  INTEGER(GLenum), PARAMETER :: GL_SHORT                 = INT( z'1402' ) ! 0x1402
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_SHORT        = INT( z'1403' ) ! 0x1403
  INTEGER(GLenum), PARAMETER :: GL_INT                   = INT( z'1404' ) ! 0x1404
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_INT          = INT( z'1405' ) ! 0x1405
  INTEGER(GLenum), PARAMETER :: GL_FLOAT                 = INT( z'1406' ) ! 0x1406
  INTEGER(GLenum), PARAMETER :: GL_2_BYTES               = INT( z'1407' ) ! 0x1407
  INTEGER(GLenum), PARAMETER :: GL_3_BYTES               = INT( z'1408' ) ! 0x1408
  INTEGER(GLenum), PARAMETER :: GL_4_BYTES               = INT( z'1409' ) ! 0x1409
  INTEGER(GLenum), PARAMETER :: GL_DOUBLE                = INT( z'140A' ) ! 0x140A
  !  DepthFunction values
  !  DrawBufferMode values
  INTEGER(GLenum), PARAMETER :: GL_NONE                  = 0 ! 0
  INTEGER(GLenum), PARAMETER :: GL_FRONT_LEFT            = INT( z'0400' ) ! 0x0400
  INTEGER(GLenum), PARAMETER :: GL_FRONT_RIGHT           = INT( z'0401' ) ! 0x0401
  INTEGER(GLenum), PARAMETER :: GL_BACK_LEFT             = INT( z'0402' ) ! 0x0402
  INTEGER(GLenum), PARAMETER :: GL_BACK_RIGHT            = INT( z'0403' ) ! 0x0403
  INTEGER(GLenum), PARAMETER :: GL_FRONT                 = INT( z'0404' ) ! 0x0404
  INTEGER(GLenum), PARAMETER :: GL_BACK                  = INT( z'0405' ) ! 0x0405
  INTEGER(GLenum), PARAMETER :: GL_LEFT                  = INT( z'0406' ) ! 0x0406
  INTEGER(GLenum), PARAMETER :: GL_RIGHT                 = INT( z'0407' ) ! 0x0407
  INTEGER(GLenum), PARAMETER :: GL_FRONT_AND_BACK        = INT( z'0408' ) ! 0x0408
  INTEGER(GLenum), PARAMETER :: GL_AUX0                  = INT( z'0409' ) ! 0x0409
  INTEGER(GLenum), PARAMETER :: GL_AUX1                  = INT( z'040A' ) ! 0x040A
  INTEGER(GLenum), PARAMETER :: GL_AUX2                  = INT( z'040B' ) ! 0x040B
  INTEGER(GLenum), PARAMETER :: GL_AUX3                  = INT( z'040C' ) ! 0x040C
  !  Enable values
  !  ErrorCode values
  INTEGER(GLenum), PARAMETER :: GL_NO_ERROR              = 0 ! 0
  INTEGER(GLenum), PARAMETER :: GL_INVALID_ENUM          = INT( z'0500' ) ! 0x0500
  INTEGER(GLenum), PARAMETER :: GL_INVALID_VALUE         = INT( z'0501' ) ! 0x0501
  INTEGER(GLenum), PARAMETER :: GL_INVALID_OPERATION     = INT( z'0502' ) ! 0x0502
  INTEGER(GLenum), PARAMETER :: GL_STACK_OVERFLOW        = INT( z'0503' ) ! 0x0503
  INTEGER(GLenum), PARAMETER :: GL_STACK_UNDERFLOW       = INT( z'0504' ) ! 0x0504
  INTEGER(GLenum), PARAMETER :: GL_OUT_OF_MEMORY         = INT( z'0505' ) ! 0x0505
  !  FeedBackMode values
  INTEGER(GLenum), PARAMETER :: GL_2D                    = INT( z'0600' ) ! 0x0600
  INTEGER(GLenum), PARAMETER :: GL_3D                    = INT( z'0601' ) ! 0x0601
  INTEGER(GLenum), PARAMETER :: GL_3D_COLOR              = INT( z'0602' ) ! 0x0602
  INTEGER(GLenum), PARAMETER :: GL_3D_COLOR_TEXTURE      = INT( z'0603' ) ! 0x0603
  INTEGER(GLenum), PARAMETER :: GL_4D_COLOR_TEXTURE      = INT( z'0604' ) ! 0x0604
  !  FeedBackToken values
  REAL(GLfloat), PARAMETER :: GL_PASS_THROUGH_TOKEN    = transfer(1792,1.0) ! 0x0700
  REAL(GLfloat), PARAMETER :: GL_POINT_TOKEN           = transfer(1793,1.0) ! 0x0701
  REAL(GLfloat), PARAMETER :: GL_LINE_TOKEN            = transfer(1794,1.0) ! 0x0702
  REAL(GLfloat), PARAMETER :: GL_POLYGON_TOKEN         = transfer(1795,1.0) ! 0x0703
  REAL(GLfloat), PARAMETER :: GL_BITMAP_TOKEN          = transfer(1796,1.0) ! 0x0704
  REAL(GLfloat), PARAMETER :: GL_DRAW_PIXEL_TOKEN      = transfer(1797,1.0) ! 0x0705
  REAL(GLfloat), PARAMETER :: GL_COPY_PIXEL_TOKEN      = transfer(1798,1.0) ! 0x0706
  REAL(GLfloat), PARAMETER :: GL_LINE_RESET_TOKEN      = transfer(1799,1.0) ! 0x0707
  !  FogMode values
  INTEGER(GLenum), PARAMETER :: GL_EXP                   = INT( z'0800' ) ! 0x0800
  INTEGER(GLenum), PARAMETER :: GL_EXP2                  = INT( z'0801' ) ! 0x0801
  !  FogParameter values
  !  FrontFaceDirection values
  INTEGER(GLenum), PARAMETER :: GL_CW                    = INT( z'0900' ) ! 0x0900
  INTEGER(GLenum), PARAMETER :: GL_CCW                   = INT( z'0901' ) ! 0x0901
  !  GetColorTableParameterPName values
  !  GetConvolutionParameterPName values
  !  GetHistogramParameterPName values
  !  GetMapTarget values
  INTEGER(GLenum), PARAMETER :: GL_COEFF                 = INT( z'0A00' ) ! 0x0A00
  INTEGER(GLenum), PARAMETER :: GL_ORDER                 = INT( z'0A01' ) ! 0x0A01
  INTEGER(GLenum), PARAMETER :: GL_DOMAIN                = INT( z'0A02' ) ! 0x0A02
  !  GetMinmaxParameterPName values
  !  GetPixelMap values
  !  GetPointerTarget values
  !  GetTarget values
  INTEGER(GLenum), PARAMETER :: GL_CURRENT_COLOR         = INT( z'0B00' ) ! 0x0B00
  INTEGER(GLenum), PARAMETER :: GL_CURRENT_INDEX         = INT( z'0B01' ) ! 0x0B01
  INTEGER(GLenum), PARAMETER :: GL_CURRENT_NORMAL        = INT( z'0B02' ) ! 0x0B02
  INTEGER(GLenum), PARAMETER :: GL_CURRENT_TEXTURE_COORDS = INT( z'0B03' ) ! 0x0B03
  INTEGER(GLenum), PARAMETER :: GL_CURRENT_RASTER_COLOR  = INT( z'0B04' ) ! 0x0B04
  INTEGER(GLenum), PARAMETER :: GL_CURRENT_RASTER_INDEX  = INT( z'0B05' ) ! 0x0B05
  INTEGER(GLenum), PARAMETER :: GL_CURRENT_RASTER_TEXTURE_COORDS = INT( z'0B06' ) ! 0x0B06
  INTEGER(GLenum), PARAMETER :: GL_CURRENT_RASTER_POSITION = INT( z'0B07' ) ! 0x0B07
  INTEGER(GLenum), PARAMETER :: GL_CURRENT_RASTER_POSITION_VALID = INT( z'0B08' ) ! 0x0B08
  INTEGER(GLenum), PARAMETER :: GL_CURRENT_RASTER_DISTANCE = INT( z'0B09' ) ! 0x0B09
  INTEGER(GLenum), PARAMETER :: GL_POINT_SMOOTH          = INT( z'0B10' ) ! 0x0B10
  INTEGER(GLenum), PARAMETER :: GL_POINT_SIZE            = INT( z'0B11' ) ! 0x0B11
  INTEGER(GLenum), PARAMETER :: GL_POINT_SIZE_RANGE      = INT( z'0B12' ) ! 0x0B12
  INTEGER(GLenum), PARAMETER :: GL_POINT_SIZE_GRANULARITY = INT( z'0B13' ) ! 0x0B13
  INTEGER(GLenum), PARAMETER :: GL_LINE_SMOOTH           = INT( z'0B20' ) ! 0x0B20
  INTEGER(GLenum), PARAMETER :: GL_LINE_WIDTH            = INT( z'0B21' ) ! 0x0B21
  INTEGER(GLenum), PARAMETER :: GL_LINE_WIDTH_RANGE      = INT( z'0B22' ) ! 0x0B22
  INTEGER(GLenum), PARAMETER :: GL_LINE_WIDTH_GRANULARITY = INT( z'0B23' ) ! 0x0B23
  INTEGER(GLenum), PARAMETER :: GL_LINE_STIPPLE          = INT( z'0B24' ) ! 0x0B24
  INTEGER(GLenum), PARAMETER :: GL_LINE_STIPPLE_PATTERN  = INT( z'0B25' ) ! 0x0B25
  INTEGER(GLenum), PARAMETER :: GL_LINE_STIPPLE_REPEAT   = INT( z'0B26' ) ! 0x0B26
  INTEGER(GLenum), PARAMETER :: GL_LIST_MODE             = INT( z'0B30' ) ! 0x0B30
  INTEGER(GLenum), PARAMETER :: GL_MAX_LIST_NESTING      = INT( z'0B31' ) ! 0x0B31
  INTEGER(GLenum), PARAMETER :: GL_LIST_BASE             = INT( z'0B32' ) ! 0x0B32
  INTEGER(GLenum), PARAMETER :: GL_LIST_INDEX            = INT( z'0B33' ) ! 0x0B33
  INTEGER(GLenum), PARAMETER :: GL_POLYGON_MODE          = INT( z'0B40' ) ! 0x0B40
  INTEGER(GLenum), PARAMETER :: GL_POLYGON_SMOOTH        = INT( z'0B41' ) ! 0x0B41
  INTEGER(GLenum), PARAMETER :: GL_POLYGON_STIPPLE       = INT( z'0B42' ) ! 0x0B42
  INTEGER(GLenum), PARAMETER :: GL_EDGE_FLAG             = INT( z'0B43' ) ! 0x0B43
  INTEGER(GLenum), PARAMETER :: GL_CULL_FACE             = INT( z'0B44' ) ! 0x0B44
  INTEGER(GLenum), PARAMETER :: GL_CULL_FACE_MODE        = INT( z'0B45' ) ! 0x0B45
  INTEGER(GLenum), PARAMETER :: GL_FRONT_FACE            = INT( z'0B46' ) ! 0x0B46
  INTEGER(GLenum), PARAMETER :: GL_LIGHTING              = INT( z'0B50' ) ! 0x0B50
  INTEGER(GLenum), PARAMETER :: GL_LIGHT_MODEL_LOCAL_VIEWER = INT( z'0B51' ) ! 0x0B51
  INTEGER(GLenum), PARAMETER :: GL_LIGHT_MODEL_TWO_SIDE  = INT( z'0B52' ) ! 0x0B52
  INTEGER(GLenum), PARAMETER :: GL_LIGHT_MODEL_AMBIENT   = INT( z'0B53' ) ! 0x0B53
  INTEGER(GLenum), PARAMETER :: GL_SHADE_MODEL           = INT( z'0B54' ) ! 0x0B54
  INTEGER(GLenum), PARAMETER :: GL_COLOR_MATERIAL_FACE   = INT( z'0B55' ) ! 0x0B55
  INTEGER(GLenum), PARAMETER :: GL_COLOR_MATERIAL_PARAMETER = INT( z'0B56' ) ! 0x0B56
  INTEGER(GLenum), PARAMETER :: GL_COLOR_MATERIAL        = INT( z'0B57' ) ! 0x0B57
  INTEGER(GLenum), PARAMETER :: GL_FOG                   = INT( z'0B60' ) ! 0x0B60
  INTEGER(GLenum), PARAMETER :: GL_FOG_INDEX             = INT( z'0B61' ) ! 0x0B61
  INTEGER(GLenum), PARAMETER :: GL_FOG_DENSITY           = INT( z'0B62' ) ! 0x0B62
  INTEGER(GLenum), PARAMETER :: GL_FOG_START             = INT( z'0B63' ) ! 0x0B63
  INTEGER(GLenum), PARAMETER :: GL_FOG_END               = INT( z'0B64' ) ! 0x0B64
  INTEGER(GLenum), PARAMETER :: GL_FOG_MODE              = INT( z'0B65' ) ! 0x0B65
  INTEGER(GLenum), PARAMETER :: GL_FOG_COLOR             = INT( z'0B66' ) ! 0x0B66
  INTEGER(GLenum), PARAMETER :: GL_DEPTH_RANGE           = INT( z'0B70' ) ! 0x0B70
  INTEGER(GLenum), PARAMETER :: GL_DEPTH_TEST            = INT( z'0B71' ) ! 0x0B71
  INTEGER(GLenum), PARAMETER :: GL_DEPTH_WRITEMASK       = INT( z'0B72' ) ! 0x0B72
  INTEGER(GLenum), PARAMETER :: GL_DEPTH_CLEAR_VALUE     = INT( z'0B73' ) ! 0x0B73
  INTEGER(GLenum), PARAMETER :: GL_DEPTH_FUNC            = INT( z'0B74' ) ! 0x0B74
  INTEGER(GLenum), PARAMETER :: GL_ACCUM_CLEAR_VALUE     = INT( z'0B80' ) ! 0x0B80
  INTEGER(GLenum), PARAMETER :: GL_STENCIL_TEST          = INT( z'0B90' ) ! 0x0B90
  INTEGER(GLenum), PARAMETER :: GL_STENCIL_CLEAR_VALUE   = INT( z'0B91' ) ! 0x0B91
  INTEGER(GLenum), PARAMETER :: GL_STENCIL_FUNC          = INT( z'0B92' ) ! 0x0B92
  INTEGER(GLenum), PARAMETER :: GL_STENCIL_VALUE_MASK    = INT( z'0B93' ) ! 0x0B93
  INTEGER(GLenum), PARAMETER :: GL_STENCIL_FAIL          = INT( z'0B94' ) ! 0x0B94
  INTEGER(GLenum), PARAMETER :: GL_STENCIL_PASS_DEPTH_FAIL = INT( z'0B95' ) ! 0x0B95
  INTEGER(GLenum), PARAMETER :: GL_STENCIL_PASS_DEPTH_PASS = INT( z'0B96' ) ! 0x0B96
  INTEGER(GLenum), PARAMETER :: GL_STENCIL_REF           = INT( z'0B97' ) ! 0x0B97
  INTEGER(GLenum), PARAMETER :: GL_STENCIL_WRITEMASK     = INT( z'0B98' ) ! 0x0B98
  INTEGER(GLenum), PARAMETER :: GL_MATRIX_MODE           = INT( z'0BA0' ) ! 0x0BA0
  INTEGER(GLenum), PARAMETER :: GL_NORMALIZE             = INT( z'0BA1' ) ! 0x0BA1
  INTEGER(GLenum), PARAMETER :: GL_VIEWPORT              = INT( z'0BA2' ) ! 0x0BA2
  INTEGER(GLenum), PARAMETER :: GL_MODELVIEW_STACK_DEPTH = INT( z'0BA3' ) ! 0x0BA3
  INTEGER(GLenum), PARAMETER :: GL_PROJECTION_STACK_DEPTH = INT( z'0BA4' ) ! 0x0BA4
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_STACK_DEPTH   = INT( z'0BA5' ) ! 0x0BA5
  INTEGER(GLenum), PARAMETER :: GL_MODELVIEW_MATRIX      = INT( z'0BA6' ) ! 0x0BA6
  INTEGER(GLenum), PARAMETER :: GL_PROJECTION_MATRIX     = INT( z'0BA7' ) ! 0x0BA7
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_MATRIX        = INT( z'0BA8' ) ! 0x0BA8
  INTEGER(GLenum), PARAMETER :: GL_ATTRIB_STACK_DEPTH    = INT( z'0BB0' ) ! 0x0BB0
  INTEGER(GLenum), PARAMETER :: GL_CLIENT_ATTRIB_STACK_DEPTH = INT( z'0BB1' ) ! 0x0BB1
  INTEGER(GLenum), PARAMETER :: GL_ALPHA_TEST            = INT( z'0BC0' ) ! 0x0BC0
  INTEGER(GLenum), PARAMETER :: GL_ALPHA_TEST_FUNC       = INT( z'0BC1' ) ! 0x0BC1
  INTEGER(GLenum), PARAMETER :: GL_ALPHA_TEST_REF        = INT( z'0BC2' ) ! 0x0BC2
  INTEGER(GLenum), PARAMETER :: GL_DITHER                = INT( z'0BD0' ) ! 0x0BD0
  INTEGER(GLenum), PARAMETER :: GL_BLEND_DST             = INT( z'0BE0' ) ! 0x0BE0
  INTEGER(GLenum), PARAMETER :: GL_BLEND_SRC             = INT( z'0BE1' ) ! 0x0BE1
  INTEGER(GLenum), PARAMETER :: GL_BLEND                 = INT( z'0BE2' ) ! 0x0BE2
  INTEGER(GLenum), PARAMETER :: GL_LOGIC_OP_MODE         = INT( z'0BF0' ) ! 0x0BF0
  INTEGER(GLenum), PARAMETER :: GL_INDEX_LOGIC_OP        = INT( z'0BF1' ) ! 0x0BF1
  INTEGER(GLenum), PARAMETER :: GL_COLOR_LOGIC_OP        = INT( z'0BF2' ) ! 0x0BF2
  INTEGER(GLenum), PARAMETER :: GL_AUX_BUFFERS           = INT( z'0C00' ) ! 0x0C00
  INTEGER(GLenum), PARAMETER :: GL_DRAW_BUFFER           = INT( z'0C01' ) ! 0x0C01
  INTEGER(GLenum), PARAMETER :: GL_READ_BUFFER           = INT( z'0C02' ) ! 0x0C02
  INTEGER(GLenum), PARAMETER :: GL_SCISSOR_BOX           = INT( z'0C10' ) ! 0x0C10
  INTEGER(GLenum), PARAMETER :: GL_SCISSOR_TEST          = INT( z'0C11' ) ! 0x0C11
  INTEGER(GLenum), PARAMETER :: GL_INDEX_CLEAR_VALUE     = INT( z'0C20' ) ! 0x0C20
  INTEGER(GLenum), PARAMETER :: GL_INDEX_WRITEMASK       = INT( z'0C21' ) ! 0x0C21
  INTEGER(GLenum), PARAMETER :: GL_COLOR_CLEAR_VALUE     = INT( z'0C22' ) ! 0x0C22
  INTEGER(GLenum), PARAMETER :: GL_COLOR_WRITEMASK       = INT( z'0C23' ) ! 0x0C23
  INTEGER(GLenum), PARAMETER :: GL_INDEX_MODE            = INT( z'0C30' ) ! 0x0C30
  INTEGER(GLenum), PARAMETER :: GL_RGBA_MODE             = INT( z'0C31' ) ! 0x0C31
  INTEGER(GLenum), PARAMETER :: GL_DOUBLEBUFFER          = INT( z'0C32' ) ! 0x0C32
  INTEGER(GLenum), PARAMETER :: GL_STEREO                = INT( z'0C33' ) ! 0x0C33
  INTEGER(GLenum), PARAMETER :: GL_RENDER_MODE           = INT( z'0C40' ) ! 0x0C40
  INTEGER(GLenum), PARAMETER :: GL_PERSPECTIVE_CORRECTION_HINT = INT( z'0C50' ) ! 0x0C50
  INTEGER(GLenum), PARAMETER :: GL_POINT_SMOOTH_HINT     = INT( z'0C51' ) ! 0x0C51
  INTEGER(GLenum), PARAMETER :: GL_LINE_SMOOTH_HINT      = INT( z'0C52' ) ! 0x0C52
  INTEGER(GLenum), PARAMETER :: GL_POLYGON_SMOOTH_HINT   = INT( z'0C53' ) ! 0x0C53
  INTEGER(GLenum), PARAMETER :: GL_FOG_HINT              = INT( z'0C54' ) ! 0x0C54
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_GEN_S         = INT( z'0C60' ) ! 0x0C60
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_GEN_T         = INT( z'0C61' ) ! 0x0C61
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_GEN_R         = INT( z'0C62' ) ! 0x0C62
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_GEN_Q         = INT( z'0C63' ) ! 0x0C63
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_I_TO_I      = INT( z'0C70' ) ! 0x0C70
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_S_TO_S      = INT( z'0C71' ) ! 0x0C71
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_I_TO_R      = INT( z'0C72' ) ! 0x0C72
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_I_TO_G      = INT( z'0C73' ) ! 0x0C73
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_I_TO_B      = INT( z'0C74' ) ! 0x0C74
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_I_TO_A      = INT( z'0C75' ) ! 0x0C75
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_R_TO_R      = INT( z'0C76' ) ! 0x0C76
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_G_TO_G      = INT( z'0C77' ) ! 0x0C77
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_B_TO_B      = INT( z'0C78' ) ! 0x0C78
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_A_TO_A      = INT( z'0C79' ) ! 0x0C79
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_I_TO_I_SIZE = INT( z'0CB0' ) ! 0x0CB0
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_S_TO_S_SIZE = INT( z'0CB1' ) ! 0x0CB1
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_I_TO_R_SIZE = INT( z'0CB2' ) ! 0x0CB2
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_I_TO_G_SIZE = INT( z'0CB3' ) ! 0x0CB3
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_I_TO_B_SIZE = INT( z'0CB4' ) ! 0x0CB4
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_I_TO_A_SIZE = INT( z'0CB5' ) ! 0x0CB5
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_R_TO_R_SIZE = INT( z'0CB6' ) ! 0x0CB6
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_G_TO_G_SIZE = INT( z'0CB7' ) ! 0x0CB7
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_B_TO_B_SIZE = INT( z'0CB8' ) ! 0x0CB8
  INTEGER(GLenum), PARAMETER :: GL_PIXEL_MAP_A_TO_A_SIZE = INT( z'0CB9' ) ! 0x0CB9
  INTEGER(GLenum), PARAMETER :: GL_UNPACK_SWAP_BYTES     = INT( z'0CF0' ) ! 0x0CF0
  INTEGER(GLenum), PARAMETER :: GL_UNPACK_LSB_FIRST      = INT( z'0CF1' ) ! 0x0CF1
  INTEGER(GLenum), PARAMETER :: GL_UNPACK_ROW_LENGTH     = INT( z'0CF2' ) ! 0x0CF2
  INTEGER(GLenum), PARAMETER :: GL_UNPACK_SKIP_ROWS      = INT( z'0CF3' ) ! 0x0CF3
  INTEGER(GLenum), PARAMETER :: GL_UNPACK_SKIP_PIXELS    = INT( z'0CF4' ) ! 0x0CF4
  INTEGER(GLenum), PARAMETER :: GL_UNPACK_ALIGNMENT      = INT( z'0CF5' ) ! 0x0CF5
  INTEGER(GLenum), PARAMETER :: GL_PACK_SWAP_BYTES       = INT( z'0D00' ) ! 0x0D00
  INTEGER(GLenum), PARAMETER :: GL_PACK_LSB_FIRST        = INT( z'0D01' ) ! 0x0D01
  INTEGER(GLenum), PARAMETER :: GL_PACK_ROW_LENGTH       = INT( z'0D02' ) ! 0x0D02
  INTEGER(GLenum), PARAMETER :: GL_PACK_SKIP_ROWS        = INT( z'0D03' ) ! 0x0D03
  INTEGER(GLenum), PARAMETER :: GL_PACK_SKIP_PIXELS      = INT( z'0D04' ) ! 0x0D04
  INTEGER(GLenum), PARAMETER :: GL_PACK_ALIGNMENT        = INT( z'0D05' ) ! 0x0D05
  INTEGER(GLenum), PARAMETER :: GL_MAP_COLOR             = INT( z'0D10' ) ! 0x0D10
  INTEGER(GLenum), PARAMETER :: GL_MAP_STENCIL           = INT( z'0D11' ) ! 0x0D11
  INTEGER(GLenum), PARAMETER :: GL_INDEX_SHIFT           = INT( z'0D12' ) ! 0x0D12
  INTEGER(GLenum), PARAMETER :: GL_INDEX_OFFSET          = INT( z'0D13' ) ! 0x0D13
  INTEGER(GLenum), PARAMETER :: GL_RED_SCALE             = INT( z'0D14' ) ! 0x0D14
  INTEGER(GLenum), PARAMETER :: GL_RED_BIAS              = INT( z'0D15' ) ! 0x0D15
  INTEGER(GLenum), PARAMETER :: GL_ZOOM_X                = INT( z'0D16' ) ! 0x0D16
  INTEGER(GLenum), PARAMETER :: GL_ZOOM_Y                = INT( z'0D17' ) ! 0x0D17
  INTEGER(GLenum), PARAMETER :: GL_GREEN_SCALE           = INT( z'0D18' ) ! 0x0D18
  INTEGER(GLenum), PARAMETER :: GL_GREEN_BIAS            = INT( z'0D19' ) ! 0x0D19
  INTEGER(GLenum), PARAMETER :: GL_BLUE_SCALE            = INT( z'0D1A' ) ! 0x0D1A
  INTEGER(GLenum), PARAMETER :: GL_BLUE_BIAS             = INT( z'0D1B' ) ! 0x0D1B
  INTEGER(GLenum), PARAMETER :: GL_ALPHA_SCALE           = INT( z'0D1C' ) ! 0x0D1C
  INTEGER(GLenum), PARAMETER :: GL_ALPHA_BIAS            = INT( z'0D1D' ) ! 0x0D1D
  INTEGER(GLenum), PARAMETER :: GL_DEPTH_SCALE           = INT( z'0D1E' ) ! 0x0D1E
  INTEGER(GLenum), PARAMETER :: GL_DEPTH_BIAS            = INT( z'0D1F' ) ! 0x0D1F
  INTEGER(GLenum), PARAMETER :: GL_MAX_EVAL_ORDER        = INT( z'0D30' ) ! 0x0D30
  INTEGER(GLenum), PARAMETER :: GL_MAX_LIGHTS            = INT( z'0D31' ) ! 0x0D31
  INTEGER(GLenum), PARAMETER :: GL_MAX_CLIP_PLANES       = INT( z'0D32' ) ! 0x0D32
  INTEGER(GLenum), PARAMETER :: GL_MAX_TEXTURE_SIZE      = INT( z'0D33' ) ! 0x0D33
  INTEGER(GLenum), PARAMETER :: GL_MAX_PIXEL_MAP_TABLE   = INT( z'0D34' ) ! 0x0D34
  INTEGER(GLenum), PARAMETER :: GL_MAX_ATTRIB_STACK_DEPTH = INT( z'0D35' ) ! 0x0D35
  INTEGER(GLenum), PARAMETER :: GL_MAX_MODELVIEW_STACK_DEPTH = INT( z'0D36' ) ! 0x0D36
  INTEGER(GLenum), PARAMETER :: GL_MAX_NAME_STACK_DEPTH  = INT( z'0D37' ) ! 0x0D37
  INTEGER(GLenum), PARAMETER :: GL_MAX_PROJECTION_STACK_DEPTH = INT( z'0D38' ) ! 0x0D38
  INTEGER(GLenum), PARAMETER :: GL_MAX_TEXTURE_STACK_DEPTH = INT( z'0D39' ) ! 0x0D39
  INTEGER(GLenum), PARAMETER :: GL_MAX_VIEWPORT_DIMS     = INT( z'0D3A' ) ! 0x0D3A
  INTEGER(GLenum), PARAMETER :: GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = INT( z'0D3B' ) ! 0x0D3B
  INTEGER(GLenum), PARAMETER :: GL_SUBPIXEL_BITS         = INT( z'0D50' ) ! 0x0D50
  INTEGER(GLenum), PARAMETER :: GL_INDEX_BITS            = INT( z'0D51' ) ! 0x0D51
  INTEGER(GLenum), PARAMETER :: GL_RED_BITS              = INT( z'0D52' ) ! 0x0D52
  INTEGER(GLenum), PARAMETER :: GL_GREEN_BITS            = INT( z'0D53' ) ! 0x0D53
  INTEGER(GLenum), PARAMETER :: GL_BLUE_BITS             = INT( z'0D54' ) ! 0x0D54
  INTEGER(GLenum), PARAMETER :: GL_ALPHA_BITS            = INT( z'0D55' ) ! 0x0D55
  INTEGER(GLenum), PARAMETER :: GL_DEPTH_BITS            = INT( z'0D56' ) ! 0x0D56
  INTEGER(GLenum), PARAMETER :: GL_STENCIL_BITS          = INT( z'0D57' ) ! 0x0D57
  INTEGER(GLenum), PARAMETER :: GL_ACCUM_RED_BITS        = INT( z'0D58' ) ! 0x0D58
  INTEGER(GLenum), PARAMETER :: GL_ACCUM_GREEN_BITS      = INT( z'0D59' ) ! 0x0D59
  INTEGER(GLenum), PARAMETER :: GL_ACCUM_BLUE_BITS       = INT( z'0D5A' ) ! 0x0D5A
  INTEGER(GLenum), PARAMETER :: GL_ACCUM_ALPHA_BITS      = INT( z'0D5B' ) ! 0x0D5B
  INTEGER(GLenum), PARAMETER :: GL_NAME_STACK_DEPTH      = INT( z'0D70' ) ! 0x0D70
  INTEGER(GLenum), PARAMETER :: GL_AUTO_NORMAL           = INT( z'0D80' ) ! 0x0D80
  INTEGER(GLenum), PARAMETER :: GL_MAP1_COLOR_4          = INT( z'0D90' ) ! 0x0D90
  INTEGER(GLenum), PARAMETER :: GL_MAP1_INDEX            = INT( z'0D91' ) ! 0x0D91
  INTEGER(GLenum), PARAMETER :: GL_MAP1_NORMAL           = INT( z'0D92' ) ! 0x0D92
  INTEGER(GLenum), PARAMETER :: GL_MAP1_TEXTURE_COORD_1  = INT( z'0D93' ) ! 0x0D93
  INTEGER(GLenum), PARAMETER :: GL_MAP1_TEXTURE_COORD_2  = INT( z'0D94' ) ! 0x0D94
  INTEGER(GLenum), PARAMETER :: GL_MAP1_TEXTURE_COORD_3  = INT( z'0D95' ) ! 0x0D95
  INTEGER(GLenum), PARAMETER :: GL_MAP1_TEXTURE_COORD_4  = INT( z'0D96' ) ! 0x0D96
  INTEGER(GLenum), PARAMETER :: GL_MAP1_VERTEX_3         = INT( z'0D97' ) ! 0x0D97
  INTEGER(GLenum), PARAMETER :: GL_MAP1_VERTEX_4         = INT( z'0D98' ) ! 0x0D98
  INTEGER(GLenum), PARAMETER :: GL_MAP2_COLOR_4          = INT( z'0DB0' ) ! 0x0DB0
  INTEGER(GLenum), PARAMETER :: GL_MAP2_INDEX            = INT( z'0DB1' ) ! 0x0DB1
  INTEGER(GLenum), PARAMETER :: GL_MAP2_NORMAL           = INT( z'0DB2' ) ! 0x0DB2
  INTEGER(GLenum), PARAMETER :: GL_MAP2_TEXTURE_COORD_1  = INT( z'0DB3' ) ! 0x0DB3
  INTEGER(GLenum), PARAMETER :: GL_MAP2_TEXTURE_COORD_2  = INT( z'0DB4' ) ! 0x0DB4
  INTEGER(GLenum), PARAMETER :: GL_MAP2_TEXTURE_COORD_3  = INT( z'0DB5' ) ! 0x0DB5
  INTEGER(GLenum), PARAMETER :: GL_MAP2_TEXTURE_COORD_4  = INT( z'0DB6' ) ! 0x0DB6
  INTEGER(GLenum), PARAMETER :: GL_MAP2_VERTEX_3         = INT( z'0DB7' ) ! 0x0DB7
  INTEGER(GLenum), PARAMETER :: GL_MAP2_VERTEX_4         = INT( z'0DB8' ) ! 0x0DB8
  INTEGER(GLenum), PARAMETER :: GL_MAP1_GRID_DOMAIN      = INT( z'0DD0' ) ! 0x0DD0
  INTEGER(GLenum), PARAMETER :: GL_MAP1_GRID_SEGMENTS    = INT( z'0DD1' ) ! 0x0DD1
  INTEGER(GLenum), PARAMETER :: GL_MAP2_GRID_DOMAIN      = INT( z'0DD2' ) ! 0x0DD2
  INTEGER(GLenum), PARAMETER :: GL_MAP2_GRID_SEGMENTS    = INT( z'0DD3' ) ! 0x0DD3
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_1D            = INT( z'0DE0' ) ! 0x0DE0
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_2D            = INT( z'0DE1' ) ! 0x0DE1
  INTEGER(GLenum), PARAMETER :: GL_FEEDBACK_BUFFER_POINTER = INT( z'0DF0' ) ! 0x0DF0
  INTEGER(GLenum), PARAMETER :: GL_FEEDBACK_BUFFER_SIZE  = INT( z'0DF1' ) ! 0x0DF1
  INTEGER(GLenum), PARAMETER :: GL_FEEDBACK_BUFFER_TYPE  = INT( z'0DF2' ) ! 0x0DF2
  INTEGER(GLenum), PARAMETER :: GL_SELECTION_BUFFER_POINTER = INT( z'0DF3' ) ! 0x0DF3
  INTEGER(GLenum), PARAMETER :: GL_SELECTION_BUFFER_SIZE = INT( z'0DF4' ) ! 0x0DF4
  !  GetTextureParameter values
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_WIDTH         = INT( z'1000' ) ! 0x1000
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_HEIGHT        = INT( z'1001' ) ! 0x1001
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_INTERNAL_FORMAT = INT( z'1003' ) ! 0x1003
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_BORDER_COLOR  = INT( z'1004' ) ! 0x1004
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_BORDER        = INT( z'1005' ) ! 0x1005
  !  HintMode values
  INTEGER(GLenum), PARAMETER :: GL_DONT_CARE             = INT( z'1100' ) ! 0x1100
  INTEGER(GLenum), PARAMETER :: GL_FASTEST               = INT( z'1101' ) ! 0x1101
  INTEGER(GLenum), PARAMETER :: GL_NICEST                = INT( z'1102' ) ! 0x1102
  !  HintTarget values
  !  HistogramTarget values
  !  IndexPointerType values
  !  LightModelColorControl values
  !  LightModelParameter values
  !  LightName values
  INTEGER(GLenum), PARAMETER :: GL_LIGHT0                = INT( z'4000' ) ! 0x4000
  INTEGER(GLenum), PARAMETER :: GL_LIGHT1                = INT( z'4001' ) ! 0x4001
  INTEGER(GLenum), PARAMETER :: GL_LIGHT2                = INT( z'4002' ) ! 0x4002
  INTEGER(GLenum), PARAMETER :: GL_LIGHT3                = INT( z'4003' ) ! 0x4003
  INTEGER(GLenum), PARAMETER :: GL_LIGHT4                = INT( z'4004' ) ! 0x4004
  INTEGER(GLenum), PARAMETER :: GL_LIGHT5                = INT( z'4005' ) ! 0x4005
  INTEGER(GLenum), PARAMETER :: GL_LIGHT6                = INT( z'4006' ) ! 0x4006
  INTEGER(GLenum), PARAMETER :: GL_LIGHT7                = INT( z'4007' ) ! 0x4007
  !  LightParameter values
  INTEGER(GLenum), PARAMETER :: GL_AMBIENT               = INT( z'1200' ) ! 0x1200
  INTEGER(GLenum), PARAMETER :: GL_DIFFUSE               = INT( z'1201' ) ! 0x1201
  INTEGER(GLenum), PARAMETER :: GL_SPECULAR              = INT( z'1202' ) ! 0x1202
  INTEGER(GLenum), PARAMETER :: GL_POSITION              = INT( z'1203' ) ! 0x1203
  INTEGER(GLenum), PARAMETER :: GL_SPOT_DIRECTION        = INT( z'1204' ) ! 0x1204
  INTEGER(GLenum), PARAMETER :: GL_SPOT_EXPONENT         = INT( z'1205' ) ! 0x1205
  INTEGER(GLenum), PARAMETER :: GL_SPOT_CUTOFF           = INT( z'1206' ) ! 0x1206
  INTEGER(GLenum), PARAMETER :: GL_CONSTANT_ATTENUATION  = INT( z'1207' ) ! 0x1207
  INTEGER(GLenum), PARAMETER :: GL_LINEAR_ATTENUATION    = INT( z'1208' ) ! 0x1208
  INTEGER(GLenum), PARAMETER :: GL_QUADRATIC_ATTENUATION = INT( z'1209' ) ! 0x1209
  !  InterleavedArrays values
  !  ListMode values
  INTEGER(GLenum), PARAMETER :: GL_COMPILE               = INT( z'1300' ) ! 0x1300
  INTEGER(GLenum), PARAMETER :: GL_COMPILE_AND_EXECUTE   = INT( z'1301' ) ! 0x1301
  !  ListNameType values
  !  LogicOp values
  INTEGER(GLenum), PARAMETER :: GL_CLEAR                 = INT( z'1500' ) ! 0x1500
  INTEGER(GLenum), PARAMETER :: GL_AND                   = INT( z'1501' ) ! 0x1501
  INTEGER(GLenum), PARAMETER :: GL_AND_REVERSE           = INT( z'1502' ) ! 0x1502
  INTEGER(GLenum), PARAMETER :: GL_COPY                  = INT( z'1503' ) ! 0x1503
  INTEGER(GLenum), PARAMETER :: GL_AND_INVERTED          = INT( z'1504' ) ! 0x1504
  INTEGER(GLenum), PARAMETER :: GL_NOOP                  = INT( z'1505' ) ! 0x1505
  INTEGER(GLenum), PARAMETER :: GL_XOR                   = INT( z'1506' ) ! 0x1506
  INTEGER(GLenum), PARAMETER :: GL_OR                    = INT( z'1507' ) ! 0x1507
  INTEGER(GLenum), PARAMETER :: GL_NOR                   = INT( z'1508' ) ! 0x1508
  INTEGER(GLenum), PARAMETER :: GL_EQUIV                 = INT( z'1509' ) ! 0x1509
  INTEGER(GLenum), PARAMETER :: GL_INVERT                = INT( z'150A' ) ! 0x150A
  INTEGER(GLenum), PARAMETER :: GL_OR_REVERSE            = INT( z'150B' ) ! 0x150B
  INTEGER(GLenum), PARAMETER :: GL_COPY_INVERTED         = INT( z'150C' ) ! 0x150C
  INTEGER(GLenum), PARAMETER :: GL_OR_INVERTED           = INT( z'150D' ) ! 0x150D
  INTEGER(GLenum), PARAMETER :: GL_NAND                  = INT( z'150E' ) ! 0x150E
  INTEGER(GLenum), PARAMETER :: GL_SET                   = INT( z'150F' ) ! 0x150F
  !  MapTarget values
  !  MaterialFace values
  !  MaterialParameter values
  INTEGER(GLenum), PARAMETER :: GL_EMISSION              = INT( z'1600' ) ! 0x1600
  INTEGER(GLenum), PARAMETER :: GL_SHININESS             = INT( z'1601' ) ! 0x1601
  INTEGER(GLenum), PARAMETER :: GL_AMBIENT_AND_DIFFUSE   = INT( z'1602' ) ! 0x1602
  INTEGER(GLenum), PARAMETER :: GL_COLOR_INDEXES         = INT( z'1603' ) ! 0x1603
  !  MatrixMode values
  INTEGER(GLenum), PARAMETER :: GL_MODELVIEW             = INT( z'1700' ) ! 0x1700
  INTEGER(GLenum), PARAMETER :: GL_PROJECTION            = INT( z'1701' ) ! 0x1701
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE               = INT( z'1702' ) ! 0x1702
  !  MeshMode1 values
  !  MeshMode2 values
  !  MinmaxTarget values
  !  NormalPointerType values
  !  PixelCopyType values
  INTEGER(GLenum), PARAMETER :: GL_COLOR                 = INT( z'1800' ) ! 0x1800
  INTEGER(GLenum), PARAMETER :: GL_DEPTH                 = INT( z'1801' ) ! 0x1801
  INTEGER(GLenum), PARAMETER :: GL_STENCIL               = INT( z'1802' ) ! 0x1802
  !  PixelFormat values
  INTEGER(GLenum), PARAMETER :: GL_COLOR_INDEX           = INT( z'1900' ) ! 0x1900
  INTEGER(GLenum), PARAMETER :: GL_STENCIL_INDEX         = INT( z'1901' ) ! 0x1901
  INTEGER(GLenum), PARAMETER :: GL_DEPTH_COMPONENT       = INT( z'1902' ) ! 0x1902
  INTEGER(GLenum), PARAMETER :: GL_RED                   = INT( z'1903' ) ! 0x1903
  INTEGER(GLenum), PARAMETER :: GL_GREEN                 = INT( z'1904' ) ! 0x1904
  INTEGER(GLenum), PARAMETER :: GL_BLUE                  = INT( z'1905' ) ! 0x1905
  INTEGER(GLenum), PARAMETER :: GL_ALPHA                 = INT( z'1906' ) ! 0x1906
  INTEGER(GLenum), PARAMETER :: GL_RGB                   = INT( z'1907' ) ! 0x1907
  INTEGER(GLenum), PARAMETER :: GL_RGBA                  = INT( z'1908' ) ! 0x1908
  INTEGER(GLenum), PARAMETER :: GL_LUMINANCE             = INT( z'1909' ) ! 0x1909
  INTEGER(GLenum), PARAMETER :: GL_LUMINANCE_ALPHA       = INT( z'190A' ) ! 0x190A
  !  PixelInternalFormat values
  !  PixelMap values
  !  PixelStore values
  !  PixelTransfer values
  !  PixelType values
  INTEGER(GLenum), PARAMETER :: GL_BITMAP                = INT( z'1A00' ) ! 0x1A00
  !  PolygonMode values
  INTEGER(GLenum), PARAMETER :: GL_POINT                 = INT( z'1B00' ) ! 0x1B00
  INTEGER(GLenum), PARAMETER :: GL_LINE                  = INT( z'1B01' ) ! 0x1B01
  INTEGER(GLenum), PARAMETER :: GL_FILL                  = INT( z'1B02' ) ! 0x1B02
  !  ReadBufferMode values
  !  RenderingMode values
  INTEGER(GLenum), PARAMETER :: GL_RENDER                = INT( z'1C00' ) ! 0x1C00
  INTEGER(GLenum), PARAMETER :: GL_FEEDBACK              = INT( z'1C01' ) ! 0x1C01
  INTEGER(GLenum), PARAMETER :: GL_SELECT                = INT( z'1C02' ) ! 0x1C02
  !  SeparableTarget values
  !  ShadingModel values
  INTEGER(GLenum), PARAMETER :: GL_FLAT                  = INT( z'1D00' ) ! 0x1D00
  INTEGER(GLenum), PARAMETER :: GL_SMOOTH                = INT( z'1D01' ) ! 0x1D01
  !  StencilFunction values
  !  StencilOp values
  INTEGER(GLenum), PARAMETER :: GL_KEEP                  = INT( z'1E00' ) ! 0x1E00
  INTEGER(GLenum), PARAMETER :: GL_REPLACE               = INT( z'1E01' ) ! 0x1E01
  INTEGER(GLenum), PARAMETER :: GL_INCR                  = INT( z'1E02' ) ! 0x1E02
  INTEGER(GLenum), PARAMETER :: GL_DECR                  = INT( z'1E03' ) ! 0x1E03
  !  StringName values
  INTEGER(GLenum), PARAMETER :: GL_VENDOR                = INT( z'1F00' ) ! 0x1F00
  INTEGER(GLenum), PARAMETER :: GL_RENDERER              = INT( z'1F01' ) ! 0x1F01
  INTEGER(GLenum), PARAMETER :: GL_VERSION               = INT( z'1F02' ) ! 0x1F02
  INTEGER(GLenum), PARAMETER :: GL_EXTENSIONS            = INT( z'1F03' ) ! 0x1F03
  !  TextureCoordName values
  INTEGER(GLenum), PARAMETER :: GL_S                     = INT( z'2000' ) ! 0x2000
  INTEGER(GLenum), PARAMETER :: GL_T                     = INT( z'2001' ) ! 0x2001
  INTEGER(GLenum), PARAMETER :: GL_R                     = INT( z'2002' ) ! 0x2002
  INTEGER(GLenum), PARAMETER :: GL_Q                     = INT( z'2003' ) ! 0x2003
  !  TexCoordPointerType values
  !  TextureEnvMode values
  INTEGER(GLenum), PARAMETER :: GL_MODULATE              = INT( z'2100' ) ! 0x2100
  INTEGER(GLenum), PARAMETER :: GL_DECAL                 = INT( z'2101' ) ! 0x2101
  !  TextureEnvParameter values
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_ENV_MODE      = INT( z'2200' ) ! 0x2200
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_ENV_COLOR     = INT( z'2201' ) ! 0x2201
  !  TextureEnvTarget values
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_ENV           = INT( z'2300' ) ! 0x2300
  !  TextureGenMode values
  INTEGER(GLenum), PARAMETER :: GL_EYE_LINEAR            = INT( z'2400' ) ! 0x2400
  INTEGER(GLenum), PARAMETER :: GL_OBJECT_LINEAR         = INT( z'2401' ) ! 0x2401
  INTEGER(GLenum), PARAMETER :: GL_SPHERE_MAP            = INT( z'2402' ) ! 0x2402
  !  TextureGenParameter values
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_GEN_MODE      = INT( z'2500' ) ! 0x2500
  INTEGER(GLenum), PARAMETER :: GL_OBJECT_PLANE          = INT( z'2501' ) ! 0x2501
  INTEGER(GLenum), PARAMETER :: GL_EYE_PLANE             = INT( z'2502' ) ! 0x2502
  !  TextureMagFilter values
  INTEGER(GLenum), PARAMETER :: GL_NEAREST               = INT( z'2600' ) ! 0x2600
  INTEGER(GLenum), PARAMETER :: GL_LINEAR                = INT( z'2601' ) ! 0x2601
  !  TextureMinFilter values
  INTEGER(GLenum), PARAMETER :: GL_NEAREST_MIPMAP_NEAREST = INT( z'2700' ) ! 0x2700
  INTEGER(GLenum), PARAMETER :: GL_LINEAR_MIPMAP_NEAREST = INT( z'2701' ) ! 0x2701
  INTEGER(GLenum), PARAMETER :: GL_NEAREST_MIPMAP_LINEAR = INT( z'2702' ) ! 0x2702
  INTEGER(GLenum), PARAMETER :: GL_LINEAR_MIPMAP_LINEAR  = INT( z'2703' ) ! 0x2703
  !  TextureParameterName values
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_MAG_FILTER    = INT( z'2800' ) ! 0x2800
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_MIN_FILTER    = INT( z'2801' ) ! 0x2801
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_WRAP_S        = INT( z'2802' ) ! 0x2802
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_WRAP_T        = INT( z'2803' ) ! 0x2803
  !  TextureTarget values
  !  TextureUnit values
  !  TextureWrapMode values
  INTEGER(GLenum), PARAMETER :: GL_CLAMP                 = INT( z'2900' ) ! 0x2900
  INTEGER(GLenum), PARAMETER :: GL_REPEAT                = INT( z'2901' ) ! 0x2901
  !  VertexPointerType values
  !  ClientAttribMask values
  INTEGER(GLbitfield), PARAMETER :: GL_CLIENT_PIXEL_STORE_BIT = INT( z'00000001' ) ! 0x00000001
  INTEGER(GLbitfield), PARAMETER :: GL_CLIENT_VERTEX_ARRAY_BIT = INT( z'00000002' ) ! 0x00000002
  INTEGER(GLbitfield), PARAMETER :: GL_CLIENT_ALL_ATTRIB_BITS = &
    transfer(z'ffffffff',GL_CURRENT_BIT) ! 0xffffffff
  !  polygon_offset values
  INTEGER(GLenum), PARAMETER :: GL_POLYGON_OFFSET_FACTOR = INT( z'8038' ) ! 0x8038
  INTEGER(GLenum), PARAMETER :: GL_POLYGON_OFFSET_UNITS  = INT( z'2A00' ) ! 0x2A00
  INTEGER(GLenum), PARAMETER :: GL_POLYGON_OFFSET_POINT  = INT( z'2A01' ) ! 0x2A01
  INTEGER(GLenum), PARAMETER :: GL_POLYGON_OFFSET_LINE   = INT( z'2A02' ) ! 0x2A02
  INTEGER(GLenum), PARAMETER :: GL_POLYGON_OFFSET_FILL   = INT( z'8037' ) ! 0x8037
  !  texture values
  INTEGER(GLenum), PARAMETER :: GL_ALPHA4                = INT( z'803B' ) ! 0x803B
  INTEGER(GLenum), PARAMETER :: GL_ALPHA8                = INT( z'803C' ) ! 0x803C
  INTEGER(GLenum), PARAMETER :: GL_ALPHA12               = INT( z'803D' ) ! 0x803D
  INTEGER(GLenum), PARAMETER :: GL_ALPHA16               = INT( z'803E' ) ! 0x803E
  INTEGER(GLenum), PARAMETER :: GL_LUMINANCE4            = INT( z'803F' ) ! 0x803F
  INTEGER(GLenum), PARAMETER :: GL_LUMINANCE8            = INT( z'8040' ) ! 0x8040
  INTEGER(GLenum), PARAMETER :: GL_LUMINANCE12           = INT( z'8041' ) ! 0x8041
  INTEGER(GLenum), PARAMETER :: GL_LUMINANCE16           = INT( z'8042' ) ! 0x8042
  INTEGER(GLenum), PARAMETER :: GL_LUMINANCE4_ALPHA4     = INT( z'8043' ) ! 0x8043
  INTEGER(GLenum), PARAMETER :: GL_LUMINANCE6_ALPHA2     = INT( z'8044' ) ! 0x8044
  INTEGER(GLenum), PARAMETER :: GL_LUMINANCE8_ALPHA8     = INT( z'8045' ) ! 0x8045
  INTEGER(GLenum), PARAMETER :: GL_LUMINANCE12_ALPHA4    = INT( z'8046' ) ! 0x8046
  INTEGER(GLenum), PARAMETER :: GL_LUMINANCE12_ALPHA12   = INT( z'8047' ) ! 0x8047
  INTEGER(GLenum), PARAMETER :: GL_LUMINANCE16_ALPHA16   = INT( z'8048' ) ! 0x8048
  INTEGER(GLenum), PARAMETER :: GL_INTENSITY             = INT( z'8049' ) ! 0x8049
  INTEGER(GLenum), PARAMETER :: GL_INTENSITY4            = INT( z'804A' ) ! 0x804A
  INTEGER(GLenum), PARAMETER :: GL_INTENSITY8            = INT( z'804B' ) ! 0x804B
  INTEGER(GLenum), PARAMETER :: GL_INTENSITY12           = INT( z'804C' ) ! 0x804C
  INTEGER(GLenum), PARAMETER :: GL_INTENSITY16           = INT( z'804D' ) ! 0x804D
  INTEGER(GLenum), PARAMETER :: GL_R3_G3_B2              = INT( z'2A10' ) ! 0x2A10
  INTEGER(GLenum), PARAMETER :: GL_RGB4                  = INT( z'804F' ) ! 0x804F
  INTEGER(GLenum), PARAMETER :: GL_RGB5                  = INT( z'8050' ) ! 0x8050
  INTEGER(GLenum), PARAMETER :: GL_RGB8                  = INT( z'8051' ) ! 0x8051
  INTEGER(GLenum), PARAMETER :: GL_RGB10                 = INT( z'8052' ) ! 0x8052
  INTEGER(GLenum), PARAMETER :: GL_RGB12                 = INT( z'8053' ) ! 0x8053
  INTEGER(GLenum), PARAMETER :: GL_RGB16                 = INT( z'8054' ) ! 0x8054
  INTEGER(GLenum), PARAMETER :: GL_RGBA2                 = INT( z'8055' ) ! 0x8055
  INTEGER(GLenum), PARAMETER :: GL_RGBA4                 = INT( z'8056' ) ! 0x8056
  INTEGER(GLenum), PARAMETER :: GL_RGB5_A1               = INT( z'8057' ) ! 0x8057
  INTEGER(GLenum), PARAMETER :: GL_RGBA8                 = INT( z'8058' ) ! 0x8058
  INTEGER(GLenum), PARAMETER :: GL_RGB10_A2              = INT( z'8059' ) ! 0x8059
  INTEGER(GLenum), PARAMETER :: GL_RGBA12                = INT( z'805A' ) ! 0x805A
  INTEGER(GLenum), PARAMETER :: GL_RGBA16                = INT( z'805B' ) ! 0x805B
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_RED_SIZE      = INT( z'805C' ) ! 0x805C
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_GREEN_SIZE    = INT( z'805D' ) ! 0x805D
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_BLUE_SIZE     = INT( z'805E' ) ! 0x805E
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_ALPHA_SIZE    = INT( z'805F' ) ! 0x805F
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_LUMINANCE_SIZE = INT( z'8060' ) ! 0x8060
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_INTENSITY_SIZE = INT( z'8061' ) ! 0x8061
  INTEGER(GLenum), PARAMETER :: GL_PROXY_TEXTURE_1D      = INT( z'8063' ) ! 0x8063
  INTEGER(GLenum), PARAMETER :: GL_PROXY_TEXTURE_2D      = INT( z'8064' ) ! 0x8064
  !  texture_object values
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_PRIORITY      = INT( z'8066' ) ! 0x8066
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_RESIDENT      = INT( z'8067' ) ! 0x8067
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_BINDING_1D    = INT( z'8068' ) ! 0x8068
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_BINDING_2D    = INT( z'8069' ) ! 0x8069
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_BINDING_3D    = INT( z'806A' ) ! 0x806A
  !  vertex_array values
  INTEGER(GLenum), PARAMETER :: GL_VERTEX_ARRAY          = INT( z'8074' ) ! 0x8074
  INTEGER(GLenum), PARAMETER :: GL_NORMAL_ARRAY          = INT( z'8075' ) ! 0x8075
  INTEGER(GLenum), PARAMETER :: GL_COLOR_ARRAY           = INT( z'8076' ) ! 0x8076
  INTEGER(GLenum), PARAMETER :: GL_INDEX_ARRAY           = INT( z'8077' ) ! 0x8077
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_COORD_ARRAY   = INT( z'8078' ) ! 0x8078
  INTEGER(GLenum), PARAMETER :: GL_EDGE_FLAG_ARRAY       = INT( z'8079' ) ! 0x8079
  INTEGER(GLenum), PARAMETER :: GL_VERTEX_ARRAY_SIZE     = INT( z'807A' ) ! 0x807A
  INTEGER(GLenum), PARAMETER :: GL_VERTEX_ARRAY_TYPE     = INT( z'807B' ) ! 0x807B
  INTEGER(GLenum), PARAMETER :: GL_VERTEX_ARRAY_STRIDE   = INT( z'807C' ) ! 0x807C
  INTEGER(GLenum), PARAMETER :: GL_NORMAL_ARRAY_TYPE     = INT( z'807E' ) ! 0x807E
  INTEGER(GLenum), PARAMETER :: GL_NORMAL_ARRAY_STRIDE   = INT( z'807F' ) ! 0x807F
  INTEGER(GLenum), PARAMETER :: GL_COLOR_ARRAY_SIZE      = INT( z'8081' ) ! 0x8081
  INTEGER(GLenum), PARAMETER :: GL_COLOR_ARRAY_TYPE      = INT( z'8082' ) ! 0x8082
  INTEGER(GLenum), PARAMETER :: GL_COLOR_ARRAY_STRIDE    = INT( z'8083' ) ! 0x8083
  INTEGER(GLenum), PARAMETER :: GL_INDEX_ARRAY_TYPE      = INT( z'8085' ) ! 0x8085
  INTEGER(GLenum), PARAMETER :: GL_INDEX_ARRAY_STRIDE    = INT( z'8086' ) ! 0x8086
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_COORD_ARRAY_SIZE = INT( z'8088' ) ! 0x8088
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_COORD_ARRAY_TYPE = INT( z'8089' ) ! 0x8089
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_COORD_ARRAY_STRIDE = INT( z'808A' ) ! 0x808A
  INTEGER(GLenum), PARAMETER :: GL_EDGE_FLAG_ARRAY_STRIDE = INT( z'808C' ) ! 0x808C
  INTEGER(GLenum), PARAMETER :: GL_VERTEX_ARRAY_POINTER  = INT( z'808E' ) ! 0x808E
  INTEGER(GLenum), PARAMETER :: GL_NORMAL_ARRAY_POINTER  = INT( z'808F' ) ! 0x808F
  INTEGER(GLenum), PARAMETER :: GL_COLOR_ARRAY_POINTER   = INT( z'8090' ) ! 0x8090
  INTEGER(GLenum), PARAMETER :: GL_INDEX_ARRAY_POINTER   = INT( z'8091' ) ! 0x8091
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_COORD_ARRAY_POINTER = INT( z'8092' ) ! 0x8092
  INTEGER(GLenum), PARAMETER :: GL_EDGE_FLAG_ARRAY_POINTER = INT( z'8093' ) ! 0x8093
  INTEGER(GLenum), PARAMETER :: GL_V2F                   = INT( z'2A20' ) ! 0x2A20
  INTEGER(GLenum), PARAMETER :: GL_V3F                   = INT( z'2A21' ) ! 0x2A21
  INTEGER(GLenum), PARAMETER :: GL_C4UB_V2F              = INT( z'2A22' ) ! 0x2A22
  INTEGER(GLenum), PARAMETER :: GL_C4UB_V3F              = INT( z'2A23' ) ! 0x2A23
  INTEGER(GLenum), PARAMETER :: GL_C3F_V3F               = INT( z'2A24' ) ! 0x2A24
  INTEGER(GLenum), PARAMETER :: GL_N3F_V3F               = INT( z'2A25' ) ! 0x2A25
  INTEGER(GLenum), PARAMETER :: GL_C4F_N3F_V3F           = INT( z'2A26' ) ! 0x2A26
  INTEGER(GLenum), PARAMETER :: GL_T2F_V3F               = INT( z'2A27' ) ! 0x2A27
  INTEGER(GLenum), PARAMETER :: GL_T4F_V4F               = INT( z'2A28' ) ! 0x2A28
  INTEGER(GLenum), PARAMETER :: GL_T2F_C4UB_V3F          = INT( z'2A29' ) ! 0x2A29
  INTEGER(GLenum), PARAMETER :: GL_T2F_C3F_V3F           = INT( z'2A2A' ) ! 0x2A2A
  INTEGER(GLenum), PARAMETER :: GL_T2F_N3F_V3F           = INT( z'2A2B' ) ! 0x2A2B
  INTEGER(GLenum), PARAMETER :: GL_T2F_C4F_N3F_V3F       = INT( z'2A2C' ) ! 0x2A2C
  INTEGER(GLenum), PARAMETER :: GL_T4F_C4F_N3F_V4F       = INT( z'2A2D' ) ! 0x2A2D
  !  bgra values
  INTEGER(GLenum), PARAMETER :: GL_BGR                   = INT( z'80E0' ) ! 0x80E0
  INTEGER(GLenum), PARAMETER :: GL_BGRA                  = INT( z'80E1' ) ! 0x80E1
  !  blend_color values
  INTEGER(GLenum), PARAMETER :: GL_CONSTANT_COLOR        = INT( z'8001' ) ! 0x8001
  INTEGER(GLenum), PARAMETER :: GL_ONE_MINUS_CONSTANT_COLOR = INT( z'8002' ) ! 0x8002
  INTEGER(GLenum), PARAMETER :: GL_CONSTANT_ALPHA        = INT( z'8003' ) ! 0x8003
  INTEGER(GLenum), PARAMETER :: GL_ONE_MINUS_CONSTANT_ALPHA = INT( z'8004' ) ! 0x8004
  INTEGER(GLenum), PARAMETER :: GL_BLEND_COLOR           = INT( z'8005' ) ! 0x8005
  !  blend_minmax values
  INTEGER(GLenum), PARAMETER :: GL_FUNC_ADD              = INT( z'8006' ) ! 0x8006
  INTEGER(GLenum), PARAMETER :: GL_MIN                   = INT( z'8007' ) ! 0x8007
  INTEGER(GLenum), PARAMETER :: GL_MAX                   = INT( z'8008' ) ! 0x8008
  INTEGER(GLenum), PARAMETER :: GL_BLEND_EQUATION        = INT( z'8009' ) ! 0x8009
  !  blend_subtract values
  INTEGER(GLenum), PARAMETER :: GL_FUNC_SUBTRACT         = INT( z'800A' ) ! 0x800A
  INTEGER(GLenum), PARAMETER :: GL_FUNC_REVERSE_SUBTRACT = INT( z'800B' ) ! 0x800B
  !  color_matrix values
  INTEGER(GLenum), PARAMETER :: GL_COLOR_MATRIX          = INT( z'80B1' ) ! 0x80B1
  INTEGER(GLenum), PARAMETER :: GL_COLOR_MATRIX_STACK_DEPTH = INT( z'80B2' ) ! 0x80B2
  INTEGER(GLenum), PARAMETER :: GL_MAX_COLOR_MATRIX_STACK_DEPTH = INT( z'80B3' ) ! 0x80B3
  INTEGER(GLenum), PARAMETER :: GL_POST_COLOR_MATRIX_RED_SCALE = INT( z'80B4' ) ! 0x80B4
  INTEGER(GLenum), PARAMETER :: GL_POST_COLOR_MATRIX_GREEN_SCALE = INT( z'80B5' ) ! 0x80B5
  INTEGER(GLenum), PARAMETER :: GL_POST_COLOR_MATRIX_BLUE_SCALE = INT( z'80B6' ) ! 0x80B6
  INTEGER(GLenum), PARAMETER :: GL_POST_COLOR_MATRIX_ALPHA_SCALE = INT( z'80B7' ) ! 0x80B7
  INTEGER(GLenum), PARAMETER :: GL_POST_COLOR_MATRIX_RED_BIAS = INT( z'80B8' ) ! 0x80B8
  INTEGER(GLenum), PARAMETER :: GL_POST_COLOR_MATRIX_GREEN_BIAS = INT( z'80B9' ) ! 0x80B9
  INTEGER(GLenum), PARAMETER :: GL_POST_COLOR_MATRIX_BLUE_BIAS = INT( z'80BA' ) ! 0x80BA
  INTEGER(GLenum), PARAMETER :: GL_POST_COLOR_MATRIX_ALPHA_BIAS = INT( z'80BB' ) ! 0x80BB
  !  color_table values
  INTEGER(GLenum), PARAMETER :: GL_COLOR_TABLE           = INT( z'80D0' ) ! 0x80D0
  INTEGER(GLenum), PARAMETER :: GL_POST_CONVOLUTION_COLOR_TABLE = INT( z'80D1' ) ! 0x80D1
  INTEGER(GLenum), PARAMETER :: GL_POST_COLOR_MATRIX_COLOR_TABLE = INT( z'80D2' ) ! 0x80D2
  INTEGER(GLenum), PARAMETER :: GL_PROXY_COLOR_TABLE     = INT( z'80D3' ) ! 0x80D3
  INTEGER(GLenum), PARAMETER :: GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = INT( z'80D4' ) ! 0x80D4
  INTEGER(GLenum), PARAMETER :: GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = INT( z'80D5' ) ! 0x80D5
  INTEGER(GLenum), PARAMETER :: GL_COLOR_TABLE_SCALE     = INT( z'80D6' ) ! 0x80D6
  INTEGER(GLenum), PARAMETER :: GL_COLOR_TABLE_BIAS      = INT( z'80D7' ) ! 0x80D7
  INTEGER(GLenum), PARAMETER :: GL_COLOR_TABLE_FORMAT    = INT( z'80D8' ) ! 0x80D8
  INTEGER(GLenum), PARAMETER :: GL_COLOR_TABLE_WIDTH     = INT( z'80D9' ) ! 0x80D9
  INTEGER(GLenum), PARAMETER :: GL_COLOR_TABLE_RED_SIZE  = INT( z'80DA' ) ! 0x80DA
  INTEGER(GLenum), PARAMETER :: GL_COLOR_TABLE_GREEN_SIZE = INT( z'80DB' ) ! 0x80DB
  INTEGER(GLenum), PARAMETER :: GL_COLOR_TABLE_BLUE_SIZE = INT( z'80DC' ) ! 0x80DC
  INTEGER(GLenum), PARAMETER :: GL_COLOR_TABLE_ALPHA_SIZE = INT( z'80DD' ) ! 0x80DD
  INTEGER(GLenum), PARAMETER :: GL_COLOR_TABLE_LUMINANCE_SIZE = INT( z'80DE' ) ! 0x80DE
  INTEGER(GLenum), PARAMETER :: GL_COLOR_TABLE_INTENSITY_SIZE = INT( z'80DF' ) ! 0x80DF
  !  convolution values
  INTEGER(GLenum), PARAMETER :: GL_CONVOLUTION_1D        = INT( z'8010' ) ! 0x8010
  INTEGER(GLenum), PARAMETER :: GL_CONVOLUTION_2D        = INT( z'8011' ) ! 0x8011
  INTEGER(GLenum), PARAMETER :: GL_SEPARABLE_2D          = INT( z'8012' ) ! 0x8012
  INTEGER(GLenum), PARAMETER :: GL_CONVOLUTION_BORDER_MODE = INT( z'8013' ) ! 0x8013
  INTEGER(GLenum), PARAMETER :: GL_CONVOLUTION_FILTER_SCALE = INT( z'8014' ) ! 0x8014
  INTEGER(GLenum), PARAMETER :: GL_CONVOLUTION_FILTER_BIAS = INT( z'8015' ) ! 0x8015
  INTEGER(GLenum), PARAMETER :: GL_REDUCE                = INT( z'8016' ) ! 0x8016
  INTEGER(GLenum), PARAMETER :: GL_CONVOLUTION_FORMAT    = INT( z'8017' ) ! 0x8017
  INTEGER(GLenum), PARAMETER :: GL_CONVOLUTION_WIDTH     = INT( z'8018' ) ! 0x8018
  INTEGER(GLenum), PARAMETER :: GL_CONVOLUTION_HEIGHT    = INT( z'8019' ) ! 0x8019
  INTEGER(GLenum), PARAMETER :: GL_MAX_CONVOLUTION_WIDTH = INT( z'801A' ) ! 0x801A
  INTEGER(GLenum), PARAMETER :: GL_MAX_CONVOLUTION_HEIGHT = INT( z'801B' ) ! 0x801B
  INTEGER(GLenum), PARAMETER :: GL_POST_CONVOLUTION_RED_SCALE = INT( z'801C' ) ! 0x801C
  INTEGER(GLenum), PARAMETER :: GL_POST_CONVOLUTION_GREEN_SCALE = INT( z'801D' ) ! 0x801D
  INTEGER(GLenum), PARAMETER :: GL_POST_CONVOLUTION_BLUE_SCALE = INT( z'801E' ) ! 0x801E
  INTEGER(GLenum), PARAMETER :: GL_POST_CONVOLUTION_ALPHA_SCALE = INT( z'801F' ) ! 0x801F
  INTEGER(GLenum), PARAMETER :: GL_POST_CONVOLUTION_RED_BIAS = INT( z'8020' ) ! 0x8020
  INTEGER(GLenum), PARAMETER :: GL_POST_CONVOLUTION_GREEN_BIAS = INT( z'8021' ) ! 0x8021
  INTEGER(GLenum), PARAMETER :: GL_POST_CONVOLUTION_BLUE_BIAS = INT( z'8022' ) ! 0x8022
  INTEGER(GLenum), PARAMETER :: GL_POST_CONVOLUTION_ALPHA_BIAS = INT( z'8023' ) ! 0x8023
  INTEGER(GLenum), PARAMETER :: GL_CONSTANT_BORDER       = INT( z'8151' ) ! 0x8151
  INTEGER(GLenum), PARAMETER :: GL_REPLICATE_BORDER      = INT( z'8153' ) ! 0x8153
  INTEGER(GLenum), PARAMETER :: GL_CONVOLUTION_BORDER_COLOR = INT( z'8154' ) ! 0x8154
  !  draw_range_elements values
  INTEGER(GLenum), PARAMETER :: GL_MAX_ELEMENTS_VERTICES = INT( z'80E8' ) ! 0x80E8
  INTEGER(GLenum), PARAMETER :: GL_MAX_ELEMENTS_INDICES  = INT( z'80E9' ) ! 0x80E9
  !  histogram values
  INTEGER(GLenum), PARAMETER :: GL_HISTOGRAM             = INT( z'8024' ) ! 0x8024
  INTEGER(GLenum), PARAMETER :: GL_PROXY_HISTOGRAM       = INT( z'8025' ) ! 0x8025
  INTEGER(GLenum), PARAMETER :: GL_HISTOGRAM_WIDTH       = INT( z'8026' ) ! 0x8026
  INTEGER(GLenum), PARAMETER :: GL_HISTOGRAM_FORMAT      = INT( z'8027' ) ! 0x8027
  INTEGER(GLenum), PARAMETER :: GL_HISTOGRAM_RED_SIZE    = INT( z'8028' ) ! 0x8028
  INTEGER(GLenum), PARAMETER :: GL_HISTOGRAM_GREEN_SIZE  = INT( z'8029' ) ! 0x8029
  INTEGER(GLenum), PARAMETER :: GL_HISTOGRAM_BLUE_SIZE   = INT( z'802A' ) ! 0x802A
  INTEGER(GLenum), PARAMETER :: GL_HISTOGRAM_ALPHA_SIZE  = INT( z'802B' ) ! 0x802B
  INTEGER(GLenum), PARAMETER :: GL_HISTOGRAM_LUMINANCE_SIZE = INT( z'802C' ) ! 0x802C
  INTEGER(GLenum), PARAMETER :: GL_HISTOGRAM_SINK        = INT( z'802D' ) ! 0x802D
  INTEGER(GLenum), PARAMETER :: GL_MINMAX                = INT( z'802E' ) ! 0x802E
  INTEGER(GLenum), PARAMETER :: GL_MINMAX_FORMAT         = INT( z'802F' ) ! 0x802F
  INTEGER(GLenum), PARAMETER :: GL_MINMAX_SINK           = INT( z'8030' ) ! 0x8030
  INTEGER(GLenum), PARAMETER :: GL_TABLE_TOO_LARGE       = INT( z'8031' ) ! 0x8031
  !  packed_pixels values
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_BYTE_3_3_2   = INT( z'8032' ) ! 0x8032
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_SHORT_4_4_4_4 = INT( z'8033' ) ! 0x8033
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_SHORT_5_5_5_1 = INT( z'8034' ) ! 0x8034
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_INT_8_8_8_8  = INT( z'8035' ) ! 0x8035
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_INT_10_10_10_2 = INT( z'8036' ) ! 0x8036
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_BYTE_2_3_3_REV = INT( z'8362' ) ! 0x8362
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_SHORT_5_6_5  = INT( z'8363' ) ! 0x8363
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_SHORT_5_6_5_REV = INT( z'8364' ) ! 0x8364
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_SHORT_4_4_4_4_REV = INT( z'8365' ) ! 0x8365
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_SHORT_1_5_5_5_REV = INT( z'8366' ) ! 0x8366
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_INT_8_8_8_8_REV = INT( z'8367' ) ! 0x8367
  INTEGER(GLenum), PARAMETER :: GL_UNSIGNED_INT_2_10_10_10_REV = INT( z'8368' ) ! 0x8368
  !  rescale_normal values
  INTEGER(GLenum), PARAMETER :: GL_RESCALE_NORMAL        = INT( z'803A' ) ! 0x803A
  !  separate_specular_color values
  INTEGER(GLenum), PARAMETER :: GL_LIGHT_MODEL_COLOR_CONTROL = INT( z'81F8' ) ! 0x81F8
  INTEGER(GLenum), PARAMETER :: GL_SINGLE_COLOR          = INT( z'81F9' ) ! 0x81F9
  INTEGER(GLenum), PARAMETER :: GL_SEPARATE_SPECULAR_COLOR = INT( z'81FA' ) ! 0x81FA
  !  texture3D values
  INTEGER(GLenum), PARAMETER :: GL_PACK_SKIP_IMAGES      = INT( z'806B' ) ! 0x806B
  INTEGER(GLenum), PARAMETER :: GL_PACK_IMAGE_HEIGHT     = INT( z'806C' ) ! 0x806C
  INTEGER(GLenum), PARAMETER :: GL_UNPACK_SKIP_IMAGES    = INT( z'806D' ) ! 0x806D
  INTEGER(GLenum), PARAMETER :: GL_UNPACK_IMAGE_HEIGHT   = INT( z'806E' ) ! 0x806E
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_3D            = INT( z'806F' ) ! 0x806F
  INTEGER(GLenum), PARAMETER :: GL_PROXY_TEXTURE_3D      = INT( z'8070' ) ! 0x8070
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_DEPTH         = INT( z'8071' ) ! 0x8071
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_WRAP_R        = INT( z'8072' ) ! 0x8072
  INTEGER(GLenum), PARAMETER :: GL_MAX_3D_TEXTURE_SIZE   = INT( z'8073' ) ! 0x8073
  !  texture_edge_clamp values
  INTEGER(GLenum), PARAMETER :: GL_CLAMP_TO_EDGE         = INT( z'812F' ) ! 0x812F
  !  texture_lod values
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_MIN_LOD       = INT( z'813A' ) ! 0x813A
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_MAX_LOD       = INT( z'813B' ) ! 0x813B
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_BASE_LEVEL    = INT( z'813C' ) ! 0x813C
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE_MAX_LEVEL     = INT( z'813D' ) ! 0x813D
  !  GetTarget1_2 values
  INTEGER(GLenum), PARAMETER :: GL_SMOOTH_POINT_SIZE_RANGE = INT( z'0B12' ) ! 0x0B12
  INTEGER(GLenum), PARAMETER :: GL_SMOOTH_POINT_SIZE_GRANULARITY = INT( z'0B13' ) ! 0x0B13
  INTEGER(GLenum), PARAMETER :: GL_SMOOTH_LINE_WIDTH_RANGE = INT( z'0B22' ) ! 0x0B22
  INTEGER(GLenum), PARAMETER :: GL_SMOOTH_LINE_WIDTH_GRANULARITY = INT( z'0B23' ) ! 0x0B23
  INTEGER(GLenum), PARAMETER :: GL_ALIASED_POINT_SIZE_RANGE = INT( z'846D' ) ! 0x846D
  INTEGER(GLenum), PARAMETER :: GL_ALIASED_LINE_WIDTH_RANGE = INT( z'846E' ) ! 0x846E
  !  multitexture values
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE0_ARB          = INT( z'84C0' ) ! 0x84C0
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE1_ARB          = INT( z'84C1' ) ! 0x84C1
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE2_ARB          = INT( z'84C2' ) ! 0x84C2
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE3_ARB          = INT( z'84C3' ) ! 0x84C3
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE4_ARB          = INT( z'84C4' ) ! 0x84C4
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE5_ARB          = INT( z'84C5' ) ! 0x84C5
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE6_ARB          = INT( z'84C6' ) ! 0x84C6
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE7_ARB          = INT( z'84C7' ) ! 0x84C7
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE8_ARB          = INT( z'84C8' ) ! 0x84C8
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE9_ARB          = INT( z'84C9' ) ! 0x84C9
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE10_ARB         = INT( z'84CA' ) ! 0x84CA
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE11_ARB         = INT( z'84CB' ) ! 0x84CB
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE12_ARB         = INT( z'84CC' ) ! 0x84CC
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE13_ARB         = INT( z'84CD' ) ! 0x84CD
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE14_ARB         = INT( z'84CE' ) ! 0x84CE
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE15_ARB         = INT( z'84CF' ) ! 0x84CF
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE16_ARB         = INT( z'84D0' ) ! 0x84D0
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE17_ARB         = INT( z'84D1' ) ! 0x84D1
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE18_ARB         = INT( z'84D2' ) ! 0x84D2
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE19_ARB         = INT( z'84D3' ) ! 0x84D3
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE20_ARB         = INT( z'84D4' ) ! 0x84D4
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE21_ARB         = INT( z'84D5' ) ! 0x84D5
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE22_ARB         = INT( z'84D6' ) ! 0x84D6
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE23_ARB         = INT( z'84D7' ) ! 0x84D7
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE24_ARB         = INT( z'84D8' ) ! 0x84D8
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE25_ARB         = INT( z'84D9' ) ! 0x84D9
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE26_ARB         = INT( z'84DA' ) ! 0x84DA
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE27_ARB         = INT( z'84DB' ) ! 0x84DB
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE28_ARB         = INT( z'84DC' ) ! 0x84DC
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE29_ARB         = INT( z'84DD' ) ! 0x84DD
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE30_ARB         = INT( z'84DE' ) ! 0x84DE
  INTEGER(GLenum), PARAMETER :: GL_TEXTURE31_ARB         = INT( z'84DF' ) ! 0x84DF
  INTEGER(GLenum), PARAMETER :: GL_ACTIVE_TEXTURE_ARB    = INT( z'84E0' ) ! 0x84E0
  INTEGER(GLenum), PARAMETER :: GL_CLIENT_ACTIVE_TEXTURE_ARB = INT( z'84E1' ) ! 0x84E1
  INTEGER(GLenum), PARAMETER :: GL_MAX_TEXTURE_UNITS_ARB = INT( z'84E2' ) ! 0x84E2
  !  EXT_abgr values
  INTEGER(GLenum), PARAMETER :: GL_ABGR_EXT              = INT( z'8000' ) ! 0x8000
  !  EXT_blend_color values
  INTEGER(GLenum), PARAMETER :: GL_CONSTANT_COLOR_EXT    = INT( z'8001' ) ! 0x8001
  INTEGER(GLenum), PARAMETER :: GL_ONE_MINUS_CONSTANT_COLOR_EXT = INT( z'8002' ) ! 0x8002
  INTEGER(GLenum), PARAMETER :: GL_CONSTANT_ALPHA_EXT    = INT( z'8003' ) ! 0x8003
  INTEGER(GLenum), PARAMETER :: GL_ONE_MINUS_CONSTANT_ALPHA_EXT = INT( z'8004' ) ! 0x8004
  INTEGER(GLenum), PARAMETER :: GL_BLEND_COLOR_EXT       = INT( z'8005' ) ! 0x8005
  !  EXT_blend_minmax values
  INTEGER(GLenum), PARAMETER :: GL_FUNC_ADD_EXT          = INT( z'8006' ) ! 0x8006
  INTEGER(GLenum), PARAMETER :: GL_MIN_EXT               = INT( z'8007' ) ! 0x8007
  INTEGER(GLenum), PARAMETER :: GL_MAX_EXT               = INT( z'8008' ) ! 0x8008
  INTEGER(GLenum), PARAMETER :: GL_BLEND_EQUATION_EXT    = INT( z'8009' ) ! 0x8009
  !  EXT_blend_subtract values
  INTEGER(GLenum), PARAMETER :: GL_FUNC_SUBTRACT_EXT     = INT( z'800A' ) ! 0x800A
  INTEGER(GLenum), PARAMETER :: GL_FUNC_REVERSE_SUBTRACT_EXT = INT( z'800B' ) ! 0x800B
  !  EXT_texture_env_combine values
  INTEGER(GLenum), PARAMETER :: GL_COMBINE_EXT           = INT( z'8570' ) ! 0x8570
  INTEGER(GLenum), PARAMETER :: GL_COMBINE_RGB_EXT       = INT( z'8571' ) ! 0x8571
  INTEGER(GLenum), PARAMETER :: GL_COMBINE_ALPHA_EXT     = INT( z'8572' ) ! 0x8572
  INTEGER(GLenum), PARAMETER :: GL_RGB_SCALE_EXT         = INT( z'8573' ) ! 0x8573
  INTEGER(GLenum), PARAMETER :: GL_ADD_SIGNED_EXT        = INT( z'8574' ) ! 0x8574
  INTEGER(GLenum), PARAMETER :: GL_INTERPOLATE_EXT       = INT( z'8575' ) ! 0x8575
  INTEGER(GLenum), PARAMETER :: GL_CONSTANT_EXT          = INT( z'8576' ) ! 0x8576
  INTEGER(GLenum), PARAMETER :: GL_PRIMARY_COLOR_EXT     = INT( z'8577' ) ! 0x8577
  INTEGER(GLenum), PARAMETER :: GL_PREVIOUS_EXT          = INT( z'8578' ) ! 0x8578
  INTEGER(GLenum), PARAMETER :: GL_SOURCE0_RGB_EXT       = INT( z'8580' ) ! 0x8580
  INTEGER(GLenum), PARAMETER :: GL_SOURCE1_RGB_EXT       = INT( z'8581' ) ! 0x8581
  INTEGER(GLenum), PARAMETER :: GL_SOURCE2_RGB_EXT       = INT( z'8582' ) ! 0x8582
  INTEGER(GLenum), PARAMETER :: GL_SOURCE0_ALPHA_EXT     = INT( z'8588' ) ! 0x8588
  INTEGER(GLenum), PARAMETER :: GL_SOURCE1_ALPHA_EXT     = INT( z'8589' ) ! 0x8589
  INTEGER(GLenum), PARAMETER :: GL_SOURCE2_ALPHA_EXT     = INT( z'858A' ) ! 0x858A
  INTEGER(GLenum), PARAMETER :: GL_OPERAND0_RGB_EXT      = INT( z'8590' ) ! 0x8590
  INTEGER(GLenum), PARAMETER :: GL_OPERAND1_RGB_EXT      = INT( z'8591' ) ! 0x8591
  INTEGER(GLenum), PARAMETER :: GL_OPERAND2_RGB_EXT      = INT( z'8592' ) ! 0x8592
  INTEGER(GLenum), PARAMETER :: GL_OPERAND0_ALPHA_EXT    = INT( z'8598' ) ! 0x8598
  INTEGER(GLenum), PARAMETER :: GL_OPERAND1_ALPHA_EXT    = INT( z'8599' ) ! 0x8599
  INTEGER(GLenum), PARAMETER :: GL_OPERAND2_ALPHA_EXT    = INT( z'859A' ) ! 0x859A


  INTERFACE
    !  display-list  commands

    !  NewList(list, mode)
    !  return  void
    !  param   list		List in value
    !  param   mode		ListMode in value
    SUBROUTINE glNewList(list, mode) BIND(C,NAME="glNewList")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
      INTEGER(GLint), VALUE :: list
    END SUBROUTINE glNewList

    !  EndList()
    !  return  void
    SUBROUTINE glEndList() BIND(C,NAME="glEndList")
      IMPORT
    END SUBROUTINE glEndList

    !  CallList(list)
    !  return  void
    !  param   list		List in value
    SUBROUTINE glCallList(list) BIND(C,NAME="glCallList")
      IMPORT
      INTEGER(GLint), VALUE :: list
    END SUBROUTINE glCallList

    !  CallLists(n, type, lists)
    !  return  void
    !  param   n		SizeI in value
    !  param   type		ListNameType in value
    !  param   lists		Void in array [COMPSIZE(n/type)]
    SUBROUTINE glCallLists(n, type, lists) BIND(C,NAME="glCallLists")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLsizei), VALUE :: n
      TYPE(C_PTR), VALUE :: lists
    END SUBROUTINE glCallLists

    !  DeleteLists(list, range)
    !  return  void
    !  param   list		List in value
    !  param   range		SizeI in value
    SUBROUTINE glDeleteLists(list, range) BIND(C,NAME="glDeleteLists")
      IMPORT
      INTEGER(GLint), VALUE :: list
      INTEGER(GLsizei), VALUE :: range
    END SUBROUTINE glDeleteLists

    !  GenLists(range)
    !  return  List
    !  param   range		SizeI in value
    FUNCTION glGenLists(range) BIND(C,NAME="glGenLists")
      IMPORT
      INTEGER(GLint) :: glGenLists
      INTEGER(GLsizei), VALUE :: range
    END FUNCTION glGenLists

    !  ListBase(base)
    !  return  void
    !  param   base		List in value
    SUBROUTINE glListBase(base) BIND(C,NAME="glListBase")
      IMPORT
      INTEGER(GLint), VALUE :: base
    END SUBROUTINE glListBase

    !  drawing  commands

    !  Begin(mode)
    !  return  void
    !  param   mode		BeginMode in value
    SUBROUTINE glBegin(mode) BIND(C,NAME="glBegin")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
    END SUBROUTINE glBegin

    !  Bitmap(width, height, xorig, yorig, xmove, ymove, bitmap)
    !  return  void
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    !  param   xorig		CoordF in value
    !  param   yorig		CoordF in value
    !  param   xmove		CoordF in value
    !  param   ymove		CoordF in value
    !  param   bitmap		UInt8 in array [COMPSIZE(width/height)]
    SUBROUTINE glBitmap(width, height, xorig, yorig, xmove, ymove, bitmap)        &
        BIND(C,NAME="glBitmap")
      IMPORT
      INTEGER(GLsizei), VALUE :: width, height
      REAL(GLfloat), VALUE :: xorig, yorig, xmove, ymove
      INTEGER(GLbyte), DIMENSION(*), INTENT(IN) :: bitmap
    END SUBROUTINE glBitmap

    !  Color3b(red, green, blue)
    !  return  void
    !  param   red		ColorB in value
    !  param   green		ColorB in value
    !  param   blue		ColorB in value
    SUBROUTINE glColor3b(red, green, blue) BIND(C,NAME="glColor3b")
      IMPORT
      INTEGER(GLbyte), VALUE :: red, green, blue
    END SUBROUTINE glColor3b

    !  Color3bv(v)
    !  return  void
    !  param   v		ColorB in array [3]
    SUBROUTINE glColor3bv(v) BIND(C,NAME="glColor3bv")
      IMPORT
      INTEGER(GLbyte), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glColor3bv

    !  Color3d(red, green, blue)
    !  return  void
    !  param   red		ColorD in value
    !  param   green		ColorD in value
    !  param   blue		ColorD in value
    SUBROUTINE glColor3d(red, green, blue) BIND(C,NAME="glColor3d")
      IMPORT
      REAL(GLdouble), VALUE :: red, green, blue
    END SUBROUTINE glColor3d

    !  Color3dv(v)
    !  return  void
    !  param   v		ColorD in array [3]
    SUBROUTINE glColor3dv(v) BIND(C,NAME="glColor3dv")
      IMPORT
      REAL(GLdouble), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glColor3dv

    !  Color3f(red, green, blue)
    !  return  void
    !  param   red		ColorF in value
    !  param   green		ColorF in value
    !  param   blue		ColorF in value
    SUBROUTINE glColor3f(red, green, blue) BIND(C,NAME="glColor3f")
      IMPORT
      REAL(GLfloat), VALUE :: red, green, blue
    END SUBROUTINE glColor3f

    !  Color3fv(v)
    !  return  void
    !  param   v		ColorF in array [3]
    SUBROUTINE glColor3fv(v) BIND(C,NAME="glColor3fv")
      IMPORT
      REAL(GLfloat), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glColor3fv

    !  Color3i(red, green, blue)
    !  return  void
    !  param   red		ColorI in value
    !  param   green		ColorI in value
    !  param   blue		ColorI in value
    SUBROUTINE glColor3i(red, green, blue) BIND(C,NAME="glColor3i")
      IMPORT
      INTEGER(GLint), VALUE :: red, green, blue
    END SUBROUTINE glColor3i

    !  Color3iv(v)
    !  return  void
    !  param   v		ColorI in array [3]
    SUBROUTINE glColor3iv(v) BIND(C,NAME="glColor3iv")
      IMPORT
      INTEGER(GLint), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glColor3iv

    !  Color3s(red, green, blue)
    !  return  void
    !  param   red		ColorS in value
    !  param   green		ColorS in value
    !  param   blue		ColorS in value
    SUBROUTINE glColor3s(red, green, blue) BIND(C,NAME="glColor3s")
      IMPORT
      INTEGER(GLshort), VALUE :: red, green, blue
    END SUBROUTINE glColor3s

    !  Color3sv(v)
    !  return  void
    !  param   v		ColorS in array [3]
    SUBROUTINE glColor3sv(v) BIND(C,NAME="glColor3sv")
      IMPORT
      INTEGER(GLshort), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glColor3sv

    !  Color3ub(red, green, blue)
    !  return  void
    !  param   red		ColorUB in value
    !  param   green		ColorUB in value
    !  param   blue		ColorUB in value
    SUBROUTINE glColor3ub(red, green, blue) BIND(C,NAME="glColor3ub")
      IMPORT
      INTEGER(GLbyte), VALUE :: red, green, blue
    END SUBROUTINE glColor3ub

    !  Color3ubv(v)
    !  return  void
    !  param   v		ColorUB in array [3]
    SUBROUTINE glColor3ubv(v) BIND(C,NAME="glColor3ubv")
      IMPORT
      INTEGER(GLbyte), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glColor3ubv

    !  Color3ui(red, green, blue)
    !  return  void
    !  param   red		ColorUI in value
    !  param   green		ColorUI in value
    !  param   blue		ColorUI in value
    SUBROUTINE glColor3ui(red, green, blue) BIND(C,NAME="glColor3ui")
      IMPORT
      INTEGER(GLint), VALUE :: red, green, blue
    END SUBROUTINE glColor3ui

    !  Color3uiv(v)
    !  return  void
    !  param   v		ColorUI in array [3]
    SUBROUTINE glColor3uiv(v) BIND(C,NAME="glColor3uiv")
      IMPORT
      INTEGER(GLint), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glColor3uiv

    !  Color3us(red, green, blue)
    !  return  void
    !  param   red		ColorUS in value
    !  param   green		ColorUS in value
    !  param   blue		ColorUS in value
    SUBROUTINE glColor3us(red, green, blue) BIND(C,NAME="glColor3us")
      IMPORT
      INTEGER(GLshort), VALUE :: red, green, blue
    END SUBROUTINE glColor3us

    !  Color3usv(v)
    !  return  void
    !  param   v		ColorUS in array [3]
    SUBROUTINE glColor3usv(v) BIND(C,NAME="glColor3usv")
      IMPORT
      INTEGER(GLshort), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glColor3usv

    !  Color4b(red, green, blue, alpha)
    !  return  void
    !  param   red		ColorB in value
    !  param   green		ColorB in value
    !  param   blue		ColorB in value
    !  param   alpha		ColorB in value
    SUBROUTINE glColor4b(red, green, blue, alpha) BIND(C,NAME="glColor4b")
      IMPORT
      INTEGER(GLbyte), VALUE :: red, green, blue, alpha
    END SUBROUTINE glColor4b

    !  Color4bv(v)
    !  return  void
    !  param   v		ColorB in array [4]
    SUBROUTINE glColor4bv(v) BIND(C,NAME="glColor4bv")
      IMPORT
      INTEGER(GLbyte), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glColor4bv

    !  Color4d(red, green, blue, alpha)
    !  return  void
    !  param   red		ColorD in value
    !  param   green		ColorD in value
    !  param   blue		ColorD in value
    !  param   alpha		ColorD in value
    SUBROUTINE glColor4d(red, green, blue, alpha) BIND(C,NAME="glColor4d")
      IMPORT
      REAL(GLdouble), VALUE :: red, green, blue, alpha
    END SUBROUTINE glColor4d

    !  Color4dv(v)
    !  return  void
    !  param   v		ColorD in array [4]
    SUBROUTINE glColor4dv(v) BIND(C,NAME="glColor4dv")
      IMPORT
      REAL(GLdouble), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glColor4dv

    !  Color4f(red, green, blue, alpha)
    !  return  void
    !  param   red		ColorF in value
    !  param   green		ColorF in value
    !  param   blue		ColorF in value
    !  param   alpha		ColorF in value
    SUBROUTINE glColor4f(red, green, blue, alpha) BIND(C,NAME="glColor4f")
      IMPORT
      REAL(GLfloat), VALUE :: red, green, blue, alpha
    END SUBROUTINE glColor4f

    !  Color4fv(v)
    !  return  void
    !  param   v		ColorF in array [4]
    SUBROUTINE glColor4fv(v) BIND(C,NAME="glColor4fv")
      IMPORT
      REAL(GLfloat), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glColor4fv

    !  Color4i(red, green, blue, alpha)
    !  return  void
    !  param   red		ColorI in value
    !  param   green		ColorI in value
    !  param   blue		ColorI in value
    !  param   alpha		ColorI in value
    SUBROUTINE glColor4i(red, green, blue, alpha) BIND(C,NAME="glColor4i")
      IMPORT
      INTEGER(GLint), VALUE :: red, green, blue, alpha
    END SUBROUTINE glColor4i

    !  Color4iv(v)
    !  return  void
    !  param   v		ColorI in array [4]
    SUBROUTINE glColor4iv(v) BIND(C,NAME="glColor4iv")
      IMPORT
      INTEGER(GLint), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glColor4iv

    !  Color4s(red, green, blue, alpha)
    !  return  void
    !  param   red		ColorS in value
    !  param   green		ColorS in value
    !  param   blue		ColorS in value
    !  param   alpha		ColorS in value
    SUBROUTINE glColor4s(red, green, blue, alpha) BIND(C,NAME="glColor4s")
      IMPORT
      INTEGER(GLshort), VALUE :: red, green, blue, alpha
    END SUBROUTINE glColor4s

    !  Color4sv(v)
    !  return  void
    !  param   v		ColorS in array [4]
    SUBROUTINE glColor4sv(v) BIND(C,NAME="glColor4sv")
      IMPORT
      INTEGER(GLshort), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glColor4sv

    !  Color4ub(red, green, blue, alpha)
    !  return  void
    !  param   red		ColorUB in value
    !  param   green		ColorUB in value
    !  param   blue		ColorUB in value
    !  param   alpha		ColorUB in value
    SUBROUTINE glColor4ub(red, green, blue, alpha) BIND(C,NAME="glColor4ub")
      IMPORT
      INTEGER(GLbyte), VALUE :: red, green, blue, alpha
    END SUBROUTINE glColor4ub

    !  Color4ubv(v)
    !  return  void
    !  param   v		ColorUB in array [4]
    SUBROUTINE glColor4ubv(v) BIND(C,NAME="glColor4ubv")
      IMPORT
      INTEGER(GLbyte), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glColor4ubv

    !  Color4ui(red, green, blue, alpha)
    !  return  void
    !  param   red		ColorUI in value
    !  param   green		ColorUI in value
    !  param   blue		ColorUI in value
    !  param   alpha		ColorUI in value
    SUBROUTINE glColor4ui(red, green, blue, alpha) BIND(C,NAME="glColor4ui")
      IMPORT
      INTEGER(GLint), VALUE :: red, green, blue, alpha
    END SUBROUTINE glColor4ui

    !  Color4uiv(v)
    !  return  void
    !  param   v		ColorUI in array [4]
    SUBROUTINE glColor4uiv(v) BIND(C,NAME="glColor4uiv")
      IMPORT
      INTEGER(GLint), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glColor4uiv

    !  Color4us(red, green, blue, alpha)
    !  return  void
    !  param   red		ColorUS in value
    !  param   green		ColorUS in value
    !  param   blue		ColorUS in value
    !  param   alpha		ColorUS in value
    SUBROUTINE glColor4us(red, green, blue, alpha) BIND(C,NAME="glColor4us")
      IMPORT
      INTEGER(GLshort), VALUE :: red, green, blue, alpha
    END SUBROUTINE glColor4us

    !  Color4usv(v)
    !  return  void
    !  param   v		ColorUS in array [4]
    SUBROUTINE glColor4usv(v) BIND(C,NAME="glColor4usv")
      IMPORT
      INTEGER(GLshort), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glColor4usv

    !  EdgeFlag(flag)
    !  return  void
    !  param   flag		Boolean in value
    SUBROUTINE glEdgeFlag(flag) BIND(C,NAME="glEdgeFlag")
      IMPORT
      INTEGER(GLboolean), VALUE :: flag
    END SUBROUTINE glEdgeFlag

    !  EdgeFlagv(flag)
    !  return  void
    !  param   flag		Boolean in array [1]
    SUBROUTINE glEdgeFlagv(flag) BIND(C,NAME="glEdgeFlagv")
      IMPORT
      INTEGER(GLboolean), INTENT(IN) :: flag
    END SUBROUTINE glEdgeFlagv

    !  End()
    !  return  void
    SUBROUTINE glEnd() BIND(C,NAME="glEnd")
      IMPORT
    END SUBROUTINE glEnd

    !  Indexd(c)
    !  return  void
    !  param   c		ColorIndexValueD in value
    SUBROUTINE glIndexd(c) BIND(C,NAME="glIndexd")
      IMPORT
      REAL(GLdouble), VALUE :: c
    END SUBROUTINE glIndexd

    !  Indexdv(c)
    !  return  void
    !  param   c		ColorIndexValueD in array [1]
    SUBROUTINE glIndexdv(c) BIND(C,NAME="glIndexdv")
      IMPORT
      REAL(GLdouble), INTENT(IN) :: c
    END SUBROUTINE glIndexdv

    !  Indexf(c)
    !  return  void
    !  param   c		ColorIndexValueF in value
    SUBROUTINE glIndexf(c) BIND(C,NAME="glIndexf")
      IMPORT
      REAL(GLfloat), VALUE :: c
    END SUBROUTINE glIndexf

    !  Indexfv(c)
    !  return  void
    !  param   c		ColorIndexValueF in array [1]
    SUBROUTINE glIndexfv(c) BIND(C,NAME="glIndexfv")
      IMPORT
      REAL(GLfloat), INTENT(IN) :: c
    END SUBROUTINE glIndexfv

    !  Indexi(c)
    !  return  void
    !  param   c		ColorIndexValueI in value
    SUBROUTINE glIndexi(c) BIND(C,NAME="glIndexi")
      IMPORT
      INTEGER(GLint), VALUE :: c
    END SUBROUTINE glIndexi

    !  Indexiv(c)
    !  return  void
    !  param   c		ColorIndexValueI in array [1]
    SUBROUTINE glIndexiv(c) BIND(C,NAME="glIndexiv")
      IMPORT
      INTEGER(GLint), INTENT(IN) :: c
    END SUBROUTINE glIndexiv

    !  Indexs(c)
    !  return  void
    !  param   c		ColorIndexValueS in value
    SUBROUTINE glIndexs(c) BIND(C,NAME="glIndexs")
      IMPORT
      INTEGER(GLshort), VALUE :: c
    END SUBROUTINE glIndexs

    !  Indexsv(c)
    !  return  void
    !  param   c		ColorIndexValueS in array [1]
    SUBROUTINE glIndexsv(c) BIND(C,NAME="glIndexsv")
      IMPORT
      INTEGER(GLshort), INTENT(IN) :: c
    END SUBROUTINE glIndexsv

    !  Normal3b(nx, ny, nz)
    !  return  void
    !  param   nx		Int8 in value
    !  param   ny		Int8 in value
    !  param   nz		Int8 in value
    SUBROUTINE glNormal3b(nx, ny, nz) BIND(C,NAME="glNormal3b")
      IMPORT
      INTEGER(GLbyte), VALUE :: nx, ny, nz
    END SUBROUTINE glNormal3b

    !  Normal3bv(v)
    !  return  void
    !  param   v		Int8 in array [3]
    SUBROUTINE glNormal3bv(v) BIND(C,NAME="glNormal3bv")
      IMPORT
      INTEGER(GLbyte), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glNormal3bv

    !  Normal3d(nx, ny, nz)
    !  return  void
    !  param   nx		CoordD in value
    !  param   ny		CoordD in value
    !  param   nz		CoordD in value
    SUBROUTINE glNormal3d(nx, ny, nz) BIND(C,NAME="glNormal3d")
      IMPORT
      REAL(GLdouble), VALUE :: nx, ny, nz
    END SUBROUTINE glNormal3d

    !  Normal3dv(v)
    !  return  void
    !  param   v		CoordD in array [3]
    SUBROUTINE glNormal3dv(v) BIND(C,NAME="glNormal3dv")
      IMPORT
      REAL(GLdouble), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glNormal3dv

    !  Normal3f(nx, ny, nz)
    !  return  void
    !  param   nx		CoordF in value
    !  param   ny		CoordF in value
    !  param   nz		CoordF in value
    SUBROUTINE glNormal3f(nx, ny, nz) BIND(C,NAME="glNormal3f")
      IMPORT
      REAL(GLfloat), VALUE :: nx, ny, nz
    END SUBROUTINE glNormal3f

    !  Normal3fv(v)
    !  return  void
    !  param   v		CoordF in array [3]
    SUBROUTINE glNormal3fv(v) BIND(C,NAME="glNormal3fv")
      IMPORT
      REAL(GLfloat), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glNormal3fv

    !  Normal3i(nx, ny, nz)
    !  return  void
    !  param   nx		Int32 in value
    !  param   ny		Int32 in value
    !  param   nz		Int32 in value
    SUBROUTINE glNormal3i(nx, ny, nz) BIND(C,NAME="glNormal3i")
      IMPORT
      INTEGER(GLint), VALUE :: nx, ny, nz
    END SUBROUTINE glNormal3i

    !  Normal3iv(v)
    !  return  void
    !  param   v		Int32 in array [3]
    SUBROUTINE glNormal3iv(v) BIND(C,NAME="glNormal3iv")
      IMPORT
      INTEGER(GLint), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glNormal3iv

    !  Normal3s(nx, ny, nz)
    !  return  void
    !  param   nx		Int16 in value
    !  param   ny		Int16 in value
    !  param   nz		Int16 in value
    SUBROUTINE glNormal3s(nx, ny, nz) BIND(C,NAME="glNormal3s")
      IMPORT
      INTEGER(GLshort), VALUE :: nx, ny, nz
    END SUBROUTINE glNormal3s

    !  Normal3sv(v)
    !  return  void
    !  param   v		Int16 in array [3]
    SUBROUTINE glNormal3sv(v) BIND(C,NAME="glNormal3sv")
      IMPORT
      INTEGER(GLshort), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glNormal3sv

    !  RasterPos2d(x, y)
    !  return  void
    !  param   x		CoordD in value
    !  param   y		CoordD in value
    SUBROUTINE glRasterPos2d(x, y) BIND(C,NAME="glRasterPos2d")
      IMPORT
      REAL(GLdouble), VALUE :: x, y
    END SUBROUTINE glRasterPos2d

    !  RasterPos2dv(v)
    !  return  void
    !  param   v		CoordD in array [2]
    SUBROUTINE glRasterPos2dv(v) BIND(C,NAME="glRasterPos2dv")
      IMPORT
      REAL(GLdouble), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glRasterPos2dv

    !  RasterPos2f(x, y)
    !  return  void
    !  param   x		CoordF in value
    !  param   y		CoordF in value
    SUBROUTINE glRasterPos2f(x, y) BIND(C,NAME="glRasterPos2f")
      IMPORT
      REAL(GLfloat), VALUE :: x, y
    END SUBROUTINE glRasterPos2f

    !  RasterPos2fv(v)
    !  return  void
    !  param   v		CoordF in array [2]
    SUBROUTINE glRasterPos2fv(v) BIND(C,NAME="glRasterPos2fv")
      IMPORT
      REAL(GLfloat), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glRasterPos2fv

    !  RasterPos2i(x, y)
    !  return  void
    !  param   x		CoordI in value
    !  param   y		CoordI in value
    SUBROUTINE glRasterPos2i(x, y) BIND(C,NAME="glRasterPos2i")
      IMPORT
      INTEGER(GLint), VALUE :: x, y
    END SUBROUTINE glRasterPos2i

    !  RasterPos2iv(v)
    !  return  void
    !  param   v		CoordI in array [2]
    SUBROUTINE glRasterPos2iv(v) BIND(C,NAME="glRasterPos2iv")
      IMPORT
      INTEGER(GLint), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glRasterPos2iv

    !  RasterPos2s(x, y)
    !  return  void
    !  param   x		CoordS in value
    !  param   y		CoordS in value
    SUBROUTINE glRasterPos2s(x, y) BIND(C,NAME="glRasterPos2s")
      IMPORT
      INTEGER(GLshort), VALUE :: x, y
    END SUBROUTINE glRasterPos2s

    !  RasterPos2sv(v)
    !  return  void
    !  param   v		CoordS in array [2]
    SUBROUTINE glRasterPos2sv(v) BIND(C,NAME="glRasterPos2sv")
      IMPORT
      INTEGER(GLshort), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glRasterPos2sv

    !  RasterPos3d(x, y, z)
    !  return  void
    !  param   x		CoordD in value
    !  param   y		CoordD in value
    !  param   z		CoordD in value
    SUBROUTINE glRasterPos3d(x, y, z) BIND(C,NAME="glRasterPos3d")
      IMPORT
      REAL(GLdouble), VALUE :: x, y, z
    END SUBROUTINE glRasterPos3d

    !  RasterPos3dv(v)
    !  return  void
    !  param   v		CoordD in array [3]
    SUBROUTINE glRasterPos3dv(v) BIND(C,NAME="glRasterPos3dv")
      IMPORT
      REAL(GLdouble), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glRasterPos3dv

    !  RasterPos3f(x, y, z)
    !  return  void
    !  param   x		CoordF in value
    !  param   y		CoordF in value
    !  param   z		CoordF in value
    SUBROUTINE glRasterPos3f(x, y, z) BIND(C,NAME="glRasterPos3f")
      IMPORT
      REAL(GLfloat), VALUE :: x, y, z
    END SUBROUTINE glRasterPos3f

    !  RasterPos3fv(v)
    !  return  void
    !  param   v		CoordF in array [3]
    SUBROUTINE glRasterPos3fv(v) BIND(C,NAME="glRasterPos3fv")
      IMPORT
      REAL(GLfloat), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glRasterPos3fv

    !  RasterPos3i(x, y, z)
    !  return  void
    !  param   x		CoordI in value
    !  param   y		CoordI in value
    !  param   z		CoordI in value
    SUBROUTINE glRasterPos3i(x, y, z) BIND(C,NAME="glRasterPos3i")
      IMPORT
      INTEGER(GLint), VALUE :: x, y, z
    END SUBROUTINE glRasterPos3i

    !  RasterPos3iv(v)
    !  return  void
    !  param   v		CoordI in array [3]
    SUBROUTINE glRasterPos3iv(v) BIND(C,NAME="glRasterPos3iv")
      IMPORT
      INTEGER(GLint), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glRasterPos3iv

    !  RasterPos3s(x, y, z)
    !  return  void
    !  param   x		CoordS in value
    !  param   y		CoordS in value
    !  param   z		CoordS in value
    SUBROUTINE glRasterPos3s(x, y, z) BIND(C,NAME="glRasterPos3s")
      IMPORT
      INTEGER(GLshort), VALUE :: x, y, z
    END SUBROUTINE glRasterPos3s

    !  RasterPos3sv(v)
    !  return  void
    !  param   v		CoordS in array [3]
    SUBROUTINE glRasterPos3sv(v) BIND(C,NAME="glRasterPos3sv")
      IMPORT
      INTEGER(GLshort), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glRasterPos3sv

    !  RasterPos4d(x, y, z, w)
    !  return  void
    !  param   x		CoordD in value
    !  param   y		CoordD in value
    !  param   z		CoordD in value
    !  param   w		CoordD in value
    SUBROUTINE glRasterPos4d(x, y, z, w) BIND(C,NAME="glRasterPos4d")
      IMPORT
      REAL(GLdouble), VALUE :: x, y, z, w
    END SUBROUTINE glRasterPos4d

    !  RasterPos4dv(v)
    !  return  void
    !  param   v		CoordD in array [4]
    SUBROUTINE glRasterPos4dv(v) BIND(C,NAME="glRasterPos4dv")
      IMPORT
      REAL(GLdouble), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glRasterPos4dv

    !  RasterPos4f(x, y, z, w)
    !  return  void
    !  param   x		CoordF in value
    !  param   y		CoordF in value
    !  param   z		CoordF in value
    !  param   w		CoordF in value
    SUBROUTINE glRasterPos4f(x, y, z, w) BIND(C,NAME="glRasterPos4f")
      IMPORT
      REAL(GLfloat), VALUE :: x, y, z, w
    END SUBROUTINE glRasterPos4f

    !  RasterPos4fv(v)
    !  return  void
    !  param   v		CoordF in array [4]
    SUBROUTINE glRasterPos4fv(v) BIND(C,NAME="glRasterPos4fv")
      IMPORT
      REAL(GLfloat), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glRasterPos4fv

    !  RasterPos4i(x, y, z, w)
    !  return  void
    !  param   x		CoordI in value
    !  param   y		CoordI in value
    !  param   z		CoordI in value
    !  param   w		CoordI in value
    SUBROUTINE glRasterPos4i(x, y, z, w) BIND(C,NAME="glRasterPos4i")
      IMPORT
      INTEGER(GLint), VALUE :: x, y, z, w
    END SUBROUTINE glRasterPos4i

    !  RasterPos4iv(v)
    !  return  void
    !  param   v		CoordI in array [4]
    SUBROUTINE glRasterPos4iv(v) BIND(C,NAME="glRasterPos4iv")
      IMPORT
      INTEGER(GLint), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glRasterPos4iv

    !  RasterPos4s(x, y, z, w)
    !  return  void
    !  param   x		CoordS in value
    !  param   y		CoordS in value
    !  param   z		CoordS in value
    !  param   w		CoordS in value
    SUBROUTINE glRasterPos4s(x, y, z, w) BIND(C,NAME="glRasterPos4s")
      IMPORT
      INTEGER(GLshort), VALUE :: x, y, z, w
    END SUBROUTINE glRasterPos4s

    !  RasterPos4sv(v)
    !  return  void
    !  param   v		CoordS in array [4]
    SUBROUTINE glRasterPos4sv(v) BIND(C,NAME="glRasterPos4sv")
      IMPORT
      INTEGER(GLshort), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glRasterPos4sv

    !  Rectd(x1, y1, x2, y2)
    !  return  void
    !  param   x1		CoordD in value
    !  param   y1		CoordD in value
    !  param   x2		CoordD in value
    !  param   y2		CoordD in value
    SUBROUTINE glRectd(x1, y1, x2, y2) BIND(C,NAME="glRectd")
      IMPORT
      REAL(GLdouble), VALUE :: x1, y1, x2, y2
    END SUBROUTINE glRectd

    !  Rectdv(v1, v2)
    !  return  void
    !  param   v1		CoordD in array [2]
    !  param   v2		CoordD in array [2]
    SUBROUTINE glRectdv(v1, v2) BIND(C,NAME="glRectdv")
      IMPORT
      REAL(GLdouble), DIMENSION(2), INTENT(IN) :: v1, v2
    END SUBROUTINE glRectdv

    !  Rectf(x1, y1, x2, y2)
    !  return  void
    !  param   x1		CoordF in value
    !  param   y1		CoordF in value
    !  param   x2		CoordF in value
    !  param   y2		CoordF in value
    SUBROUTINE glRectf(x1, y1, x2, y2) BIND(C,NAME="glRectf")
      IMPORT
      REAL(GLfloat), VALUE :: x1, y1, x2, y2
    END SUBROUTINE glRectf

    !  Rectfv(v1, v2)
    !  return  void
    !  param   v1		CoordF in array [2]
    !  param   v2		CoordF in array [2]
    SUBROUTINE glRectfv(v1, v2) BIND(C,NAME="glRectfv")
      IMPORT
      REAL(GLfloat), DIMENSION(2), INTENT(IN) :: v1, v2
    END SUBROUTINE glRectfv

    !  Recti(x1, y1, x2, y2)
    !  return  void
    !  param   x1		CoordI in value
    !  param   y1		CoordI in value
    !  param   x2		CoordI in value
    !  param   y2		CoordI in value
    SUBROUTINE glRecti(x1, y1, x2, y2) BIND(C,NAME="glRecti")
      IMPORT
      INTEGER(GLint), VALUE :: x1, y1, x2, y2
    END SUBROUTINE glRecti

    !  Rectiv(v1, v2)
    !  return  void
    !  param   v1		CoordI in array [2]
    !  param   v2		CoordI in array [2]
    SUBROUTINE glRectiv(v1, v2) BIND(C,NAME="glRectiv")
      IMPORT
      INTEGER(GLint), DIMENSION(2), INTENT(IN) :: v1, v2
    END SUBROUTINE glRectiv

    !  Rects(x1, y1, x2, y2)
    !  return  void
    !  param   x1		CoordS in value
    !  param   y1		CoordS in value
    !  param   x2		CoordS in value
    !  param   y2		CoordS in value
    SUBROUTINE glRects(x1, y1, x2, y2) BIND(C,NAME="glRects")
      IMPORT
      INTEGER(GLshort), VALUE :: x1, y1, x2, y2
    END SUBROUTINE glRects

    !  Rectsv(v1, v2)
    !  return  void
    !  param   v1		CoordS in array [2]
    !  param   v2		CoordS in array [2]
    SUBROUTINE glRectsv(v1, v2) BIND(C,NAME="glRectsv")
      IMPORT
      INTEGER(GLshort), DIMENSION(2), INTENT(IN) :: v1, v2
    END SUBROUTINE glRectsv

    !  TexCoord1d(s)
    !  return  void
    !  param   s		CoordD in value
    SUBROUTINE glTexCoord1d(s) BIND(C,NAME="glTexCoord1d")
      IMPORT
      REAL(GLdouble), VALUE :: s
    END SUBROUTINE glTexCoord1d

    !  TexCoord1dv(v)
    !  return  void
    !  param   v		CoordD in array [1]
    SUBROUTINE glTexCoord1dv(v) BIND(C,NAME="glTexCoord1dv")
      IMPORT
      REAL(GLdouble), INTENT(IN) :: v
    END SUBROUTINE glTexCoord1dv

    !  TexCoord1f(s)
    !  return  void
    !  param   s		CoordF in value
    SUBROUTINE glTexCoord1f(s) BIND(C,NAME="glTexCoord1f")
      IMPORT
      REAL(GLfloat), VALUE :: s
    END SUBROUTINE glTexCoord1f

    !  TexCoord1fv(v)
    !  return  void
    !  param   v		CoordF in array [1]
    SUBROUTINE glTexCoord1fv(v) BIND(C,NAME="glTexCoord1fv")
      IMPORT
      REAL(GLfloat), INTENT(IN) :: v
    END SUBROUTINE glTexCoord1fv

    !  TexCoord1i(s)
    !  return  void
    !  param   s		CoordI in value
    SUBROUTINE glTexCoord1i(s) BIND(C,NAME="glTexCoord1i")
      IMPORT
      INTEGER(GLint), VALUE :: s
    END SUBROUTINE glTexCoord1i

    !  TexCoord1iv(v)
    !  return  void
    !  param   v		CoordI in array [1]
    SUBROUTINE glTexCoord1iv(v) BIND(C,NAME="glTexCoord1iv")
      IMPORT
      INTEGER(GLint), INTENT(IN) :: v
    END SUBROUTINE glTexCoord1iv

    !  TexCoord1s(s)
    !  return  void
    !  param   s		CoordS in value
    SUBROUTINE glTexCoord1s(s) BIND(C,NAME="glTexCoord1s")
      IMPORT
      INTEGER(GLshort), VALUE :: s
    END SUBROUTINE glTexCoord1s

    !  TexCoord1sv(v)
    !  return  void
    !  param   v		CoordS in array [1]
    SUBROUTINE glTexCoord1sv(v) BIND(C,NAME="glTexCoord1sv")
      IMPORT
      INTEGER(GLshort), INTENT(IN) :: v
    END SUBROUTINE glTexCoord1sv

    !  TexCoord2d(s, t)
    !  return  void
    !  param   s		CoordD in value
    !  param   t		CoordD in value
    SUBROUTINE glTexCoord2d(s, t) BIND(C,NAME="glTexCoord2d")
      IMPORT
      REAL(GLdouble), VALUE :: s, t
    END SUBROUTINE glTexCoord2d

    !  TexCoord2dv(v)
    !  return  void
    !  param   v		CoordD in array [2]
    SUBROUTINE glTexCoord2dv(v) BIND(C,NAME="glTexCoord2dv")
      IMPORT
      REAL(GLdouble), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glTexCoord2dv

    !  TexCoord2f(s, t)
    !  return  void
    !  param   s		CoordF in value
    !  param   t		CoordF in value
    SUBROUTINE glTexCoord2f(s, t) BIND(C,NAME="glTexCoord2f")
      IMPORT
      REAL(GLfloat), VALUE :: s, t
    END SUBROUTINE glTexCoord2f

    !  TexCoord2fv(v)
    !  return  void
    !  param   v		CoordF in array [2]
    SUBROUTINE glTexCoord2fv(v) BIND(C,NAME="glTexCoord2fv")
      IMPORT
      REAL(GLfloat), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glTexCoord2fv

    !  TexCoord2i(s, t)
    !  return  void
    !  param   s		CoordI in value
    !  param   t		CoordI in value
    SUBROUTINE glTexCoord2i(s, t) BIND(C,NAME="glTexCoord2i")
      IMPORT
      INTEGER(GLint), VALUE :: s, t
    END SUBROUTINE glTexCoord2i

    !  TexCoord2iv(v)
    !  return  void
    !  param   v		CoordI in array [2]
    SUBROUTINE glTexCoord2iv(v) BIND(C,NAME="glTexCoord2iv")
      IMPORT
      INTEGER(GLint), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glTexCoord2iv

    !  TexCoord2s(s, t)
    !  return  void
    !  param   s		CoordS in value
    !  param   t		CoordS in value
    SUBROUTINE glTexCoord2s(s, t) BIND(C,NAME="glTexCoord2s")
      IMPORT
      INTEGER(GLshort), VALUE :: s, t
    END SUBROUTINE glTexCoord2s

    !  TexCoord2sv(v)
    !  return  void
    !  param   v		CoordS in array [2]
    SUBROUTINE glTexCoord2sv(v) BIND(C,NAME="glTexCoord2sv")
      IMPORT
      INTEGER(GLshort), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glTexCoord2sv

    !  TexCoord3d(s, t, r)
    !  return  void
    !  param   s		CoordD in value
    !  param   t		CoordD in value
    !  param   r		CoordD in value
    SUBROUTINE glTexCoord3d(s, t, r) BIND(C,NAME="glTexCoord3d")
      IMPORT
      REAL(GLdouble), VALUE :: s, t, r
    END SUBROUTINE glTexCoord3d

    !  TexCoord3dv(v)
    !  return  void
    !  param   v		CoordD in array [3]
    SUBROUTINE glTexCoord3dv(v) BIND(C,NAME="glTexCoord3dv")
      IMPORT
      REAL(GLdouble), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glTexCoord3dv

    !  TexCoord3f(s, t, r)
    !  return  void
    !  param   s		CoordF in value
    !  param   t		CoordF in value
    !  param   r		CoordF in value
    SUBROUTINE glTexCoord3f(s, t, r) BIND(C,NAME="glTexCoord3f")
      IMPORT
      REAL(GLfloat), VALUE :: s, t, r
    END SUBROUTINE glTexCoord3f

    !  TexCoord3fv(v)
    !  return  void
    !  param   v		CoordF in array [3]
    SUBROUTINE glTexCoord3fv(v) BIND(C,NAME="glTexCoord3fv")
      IMPORT
      REAL(GLfloat), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glTexCoord3fv

    !  TexCoord3i(s, t, r)
    !  return  void
    !  param   s		CoordI in value
    !  param   t		CoordI in value
    !  param   r		CoordI in value
    SUBROUTINE glTexCoord3i(s, t, r) BIND(C,NAME="glTexCoord3i")
      IMPORT
      INTEGER(GLint), VALUE :: s, t, r
    END SUBROUTINE glTexCoord3i

    !  TexCoord3iv(v)
    !  return  void
    !  param   v		CoordI in array [3]
    SUBROUTINE glTexCoord3iv(v) BIND(C,NAME="glTexCoord3iv")
      IMPORT
      INTEGER(GLint), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glTexCoord3iv

    !  TexCoord3s(s, t, r)
    !  return  void
    !  param   s		CoordS in value
    !  param   t		CoordS in value
    !  param   r		CoordS in value
    SUBROUTINE glTexCoord3s(s, t, r) BIND(C,NAME="glTexCoord3s")
      IMPORT
      INTEGER(GLshort), VALUE :: s, t, r
    END SUBROUTINE glTexCoord3s

    !  TexCoord3sv(v)
    !  return  void
    !  param   v		CoordS in array [3]
    SUBROUTINE glTexCoord3sv(v) BIND(C,NAME="glTexCoord3sv")
      IMPORT
      INTEGER(GLshort), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glTexCoord3sv

    !  TexCoord4d(s, t, r, q)
    !  return  void
    !  param   s		CoordD in value
    !  param   t		CoordD in value
    !  param   r		CoordD in value
    !  param   q		CoordD in value
    SUBROUTINE glTexCoord4d(s, t, r, q) BIND(C,NAME="glTexCoord4d")
      IMPORT
      REAL(GLdouble), VALUE :: s, t, r, q
    END SUBROUTINE glTexCoord4d

    !  TexCoord4dv(v)
    !  return  void
    !  param   v		CoordD in array [4]
    SUBROUTINE glTexCoord4dv(v) BIND(C,NAME="glTexCoord4dv")
      IMPORT
      REAL(GLdouble), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glTexCoord4dv

    !  TexCoord4f(s, t, r, q)
    !  return  void
    !  param   s		CoordF in value
    !  param   t		CoordF in value
    !  param   r		CoordF in value
    !  param   q		CoordF in value
    SUBROUTINE glTexCoord4f(s, t, r, q) BIND(C,NAME="glTexCoord4f")
      IMPORT
      REAL(GLfloat), VALUE :: s, t, r, q
    END SUBROUTINE glTexCoord4f

    !  TexCoord4fv(v)
    !  return  void
    !  param   v		CoordF in array [4]
    SUBROUTINE glTexCoord4fv(v) BIND(C,NAME="glTexCoord4fv")
      IMPORT
      REAL(GLfloat), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glTexCoord4fv

    !  TexCoord4i(s, t, r, q)
    !  return  void
    !  param   s		CoordI in value
    !  param   t		CoordI in value
    !  param   r		CoordI in value
    !  param   q		CoordI in value
    SUBROUTINE glTexCoord4i(s, t, r, q) BIND(C,NAME="glTexCoord4i")
      IMPORT
      INTEGER(GLint), VALUE :: s, t, r, q
    END SUBROUTINE glTexCoord4i

    !  TexCoord4iv(v)
    !  return  void
    !  param   v		CoordI in array [4]
    SUBROUTINE glTexCoord4iv(v) BIND(C,NAME="glTexCoord4iv")
      IMPORT
      INTEGER(GLint), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glTexCoord4iv

    !  TexCoord4s(s, t, r, q)
    !  return  void
    !  param   s		CoordS in value
    !  param   t		CoordS in value
    !  param   r		CoordS in value
    !  param   q		CoordS in value
    SUBROUTINE glTexCoord4s(s, t, r, q) BIND(C,NAME="glTexCoord4s")
      IMPORT
      INTEGER(GLshort), VALUE :: s, t, r, q
    END SUBROUTINE glTexCoord4s

    !  TexCoord4sv(v)
    !  return  void
    !  param   v		CoordS in array [4]
    SUBROUTINE glTexCoord4sv(v) BIND(C,NAME="glTexCoord4sv")
      IMPORT
      INTEGER(GLshort), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glTexCoord4sv

    !  Vertex2d(x, y)
    !  return  void
    !  param   x		CoordD in value
    !  param   y		CoordD in value
    SUBROUTINE glVertex2d(x, y) BIND(C,NAME="glVertex2d")
      IMPORT
      REAL(GLdouble), VALUE :: x, y
    END SUBROUTINE glVertex2d

    !  Vertex2dv(v)
    !  return  void
    !  param   v		CoordD in array [2]
    SUBROUTINE glVertex2dv(v) BIND(C,NAME="glVertex2dv")
      IMPORT
      REAL(GLdouble), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glVertex2dv

    !  Vertex2f(x, y)
    !  return  void
    !  param   x		CoordF in value
    !  param   y		CoordF in value
    SUBROUTINE glVertex2f(x, y) BIND(C,NAME="glVertex2f")
      IMPORT
      REAL(GLfloat), VALUE :: x, y
    END SUBROUTINE glVertex2f

    !  Vertex2fv(v)
    !  return  void
    !  param   v		CoordF in array [2]
    SUBROUTINE glVertex2fv(v) BIND(C,NAME="glVertex2fv")
      IMPORT
      REAL(GLfloat), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glVertex2fv

    !  Vertex2i(x, y)
    !  return  void
    !  param   x		CoordI in value
    !  param   y		CoordI in value
    SUBROUTINE glVertex2i(x, y) BIND(C,NAME="glVertex2i")
      IMPORT
      INTEGER(GLint), VALUE :: x, y
    END SUBROUTINE glVertex2i

    !  Vertex2iv(v)
    !  return  void
    !  param   v		CoordI in array [2]
    SUBROUTINE glVertex2iv(v) BIND(C,NAME="glVertex2iv")
      IMPORT
      INTEGER(GLint), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glVertex2iv

    !  Vertex2s(x, y)
    !  return  void
    !  param   x		CoordS in value
    !  param   y		CoordS in value
    SUBROUTINE glVertex2s(x, y) BIND(C,NAME="glVertex2s")
      IMPORT
      INTEGER(GLshort), VALUE :: x, y
    END SUBROUTINE glVertex2s

    !  Vertex2sv(v)
    !  return  void
    !  param   v		CoordS in array [2]
    SUBROUTINE glVertex2sv(v) BIND(C,NAME="glVertex2sv")
      IMPORT
      INTEGER(GLshort), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glVertex2sv

    !  Vertex3d(x, y, z)
    !  return  void
    !  param   x		CoordD in value
    !  param   y		CoordD in value
    !  param   z		CoordD in value
    SUBROUTINE glVertex3d(x, y, z) BIND(C,NAME="glVertex3d")
      IMPORT
      REAL(GLdouble), VALUE :: x, y, z
    END SUBROUTINE glVertex3d

    !  Vertex3dv(v)
    !  return  void
    !  param   v		CoordD in array [3]
    SUBROUTINE glVertex3dv(v) BIND(C,NAME="glVertex3dv")
      IMPORT
      REAL(GLdouble), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glVertex3dv

    !  Vertex3f(x, y, z)
    !  return  void
    !  param   x		CoordF in value
    !  param   y		CoordF in value
    !  param   z		CoordF in value
    SUBROUTINE glVertex3f(x, y, z) BIND(C,NAME="glVertex3f")
      IMPORT
      REAL(GLfloat), VALUE :: x, y, z
    END SUBROUTINE glVertex3f

    !  Vertex3fv(v)
    !  return  void
    !  param   v		CoordF in array [3]
    SUBROUTINE glVertex3fv(v) BIND(C,NAME="glVertex3fv")
      IMPORT
      REAL(GLfloat), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glVertex3fv

    !  Vertex3i(x, y, z)
    !  return  void
    !  param   x		CoordI in value
    !  param   y		CoordI in value
    !  param   z		CoordI in value
    SUBROUTINE glVertex3i(x, y, z) BIND(C,NAME="glVertex3i")
      IMPORT
      INTEGER(GLint), VALUE :: x, y, z
    END SUBROUTINE glVertex3i

    !  Vertex3iv(v)
    !  return  void
    !  param   v		CoordI in array [3]
    SUBROUTINE glVertex3iv(v) BIND(C,NAME="glVertex3iv")
      IMPORT
      INTEGER(GLint), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glVertex3iv

    !  Vertex3s(x, y, z)
    !  return  void
    !  param   x		CoordS in value
    !  param   y		CoordS in value
    !  param   z		CoordS in value
    SUBROUTINE glVertex3s(x, y, z) BIND(C,NAME="glVertex3s")
      IMPORT
      INTEGER(GLshort), VALUE :: x, y, z
    END SUBROUTINE glVertex3s

    !  Vertex3sv(v)
    !  return  void
    !  param   v		CoordS in array [3]
    SUBROUTINE glVertex3sv(v) BIND(C,NAME="glVertex3sv")
      IMPORT
      INTEGER(GLshort), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glVertex3sv

    !  Vertex4d(x, y, z, w)
    !  return  void
    !  param   x		CoordD in value
    !  param   y		CoordD in value
    !  param   z		CoordD in value
    !  param   w		CoordD in value
    SUBROUTINE glVertex4d(x, y, z, w) BIND(C,NAME="glVertex4d")
      IMPORT
      REAL(GLdouble), VALUE :: x, y, z, w
    END SUBROUTINE glVertex4d

    !  Vertex4dv(v)
    !  return  void
    !  param   v		CoordD in array [4]
    SUBROUTINE glVertex4dv(v) BIND(C,NAME="glVertex4dv")
      IMPORT
      REAL(GLdouble), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glVertex4dv

    !  Vertex4f(x, y, z, w)
    !  return  void
    !  param   x		CoordF in value
    !  param   y		CoordF in value
    !  param   z		CoordF in value
    !  param   w		CoordF in value
    SUBROUTINE glVertex4f(x, y, z, w) BIND(C,NAME="glVertex4f")
      IMPORT
      REAL(GLfloat), VALUE :: x, y, z, w
    END SUBROUTINE glVertex4f

    !  Vertex4fv(v)
    !  return  void
    !  param   v		CoordF in array [4]
    SUBROUTINE glVertex4fv(v) BIND(C,NAME="glVertex4fv")
      IMPORT
      REAL(GLfloat), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glVertex4fv

    !  Vertex4i(x, y, z, w)
    !  return  void
    !  param   x		CoordI in value
    !  param   y		CoordI in value
    !  param   z		CoordI in value
    !  param   w		CoordI in value
    SUBROUTINE glVertex4i(x, y, z, w) BIND(C,NAME="glVertex4i")
      IMPORT
      INTEGER(GLint), VALUE :: x, y, z, w
    END SUBROUTINE glVertex4i

    !  Vertex4iv(v)
    !  return  void
    !  param   v		CoordI in array [4]
    SUBROUTINE glVertex4iv(v) BIND(C,NAME="glVertex4iv")
      IMPORT
      INTEGER(GLint), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glVertex4iv

    !  Vertex4s(x, y, z, w)
    !  return  void
    !  param   x		CoordS in value
    !  param   y		CoordS in value
    !  param   z		CoordS in value
    !  param   w		CoordS in value
    SUBROUTINE glVertex4s(x, y, z, w) BIND(C,NAME="glVertex4s")
      IMPORT
      INTEGER(GLshort), VALUE :: x, y, z, w
    END SUBROUTINE glVertex4s

    !  Vertex4sv(v)
    !  return  void
    !  param   v		CoordS in array [4]
    SUBROUTINE glVertex4sv(v) BIND(C,NAME="glVertex4sv")
      IMPORT
      INTEGER(GLshort), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glVertex4sv

    !  drawing-control  commands

    !  ClipPlane(plane, equation)
    !  return  void
    !  param   plane		ClipPlaneName in value
    !  param   equation	Float64 in array [4]
    SUBROUTINE glClipPlane(plane, equation) BIND(C,NAME="glClipPlane")
      IMPORT
      INTEGER(GLenum), VALUE :: plane
      REAL(GLdouble), DIMENSION(4), INTENT(IN) :: equation
    END SUBROUTINE glClipPlane

    !  ColorMaterial(face, mode)
    !  return  void
    !  param   face		MaterialFace in value
    !  param   mode		ColorMaterialParameter in value
    SUBROUTINE glColorMaterial(face, mode) BIND(C,NAME="glColorMaterial")
      IMPORT
      INTEGER(GLenum), VALUE :: face, mode
    END SUBROUTINE glColorMaterial

    !  CullFace(mode)
    !  return  void
    !  param   mode		CullFaceMode in value
    SUBROUTINE glCullFace(mode) BIND(C,NAME="glCullFace")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
    END SUBROUTINE glCullFace

    !  Fogf(pname, param)
    !  return  void
    !  param   pname		FogParameter in value
    !  param   param		CheckedFloat32 in value
    SUBROUTINE glFogf(pname, param) BIND(C,NAME="glFogf")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      REAL(GLfloat), VALUE :: param
    END SUBROUTINE glFogf

    !  Fogfv(pname, params)
    !  return  void
    !  param   pname		FogParameter in value
    !  param   params		CheckedFloat32 in array [COMPSIZE(pname)]
    SUBROUTINE glFogfv(pname, params) BIND(C,NAME="glFogfv")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      REAL(GLfloat), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glFogfv

    !  Fogi(pname, param)
    !  return  void
    !  param   pname		FogParameter in value
    !  param   param		CheckedInt32 in value
    SUBROUTINE glFogi(pname, param) BIND(C,NAME="glFogi")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      INTEGER(GLint), VALUE :: param
    END SUBROUTINE glFogi

    !  Fogiv(pname, params)
    !  return  void
    !  param   pname		FogParameter in value
    !  param   params		CheckedInt32 in array [COMPSIZE(pname)]
    SUBROUTINE glFogiv(pname, params) BIND(C,NAME="glFogiv")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      INTEGER(GLint), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glFogiv

    !  FrontFace(mode)
    !  return  void
    !  param   mode		FrontFaceDirection in value
    SUBROUTINE glFrontFace(mode) BIND(C,NAME="glFrontFace")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
    END SUBROUTINE glFrontFace

    !  Hint(target, mode)
    !  return  void
    !  param   target		HintTarget in value
    !  param   mode		HintMode in value
    SUBROUTINE glHint(target, mode) BIND(C,NAME="glHint")
      IMPORT
      INTEGER(GLenum), VALUE :: target, mode
    END SUBROUTINE glHint

    !  Lightf(light, pname, param)
    !  return  void
    !  param   light		LightName in value
    !  param   pname		LightParameter in value
    !  param   param		CheckedFloat32 in value
    SUBROUTINE glLightf(light, pname, param) BIND(C,NAME="glLightf")
      IMPORT
      INTEGER(GLenum), VALUE :: light, pname
      REAL(GLfloat), VALUE :: param
    END SUBROUTINE glLightf

    !  Lightfv(light, pname, params)
    !  return  void
    !  param   light		LightName in value
    !  param   pname		LightParameter in value
    !  param   params		CheckedFloat32 in array [COMPSIZE(pname)]
    SUBROUTINE glLightfv(light, pname, params) BIND(C,NAME="glLightfv")
      IMPORT
      INTEGER(GLenum), VALUE :: light, pname
      REAL(GLfloat), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glLightfv

    !  Lighti(light, pname, param)
    !  return  void
    !  param   light		LightName in value
    !  param   pname		LightParameter in value
    !  param   param		CheckedInt32 in value
    SUBROUTINE glLighti(light, pname, param) BIND(C,NAME="glLighti")
      IMPORT
      INTEGER(GLenum), VALUE :: light, pname
      INTEGER(GLint), VALUE :: param
    END SUBROUTINE glLighti

    !  Lightiv(light, pname, params)
    !  return  void
    !  param   light		LightName in value
    !  param   pname		LightParameter in value
    !  param   params		CheckedInt32 in array [COMPSIZE(pname)]
    SUBROUTINE glLightiv(light, pname, params) BIND(C,NAME="glLightiv")
      IMPORT
      INTEGER(GLenum), VALUE :: light, pname
      INTEGER(GLint), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glLightiv

    !  LightModelf(pname, param)
    !  return  void
    !  param   pname		LightModelParameter in value
    !  param   param		Float32 in value
    SUBROUTINE glLightModelf(pname, param) BIND(C,NAME="glLightModelf")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      REAL(GLfloat), VALUE :: param
    END SUBROUTINE glLightModelf

    !  LightModelfv(pname, params)
    !  return  void
    !  param   pname		LightModelParameter in value
    !  param   params		Float32 in array [COMPSIZE(pname)]
    SUBROUTINE glLightModelfv(pname, params) BIND(C,NAME="glLightModelfv")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      REAL(GLfloat), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glLightModelfv

    !  LightModeli(pname, param)
    !  return  void
    !  param   pname		LightModelParameter in value
    !  param   param		Int32 in value
    SUBROUTINE glLightModeli(pname, param) BIND(C,NAME="glLightModeli")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      INTEGER(GLint), VALUE :: param
    END SUBROUTINE glLightModeli

    !  LightModeliv(pname, params)
    !  return  void
    !  param   pname		LightModelParameter in value
    !  param   params		Int32 in array [COMPSIZE(pname)]
    SUBROUTINE glLightModeliv(pname, params) BIND(C,NAME="glLightModeliv")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      INTEGER(GLint), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glLightModeliv

    !  LineStipple(factor, pattern)
    !  return  void
    !  param   factor		CheckedInt32 in value
    !  param   pattern		LineStipple in value
    SUBROUTINE glLineStipple(factor, pattern) BIND(C,NAME="glLineStipple")
      IMPORT
      INTEGER(GLint), VALUE :: factor
      INTEGER(GLushort), VALUE :: pattern
    END SUBROUTINE glLineStipple

    !  LineWidth(width)
    !  return  void
    !  param   width		CheckedFloat32 in value
    SUBROUTINE glLineWidth(width) BIND(C,NAME="glLineWidth")
      IMPORT
      REAL(GLfloat), VALUE :: width
    END SUBROUTINE glLineWidth

    !  Materialf(face, pname, param)
    !  return  void
    !  param   face		MaterialFace in value
    !  param   pname		MaterialParameter in value
    !  param   param		CheckedFloat32 in value
    SUBROUTINE glMaterialf(face, pname, param) BIND(C,NAME="glMaterialf")
      IMPORT
      INTEGER(GLenum), VALUE :: face, pname
      REAL(GLfloat), VALUE :: param
    END SUBROUTINE glMaterialf

    !  Materialfv(face, pname, params)
    !  return  void
    !  param   face		MaterialFace in value
    !  param   pname		MaterialParameter in value
    !  param   params		CheckedFloat32 in array [COMPSIZE(pname)]
    SUBROUTINE glMaterialfv(face, pname, params) BIND(C,NAME="glMaterialfv")
      IMPORT
      INTEGER(GLenum), VALUE :: face, pname
      REAL(GLfloat), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glMaterialfv

    !  Materiali(face, pname, param)
    !  return  void
    !  param   face		MaterialFace in value
    !  param   pname		MaterialParameter in value
    !  param   param		CheckedInt32 in value
    SUBROUTINE glMateriali(face, pname, param) BIND(C,NAME="glMateriali")
      IMPORT
      INTEGER(GLenum), VALUE :: face, pname
      INTEGER(GLint), VALUE :: param
    END SUBROUTINE glMateriali

    !  Materialiv(face, pname, params)
    !  return  void
    !  param   face		MaterialFace in value
    !  param   pname		MaterialParameter in value
    !  param   params		CheckedInt32 in array [COMPSIZE(pname)]
    SUBROUTINE glMaterialiv(face, pname, params) BIND(C,NAME="glMaterialiv")
      IMPORT
      INTEGER(GLenum), VALUE :: face, pname
      INTEGER(GLint), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glMaterialiv

    !  PointSize(size)
    !  return  void
    !  param   size		CheckedFloat32 in value
    SUBROUTINE glPointSize(size) BIND(C,NAME="glPointSize")
      IMPORT
      REAL(GLfloat), VALUE :: size
    END SUBROUTINE glPointSize

    !  PolygonMode(face, mode)
    !  return  void
    !  param   face		MaterialFace in value
    !  param   mode		PolygonMode in value
    SUBROUTINE glPolygonMode(face, mode) BIND(C,NAME="glPolygonMode")
      IMPORT
      INTEGER(GLenum), VALUE :: face, mode
    END SUBROUTINE glPolygonMode

    !  PolygonStipple(mask)
    !  return  void
    !  param   mask		UInt8 in array [COMPSIZE()]
    SUBROUTINE glPolygonStipple(mask) BIND(C,NAME="glPolygonStipple")
      IMPORT
      INTEGER(GLbyte), DIMENSION(*), INTENT(IN) :: mask
    END SUBROUTINE glPolygonStipple

    !  Scissor(x, y, width, height)
    !  return  void
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    SUBROUTINE glScissor(x, y, width, height) BIND(C,NAME="glScissor")
      IMPORT
      INTEGER(GLint), VALUE :: x, y
      INTEGER(GLsizei), VALUE :: width, height
    END SUBROUTINE glScissor

    !  ShadeModel(mode)
    !  return  void
    !  param   mode		ShadingModel in value
    SUBROUTINE glShadeModel(mode) BIND(C,NAME="glShadeModel")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
    END SUBROUTINE glShadeModel

    !  TexParameterf(target, pname, param)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   pname		TextureParameterName in value
    !  param   param		CheckedFloat32 in value
    SUBROUTINE glTexParameterf(target, pname, param)                              &
        BIND(C,NAME="glTexParameterf")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), VALUE :: param
    END SUBROUTINE glTexParameterf

    !  TexParameterfv(target, pname, params)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   pname		TextureParameterName in value
    !  param   params		CheckedFloat32 in array [COMPSIZE(pname)]
    SUBROUTINE glTexParameterfv(target, pname, params)                            &
        BIND(C,NAME="glTexParameterfv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glTexParameterfv

    !  TexParameteri(target, pname, param)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   pname		TextureParameterName in value
    !  param   param		CheckedInt32 in value
    SUBROUTINE glTexParameteri(target, pname, param)                              &
        BIND(C,NAME="glTexParameteri")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), VALUE :: param
    END SUBROUTINE glTexParameteri

    !  TexParameteriv(target, pname, params)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   pname		TextureParameterName in value
    !  param   params		CheckedInt32 in array [COMPSIZE(pname)]
    SUBROUTINE glTexParameteriv(target, pname, params)                            &
        BIND(C,NAME="glTexParameteriv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glTexParameteriv

    !  TexImage1D(target, level, internalformat, width, border, format, type, pixels)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   internalformat	TextureComponentCount in value
    !  param   width		SizeI in value
    !  param   border		CheckedInt32 in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   pixels		Void in array [COMPSIZE(format/type/width)]
    SUBROUTINE glTexImage1D(target, level, internalformat, width, border,         &
        format, type, pixels) BIND(C,NAME="glTexImage1D")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      INTEGER(GLint), VALUE :: level, internalformat, border
      INTEGER(GLsizei), VALUE :: width
      TYPE(C_PTR), VALUE :: pixels
    END SUBROUTINE glTexImage1D

    !  TexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   internalformat	TextureComponentCount in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    !  param   border		CheckedInt32 in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   pixels		Void in array [COMPSIZE(format/type/width/height)]
    SUBROUTINE glTexImage2D(target, level, internalformat, width, height,         &
        border, format, type, pixels) BIND(C,NAME="glTexImage2D")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      INTEGER(GLint), VALUE :: level, internalformat, border
      INTEGER(GLsizei), VALUE :: width, height
      TYPE(C_PTR), VALUE :: pixels
    END SUBROUTINE glTexImage2D

    !  TexEnvf(target, pname, param)
    !  return  void
    !  param   target		TextureEnvTarget in value
    !  param   pname		TextureEnvParameter in value
    !  param   param		CheckedFloat32 in value
    SUBROUTINE glTexEnvf(target, pname, param) BIND(C,NAME="glTexEnvf")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), VALUE :: param
    END SUBROUTINE glTexEnvf

    !  TexEnvfv(target, pname, params)
    !  return  void
    !  param   target		TextureEnvTarget in value
    !  param   pname		TextureEnvParameter in value
    !  param   params		CheckedFloat32 in array [COMPSIZE(pname)]
    SUBROUTINE glTexEnvfv(target, pname, params) BIND(C,NAME="glTexEnvfv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glTexEnvfv

    !  TexEnvi(target, pname, param)
    !  return  void
    !  param   target		TextureEnvTarget in value
    !  param   pname		TextureEnvParameter in value
    !  param   param		CheckedInt32 in value
    SUBROUTINE glTexEnvi(target, pname, param) BIND(C,NAME="glTexEnvi")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), VALUE :: param
    END SUBROUTINE glTexEnvi

    !  TexEnviv(target, pname, params)
    !  return  void
    !  param   target		TextureEnvTarget in value
    !  param   pname		TextureEnvParameter in value
    !  param   params		CheckedInt32 in array [COMPSIZE(pname)]
    SUBROUTINE glTexEnviv(target, pname, params) BIND(C,NAME="glTexEnviv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glTexEnviv

    !  TexGend(coord, pname, param)
    !  return  void
    !  param   coord		TextureCoordName in value
    !  param   pname		TextureGenParameter in value
    !  param   param		Float64 in value
    SUBROUTINE glTexGend(coord, pname, param) BIND(C,NAME="glTexGend")
      IMPORT
      INTEGER(GLenum), VALUE :: coord, pname
      REAL(GLdouble), VALUE :: param
    END SUBROUTINE glTexGend

    !  TexGendv(coord, pname, params)
    !  return  void
    !  param   coord		TextureCoordName in value
    !  param   pname		TextureGenParameter in value
    !  param   params		Float64 in array [COMPSIZE(pname)]
    SUBROUTINE glTexGendv(coord, pname, params) BIND(C,NAME="glTexGendv")
      IMPORT
      INTEGER(GLenum), VALUE :: coord, pname
      REAL(GLdouble), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glTexGendv

    !  TexGenf(coord, pname, param)
    !  return  void
    !  param   coord		TextureCoordName in value
    !  param   pname		TextureGenParameter in value
    !  param   param		CheckedFloat32 in value
    SUBROUTINE glTexGenf(coord, pname, param) BIND(C,NAME="glTexGenf")
      IMPORT
      INTEGER(GLenum), VALUE :: coord, pname
      REAL(GLfloat), VALUE :: param
    END SUBROUTINE glTexGenf

    !  TexGenfv(coord, pname, params)
    !  return  void
    !  param   coord		TextureCoordName in value
    !  param   pname		TextureGenParameter in value
    !  param   params		CheckedFloat32 in array [COMPSIZE(pname)]
    SUBROUTINE glTexGenfv(coord, pname, params) BIND(C,NAME="glTexGenfv")
      IMPORT
      INTEGER(GLenum), VALUE :: coord, pname
      REAL(GLfloat), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glTexGenfv

    !  TexGeni(coord, pname, param)
    !  return  void
    !  param   coord		TextureCoordName in value
    !  param   pname		TextureGenParameter in value
    !  param   param		CheckedInt32 in value
    SUBROUTINE glTexGeni(coord, pname, param) BIND(C,NAME="glTexGeni")
      IMPORT
      INTEGER(GLenum), VALUE :: coord, pname
      INTEGER(GLint), VALUE :: param
    END SUBROUTINE glTexGeni

    !  TexGeniv(coord, pname, params)
    !  return  void
    !  param   coord		TextureCoordName in value
    !  param   pname		TextureGenParameter in value
    !  param   params		CheckedInt32 in array [COMPSIZE(pname)]
    SUBROUTINE glTexGeniv(coord, pname, params) BIND(C,NAME="glTexGeniv")
      IMPORT
      INTEGER(GLenum), VALUE :: coord, pname
      INTEGER(GLint), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glTexGeniv

    !  feedback  commands

    !  FeedbackBuffer(size, type, buffer)
    !  return  void
    !  param   size		SizeI in value
    !  param   type		FeedbackType in value
    !  param   buffer		FeedbackElement out array [size] retained
    SUBROUTINE glFeedbackBuffer(size, type, buffer)                               &
        BIND(C,NAME="glFeedbackBuffer")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLsizei), VALUE :: size
      TYPE(C_PTR), VALUE :: buffer
    END SUBROUTINE glFeedbackBuffer

    !  SelectBuffer(size, buffer)
    !  return  void
    !  param   size		SizeI in value
    !  param   buffer		SelectName out array [size] retained
    SUBROUTINE glSelectBuffer(size, buffer) BIND(C,NAME="glSelectBuffer")
      IMPORT
      INTEGER(GLsizei), VALUE :: size
      TYPE(C_PTR), VALUE :: buffer
    END SUBROUTINE glSelectBuffer

    !  RenderMode(mode)
    !  return  Int32
    !  param   mode		RenderingMode in value
    FUNCTION glRenderMode(mode) BIND(C,NAME="glRenderMode")
      IMPORT
      INTEGER(GLint) :: glRenderMode
      INTEGER(GLenum), VALUE :: mode
    END FUNCTION glRenderMode

    !  InitNames()
    !  return  void
    SUBROUTINE glInitNames() BIND(C,NAME="glInitNames")
      IMPORT
    END SUBROUTINE glInitNames

    !  LoadName(name)
    !  return  void
    !  param   name		SelectName in value
    SUBROUTINE glLoadName(name) BIND(C,NAME="glLoadName")
      IMPORT
      INTEGER(GLuint), VALUE :: name
    END SUBROUTINE glLoadName

    !  PassThrough(token)
    !  return  void
    !  param   token		FeedbackElement in value
    SUBROUTINE glPassThrough(token) BIND(C,NAME="glPassThrough")
      IMPORT
      REAL(GLfloat), VALUE :: token
    END SUBROUTINE glPassThrough

    !  PopName()
    !  return  void
    SUBROUTINE glPopName() BIND(C,NAME="glPopName")
      IMPORT
    END SUBROUTINE glPopName

    !  PushName(name)
    !  return  void
    !  param   name		SelectName in value
    SUBROUTINE glPushName(name) BIND(C,NAME="glPushName")
      IMPORT
      INTEGER(GLuint), VALUE :: name
    END SUBROUTINE glPushName

    !  framebuf  commands

    !  DrawBuffer(mode)
    !  return  void
    !  param   mode		DrawBufferMode in value
    SUBROUTINE glDrawBuffer(mode) BIND(C,NAME="glDrawBuffer")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
    END SUBROUTINE glDrawBuffer

    !  Clear(mask)
    !  return  void
    !  param   mask		ClearBufferMask in value
    SUBROUTINE glClear(mask) BIND(C,NAME="glClear")
      IMPORT
      INTEGER(GLbitfield), VALUE :: mask
    END SUBROUTINE glClear

    !  ClearAccum(red, green, blue, alpha)
    !  return  void
    !  param   red		Float32 in value
    !  param   green		Float32 in value
    !  param   blue		Float32 in value
    !  param   alpha		Float32 in value
    SUBROUTINE glClearAccum(red, green, blue, alpha)                              &
        BIND(C,NAME="glClearAccum")
      IMPORT
      REAL(GLfloat), VALUE :: red, green, blue, alpha
    END SUBROUTINE glClearAccum

    !  ClearIndex(c)
    !  return  void
    !  param   c		MaskedColorIndexValueF in value
    SUBROUTINE glClearIndex(c) BIND(C,NAME="glClearIndex")
      IMPORT
      REAL(GLfloat), VALUE :: c
    END SUBROUTINE glClearIndex

    !  ClearColor(red, green, blue, alpha)
    !  return  void
    !  param   red		ClampedColorF in value
    !  param   green		ClampedColorF in value
    !  param   blue		ClampedColorF in value
    !  param   alpha		ClampedColorF in value
    SUBROUTINE glClearColor(red, green, blue, alpha)                              &
        BIND(C,NAME="glClearColor")
      IMPORT
      REAL(GLclampf), VALUE :: red, green, blue, alpha
    END SUBROUTINE glClearColor

    !  ClearStencil(s)
    !  return  void
    !  param   s		StencilValue in value
    SUBROUTINE glClearStencil(s) BIND(C,NAME="glClearStencil")
      IMPORT
      INTEGER(GLint), VALUE :: s
    END SUBROUTINE glClearStencil

    !  ClearDepth(depth)
    !  return  void
    !  param   depth		ClampedFloat64 in value
    SUBROUTINE glClearDepth(depth) BIND(C,NAME="glClearDepth")
      IMPORT
      REAL(GLclampd), VALUE :: depth
    END SUBROUTINE glClearDepth

    !  StencilMask(mask)
    !  return  void
    !  param   mask		MaskedStencilValue in value
    SUBROUTINE glStencilMask(mask) BIND(C,NAME="glStencilMask")
      IMPORT
      INTEGER(GLuint), VALUE :: mask
    END SUBROUTINE glStencilMask

    !  ColorMask(red, green, blue, alpha)
    !  return  void
    !  param   red		Boolean in value
    !  param   green		Boolean in value
    !  param   blue		Boolean in value
    !  param   alpha		Boolean in value
    SUBROUTINE glColorMask(red, green, blue, alpha) BIND(C,NAME="glColorMask")
      IMPORT
      INTEGER(GLboolean), VALUE :: red, green, blue, alpha
    END SUBROUTINE glColorMask

    !  DepthMask(flag)
    !  return  void
    !  param   flag		Boolean in value
    SUBROUTINE glDepthMask(flag) BIND(C,NAME="glDepthMask")
      IMPORT
      INTEGER(GLboolean), VALUE :: flag
    END SUBROUTINE glDepthMask

    !  IndexMask(mask)
    !  return  void
    !  param   mask		MaskedColorIndexValueI in value
    SUBROUTINE glIndexMask(mask) BIND(C,NAME="glIndexMask")
      IMPORT
      INTEGER(GLuint), VALUE :: mask
    END SUBROUTINE glIndexMask

    !  misc  commands

    !  Accum(op, value)
    !  return  void
    !  param   op		AccumOp in value
    !  param   value		CoordF in value
    SUBROUTINE glAccum(op, value) BIND(C,NAME="glAccum")
      IMPORT
      INTEGER(GLenum), VALUE :: op
      REAL(GLfloat), VALUE :: value
    END SUBROUTINE glAccum

    !  Disable(cap)
    !  return  void
    !  param   cap		EnableCap in value
    SUBROUTINE glDisable(cap) BIND(C,NAME="glDisable")
      IMPORT
      INTEGER(GLenum), VALUE :: cap
    END SUBROUTINE glDisable

    !  Enable(cap)
    !  return  void
    !  param   cap		EnableCap in value
    SUBROUTINE glEnable(cap) BIND(C,NAME="glEnable")
      IMPORT
      INTEGER(GLenum), VALUE :: cap
    END SUBROUTINE glEnable

    !  Finish()
    !  return  void
    SUBROUTINE glFinish() BIND(C,NAME="glFinish")
      IMPORT
    END SUBROUTINE glFinish

    !  Flush()
    !  return  void
    SUBROUTINE glFlush() BIND(C,NAME="glFlush")
      IMPORT
    END SUBROUTINE glFlush

    !  PopAttrib()
    !  return  void
    SUBROUTINE glPopAttrib() BIND(C,NAME="glPopAttrib")
      IMPORT
    END SUBROUTINE glPopAttrib

    !  PushAttrib(mask)
    !  return  void
    !  param   mask		AttribMask in value
    SUBROUTINE glPushAttrib(mask) BIND(C,NAME="glPushAttrib")
      IMPORT
      INTEGER(GLbitfield), VALUE :: mask
    END SUBROUTINE glPushAttrib

    !  modeling  commands

    !  Map1d(target, u1, u2, stride, order, points)
    !  return  void
    !  param   target		MapTarget in value
    !  param   u1		CoordD in value
    !  param   u2		CoordD in value
    !  param   stride		Int32 in value
    !  param   order		CheckedInt32 in value
    !  param   points		CoordD in array [COMPSIZE(target/stride/order)]
    SUBROUTINE glMap1d(target, u1, u2, stride, order, points)                     &
        BIND(C,NAME="glMap1d")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: stride, order
      REAL(GLdouble), VALUE :: u1, u2
      REAL(GLdouble), DIMENSION(*), INTENT(IN) :: points
    END SUBROUTINE glMap1d

    !  Map1f(target, u1, u2, stride, order, points)
    !  return  void
    !  param   target		MapTarget in value
    !  param   u1		CoordF in value
    !  param   u2		CoordF in value
    !  param   stride		Int32 in value
    !  param   order		CheckedInt32 in value
    !  param   points		CoordF in array [COMPSIZE(target/stride/order)]
    SUBROUTINE glMap1f(target, u1, u2, stride, order, points)                     &
        BIND(C,NAME="glMap1f")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: stride, order
      REAL(GLfloat), VALUE :: u1, u2
      REAL(GLfloat), DIMENSION(*), INTENT(IN) :: points
    END SUBROUTINE glMap1f

    !  Map2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points)
    !  return  void
    !  param   target		MapTarget in value
    !  param   u1		CoordD in value
    !  param   u2		CoordD in value
    !  param   ustride		Int32 in value
    !  param   uorder		CheckedInt32 in value
    !  param   v1		CoordD in value
    !  param   v2		CoordD in value
    !  param   vstride		Int32 in value
    !  param   vorder		CheckedInt32 in value
    !  param   points		CoordD in array [COMPSIZE(target/ustride/uorder/vstride/vorder)]
    SUBROUTINE glMap2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder,  &
        points) BIND(C,NAME="glMap2d")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: ustride, uorder, vstride, vorder
      REAL(GLdouble), VALUE :: u1, u2, v1, v2
      REAL(GLdouble), DIMENSION(*), INTENT(IN) :: points
    END SUBROUTINE glMap2d

    !  Map2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points)
    !  return  void
    !  param   target		MapTarget in value
    !  param   u1		CoordF in value
    !  param   u2		CoordF in value
    !  param   ustride		Int32 in value
    !  param   uorder		CheckedInt32 in value
    !  param   v1		CoordF in value
    !  param   v2		CoordF in value
    !  param   vstride		Int32 in value
    !  param   vorder		CheckedInt32 in value
    !  param   points		CoordF in array [COMPSIZE(target/ustride/uorder/vstride/vorder)]
    SUBROUTINE glMap2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder,  &
        points) BIND(C,NAME="glMap2f")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: ustride, uorder, vstride, vorder
      REAL(GLfloat), VALUE :: u1, u2, v1, v2
      REAL(GLfloat), DIMENSION(*), INTENT(IN) :: points
    END SUBROUTINE glMap2f

    !  MapGrid1d(un, u1, u2)
    !  return  void
    !  param   un		Int32 in value
    !  param   u1		CoordD in value
    !  param   u2		CoordD in value
    SUBROUTINE glMapGrid1d(un, u1, u2) BIND(C,NAME="glMapGrid1d")
      IMPORT
      INTEGER(GLint), VALUE :: un
      REAL(GLdouble), VALUE :: u1, u2
    END SUBROUTINE glMapGrid1d

    !  MapGrid1f(un, u1, u2)
    !  return  void
    !  param   un		Int32 in value
    !  param   u1		CoordF in value
    !  param   u2		CoordF in value
    SUBROUTINE glMapGrid1f(un, u1, u2) BIND(C,NAME="glMapGrid1f")
      IMPORT
      INTEGER(GLint), VALUE :: un
      REAL(GLfloat), VALUE :: u1, u2
    END SUBROUTINE glMapGrid1f

    !  MapGrid2d(un, u1, u2, vn, v1, v2)
    !  return  void
    !  param   un		Int32 in value
    !  param   u1		CoordD in value
    !  param   u2		CoordD in value
    !  param   vn		Int32 in value
    !  param   v1		CoordD in value
    !  param   v2		CoordD in value
    SUBROUTINE glMapGrid2d(un, u1, u2, vn, v1, v2) BIND(C,NAME="glMapGrid2d")
      IMPORT
      INTEGER(GLint), VALUE :: un, vn
      REAL(GLdouble), VALUE :: u1, u2, v1, v2
    END SUBROUTINE glMapGrid2d

    !  MapGrid2f(un, u1, u2, vn, v1, v2)
    !  return  void
    !  param   un		Int32 in value
    !  param   u1		CoordF in value
    !  param   u2		CoordF in value
    !  param   vn		Int32 in value
    !  param   v1		CoordF in value
    !  param   v2		CoordF in value
    SUBROUTINE glMapGrid2f(un, u1, u2, vn, v1, v2) BIND(C,NAME="glMapGrid2f")
      IMPORT
      INTEGER(GLint), VALUE :: un, vn
      REAL(GLfloat), VALUE :: u1, u2, v1, v2
    END SUBROUTINE glMapGrid2f

    !  EvalCoord1d(u)
    !  return  void
    !  param   u		CoordD in value
    SUBROUTINE glEvalCoord1d(u) BIND(C,NAME="glEvalCoord1d")
      IMPORT
      REAL(GLdouble), VALUE :: u
    END SUBROUTINE glEvalCoord1d

    !  EvalCoord1dv(u)
    !  return  void
    !  param   u		CoordD in array [1]
    SUBROUTINE glEvalCoord1dv(u) BIND(C,NAME="glEvalCoord1dv")
      IMPORT
      REAL(GLdouble), INTENT(IN) :: u
    END SUBROUTINE glEvalCoord1dv

    !  EvalCoord1f(u)
    !  return  void
    !  param   u		CoordF in value
    SUBROUTINE glEvalCoord1f(u) BIND(C,NAME="glEvalCoord1f")
      IMPORT
      REAL(GLfloat), VALUE :: u
    END SUBROUTINE glEvalCoord1f

    !  EvalCoord1fv(u)
    !  return  void
    !  param   u		CoordF in array [1]
    SUBROUTINE glEvalCoord1fv(u) BIND(C,NAME="glEvalCoord1fv")
      IMPORT
      REAL(GLfloat), INTENT(IN) :: u
    END SUBROUTINE glEvalCoord1fv

    !  EvalCoord2d(u, v)
    !  return  void
    !  param   u		CoordD in value
    !  param   v		CoordD in value
    SUBROUTINE glEvalCoord2d(u, v) BIND(C,NAME="glEvalCoord2d")
      IMPORT
      REAL(GLdouble), VALUE :: u, v
    END SUBROUTINE glEvalCoord2d

    !  EvalCoord2dv(u)
    !  return  void
    !  param   u		CoordD in array [2]
    SUBROUTINE glEvalCoord2dv(u) BIND(C,NAME="glEvalCoord2dv")
      IMPORT
      REAL(GLdouble), DIMENSION(2), INTENT(IN) :: u
    END SUBROUTINE glEvalCoord2dv

    !  EvalCoord2f(u, v)
    !  return  void
    !  param   u		CoordF in value
    !  param   v		CoordF in value
    SUBROUTINE glEvalCoord2f(u, v) BIND(C,NAME="glEvalCoord2f")
      IMPORT
      REAL(GLfloat), VALUE :: u, v
    END SUBROUTINE glEvalCoord2f

    !  EvalCoord2fv(u)
    !  return  void
    !  param   u		CoordF in array [2]
    SUBROUTINE glEvalCoord2fv(u) BIND(C,NAME="glEvalCoord2fv")
      IMPORT
      REAL(GLfloat), DIMENSION(2), INTENT(IN) :: u
    END SUBROUTINE glEvalCoord2fv

    !  EvalMesh1(mode, i1, i2)
    !  return  void
    !  param   mode		MeshMode1 in value
    !  param   i1		CheckedInt32 in value
    !  param   i2		CheckedInt32 in value
    SUBROUTINE glEvalMesh1(mode, i1, i2) BIND(C,NAME="glEvalMesh1")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
      INTEGER(GLint), VALUE :: i1, i2
    END SUBROUTINE glEvalMesh1

    !  EvalPoint1(i)
    !  return  void
    !  param   i		Int32 in value
    SUBROUTINE glEvalPoint1(i) BIND(C,NAME="glEvalPoint1")
      IMPORT
      INTEGER(GLint), VALUE :: i
    END SUBROUTINE glEvalPoint1

    !  EvalMesh2(mode, i1, i2, j1, j2)
    !  return  void
    !  param   mode		MeshMode2 in value
    !  param   i1		CheckedInt32 in value
    !  param   i2		CheckedInt32 in value
    !  param   j1		CheckedInt32 in value
    !  param   j2		CheckedInt32 in value
    SUBROUTINE glEvalMesh2(mode, i1, i2, j1, j2) BIND(C,NAME="glEvalMesh2")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
      INTEGER(GLint), VALUE :: i1, i2, j1, j2
    END SUBROUTINE glEvalMesh2

    !  EvalPoint2(i, j)
    !  return  void
    !  param   i		CheckedInt32 in value
    !  param   j		CheckedInt32 in value
    SUBROUTINE glEvalPoint2(i, j) BIND(C,NAME="glEvalPoint2")
      IMPORT
      INTEGER(GLint), VALUE :: i, j
    END SUBROUTINE glEvalPoint2

    !  pixel-op  commands

    !  AlphaFunc(func, ref)
    !  return  void
    !  param   func		AlphaFunction in value
    !  param   ref		ClampedFloat32 in value
    SUBROUTINE glAlphaFunc(func, ref) BIND(C,NAME="glAlphaFunc")
      IMPORT
      INTEGER(GLenum), VALUE :: func
      REAL(GLclampf), VALUE :: ref
    END SUBROUTINE glAlphaFunc

    !  BlendFunc(sfactor, dfactor)
    !  return  void
    !  param   sfactor		BlendingFactorSrc in value
    !  param   dfactor		BlendingFactorDest in value
    SUBROUTINE glBlendFunc(sfactor, dfactor) BIND(C,NAME="glBlendFunc")
      IMPORT
      INTEGER(GLenum), VALUE :: sfactor, dfactor
    END SUBROUTINE glBlendFunc

    !  LogicOp(opcode)
    !  return  void
    !  param   opcode		LogicOp in value
    SUBROUTINE glLogicOp(opcode) BIND(C,NAME="glLogicOp")
      IMPORT
      INTEGER(GLenum), VALUE :: opcode
    END SUBROUTINE glLogicOp

    !  StencilFunc(func, ref, mask)
    !  return  void
    !  param   func		StencilFunction in value
    !  param   ref		ClampedStencilValue in value
    !  param   mask		MaskedStencilValue in value
    SUBROUTINE glStencilFunc(func, ref, mask) BIND(C,NAME="glStencilFunc")
      IMPORT
      INTEGER(GLenum), VALUE :: func
      INTEGER(GLint), VALUE :: ref
      INTEGER(GLuint), VALUE :: mask
    END SUBROUTINE glStencilFunc

    !  StencilOp(fail, zfail, zpass)
    !  return  void
    !  param   fail		StencilOp in value
    !  param   zfail		StencilOp in value
    !  param   zpass		StencilOp in value
    SUBROUTINE glStencilOp(fail, zfail, zpass) BIND(C,NAME="glStencilOp")
      IMPORT
      INTEGER(GLenum), VALUE :: fail, zfail, zpass
    END SUBROUTINE glStencilOp

    !  DepthFunc(func)
    !  return  void
    !  param   func		DepthFunction in value
    SUBROUTINE glDepthFunc(func) BIND(C,NAME="glDepthFunc")
      IMPORT
      INTEGER(GLenum), VALUE :: func
    END SUBROUTINE glDepthFunc

    !  pixel-rw  commands

    !  PixelZoom(xfactor, yfactor)
    !  return  void
    !  param   xfactor		Float32 in value
    !  param   yfactor		Float32 in value
    SUBROUTINE glPixelZoom(xfactor, yfactor) BIND(C,NAME="glPixelZoom")
      IMPORT
      REAL(GLfloat), VALUE :: xfactor, yfactor
    END SUBROUTINE glPixelZoom

    !  PixelTransferf(pname, param)
    !  return  void
    !  param   pname		PixelTransferParameter in value
    !  param   param		CheckedFloat32 in value
    SUBROUTINE glPixelTransferf(pname, param) BIND(C,NAME="glPixelTransferf")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      REAL(GLfloat), VALUE :: param
    END SUBROUTINE glPixelTransferf

    !  PixelTransferi(pname, param)
    !  return  void
    !  param   pname		PixelTransferParameter in value
    !  param   param		CheckedInt32 in value
    SUBROUTINE glPixelTransferi(pname, param) BIND(C,NAME="glPixelTransferi")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      INTEGER(GLint), VALUE :: param
    END SUBROUTINE glPixelTransferi

    !  PixelStoref(pname, param)
    !  return  void
    !  param   pname		PixelStoreParameter in value
    !  param   param		CheckedFloat32 in value
    SUBROUTINE glPixelStoref(pname, param) BIND(C,NAME="glPixelStoref")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      REAL(GLfloat), VALUE :: param
    END SUBROUTINE glPixelStoref

    !  PixelStorei(pname, param)
    !  return  void
    !  param   pname		PixelStoreParameter in value
    !  param   param		CheckedInt32 in value
    SUBROUTINE glPixelStorei(pname, param) BIND(C,NAME="glPixelStorei")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      INTEGER(GLint), VALUE :: param
    END SUBROUTINE glPixelStorei

    !  PixelMapfv(map, mapsize, values)
    !  return  void
    !  param   map		PixelMap in value
    !  param   mapsize		CheckedInt32 in value
    !  param   values		Float32 in array [mapsize]
    SUBROUTINE glPixelMapfv(map, mapsize, values) BIND(C,NAME="glPixelMapfv")
      IMPORT
      INTEGER(GLenum), VALUE :: map
      INTEGER(GLint), VALUE :: mapsize
      REAL(GLfloat), DIMENSION(mapsize), INTENT(IN) :: values
    END SUBROUTINE glPixelMapfv

    !  PixelMapuiv(map, mapsize, values)
    !  return  void
    !  param   map		PixelMap in value
    !  param   mapsize		CheckedInt32 in value
    !  param   values		UInt32 in array [mapsize]
    SUBROUTINE glPixelMapuiv(map, mapsize, values) BIND(C,NAME="glPixelMapuiv")
      IMPORT
      INTEGER(GLenum), VALUE :: map
      INTEGER(GLint), VALUE :: mapsize
      INTEGER(GLint), DIMENSION(mapsize), INTENT(IN) :: values
    END SUBROUTINE glPixelMapuiv

    !  PixelMapusv(map, mapsize, values)
    !  return  void
    !  param   map		PixelMap in value
    !  param   mapsize		CheckedInt32 in value
    !  param   values		UInt16 in array [mapsize]
    SUBROUTINE glPixelMapusv(map, mapsize, values) BIND(C,NAME="glPixelMapusv")
      IMPORT
      INTEGER(GLenum), VALUE :: map
      INTEGER(GLint), VALUE :: mapsize
      INTEGER(GLshort), DIMENSION(mapsize), INTENT(IN) :: values
    END SUBROUTINE glPixelMapusv

    !  ReadBuffer(mode)
    !  return  void
    !  param   mode		ReadBufferMode in value
    SUBROUTINE glReadBuffer(mode) BIND(C,NAME="glReadBuffer")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
    END SUBROUTINE glReadBuffer

    !  CopyPixels(x, y, width, height, type)
    !  return  void
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    !  param   type		PixelCopyType in value
    SUBROUTINE glCopyPixels(x, y, width, height, type)                            &
        BIND(C,NAME="glCopyPixels")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLint), VALUE :: x, y
      INTEGER(GLsizei), VALUE :: width, height
    END SUBROUTINE glCopyPixels

    !  ReadPixels(x, y, width, height, format, type, pixels)
    !  return  void
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   pixels		Void out array [COMPSIZE(format/type/width/height)]
    SUBROUTINE glReadPixels(x, y, width, height, format, type, pixels)            &
        BIND(C,NAME="glReadPixels")
      IMPORT
      INTEGER(GLenum), VALUE :: format, type
      INTEGER(GLint), VALUE :: x, y
      INTEGER(GLsizei), VALUE :: width, height
      TYPE(C_PTR), VALUE :: pixels
    END SUBROUTINE glReadPixels

    !  DrawPixels(width, height, format, type, pixels)
    !  return  void
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   pixels		Void in array [COMPSIZE(format/type/width/height)]
    SUBROUTINE glDrawPixels(width, height, format, type, pixels)                  &
        BIND(C,NAME="glDrawPixels")
      IMPORT
      INTEGER(GLenum), VALUE :: format, type
      INTEGER(GLsizei), VALUE :: width, height
      TYPE(C_PTR), VALUE :: pixels
    END SUBROUTINE glDrawPixels

    !  state-req  commands

    !  GetBooleanv(pname, params)
    !  return  void
    !  param   pname		GetPName in value
    !  param   params		Boolean out array [COMPSIZE(pname)]
    SUBROUTINE glGetBooleanv(pname, params) BIND(C,NAME="glGetBooleanv")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      INTEGER(GLboolean), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetBooleanv

    !  GetClipPlane(plane, equation)
    !  return  void
    !  param   plane		ClipPlaneName in value
    !  param   equation	Float64 out array [4]
    SUBROUTINE glGetClipPlane(plane, equation) BIND(C,NAME="glGetClipPlane")
      IMPORT
      INTEGER(GLenum), VALUE :: plane
      REAL(GLdouble), DIMENSION(4), INTENT(OUT) :: equation
    END SUBROUTINE glGetClipPlane

    !  GetDoublev(pname, params)
    !  return  void
    !  param   pname		GetPName in value
    !  param   params		Float64 out array [COMPSIZE(pname)]
    SUBROUTINE glGetDoublev(pname, params) BIND(C,NAME="glGetDoublev")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      REAL(GLdouble), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetDoublev

    !  GetError()
    !  return  ErrorCode
    FUNCTION glGetError() BIND(C,NAME="glGetError")
      IMPORT
      INTEGER(GLenum) :: glGetError
    END FUNCTION glGetError

    !  GetFloatv(pname, params)
    !  return  void
    !  param   pname		GetPName in value
    !  param   params		Float32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetFloatv(pname, params) BIND(C,NAME="glGetFloatv")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetFloatv

    !  GetIntegerv(pname, params)
    !  return  void
    !  param   pname		GetPName in value
    !  param   params		Int32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetIntegerv(pname, params) BIND(C,NAME="glGetIntegerv")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetIntegerv

    !  GetLightfv(light, pname, params)
    !  return  void
    !  param   light		LightName in value
    !  param   pname		LightParameter in value
    !  param   params		Float32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetLightfv(light, pname, params) BIND(C,NAME="glGetLightfv")
      IMPORT
      INTEGER(GLenum), VALUE :: light, pname
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetLightfv

    !  GetLightiv(light, pname, params)
    !  return  void
    !  param   light		LightName in value
    !  param   pname		LightParameter in value
    !  param   params		Int32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetLightiv(light, pname, params) BIND(C,NAME="glGetLightiv")
      IMPORT
      INTEGER(GLenum), VALUE :: light, pname
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetLightiv

    !  GetMapdv(target, query, v)
    !  return  void
    !  param   target		MapTarget in value
    !  param   query		GetMapQuery in value
    !  param   v		Float64 out array [COMPSIZE(target/query)]
    SUBROUTINE glGetMapdv(target, query, v) BIND(C,NAME="glGetMapdv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, query
      REAL(GLdouble), DIMENSION(*), INTENT(OUT) :: v
    END SUBROUTINE glGetMapdv

    !  GetMapfv(target, query, v)
    !  return  void
    !  param   target		MapTarget in value
    !  param   query		GetMapQuery in value
    !  param   v		Float32 out array [COMPSIZE(target/query)]
    SUBROUTINE glGetMapfv(target, query, v) BIND(C,NAME="glGetMapfv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, query
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: v
    END SUBROUTINE glGetMapfv

    !  GetMapiv(target, query, v)
    !  return  void
    !  param   target		MapTarget in value
    !  param   query		GetMapQuery in value
    !  param   v		Int32 out array [COMPSIZE(target/query)]
    SUBROUTINE glGetMapiv(target, query, v) BIND(C,NAME="glGetMapiv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, query
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: v
    END SUBROUTINE glGetMapiv

    !  GetMaterialfv(face, pname, params)
    !  return  void
    !  param   face		MaterialFace in value
    !  param   pname		MaterialParameter in value
    !  param   params		Float32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetMaterialfv(face, pname, params)                               &
        BIND(C,NAME="glGetMaterialfv")
      IMPORT
      INTEGER(GLenum), VALUE :: face, pname
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetMaterialfv

    !  GetMaterialiv(face, pname, params)
    !  return  void
    !  param   face		MaterialFace in value
    !  param   pname		MaterialParameter in value
    !  param   params		Int32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetMaterialiv(face, pname, params)                               &
        BIND(C,NAME="glGetMaterialiv")
      IMPORT
      INTEGER(GLenum), VALUE :: face, pname
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetMaterialiv

    !  GetPixelMapfv(map, values)
    !  return  void
    !  param   map		PixelMap in value
    !  param   values		Float32 out array [COMPSIZE(map)]
    SUBROUTINE glGetPixelMapfv(map, values) BIND(C,NAME="glGetPixelMapfv")
      IMPORT
      INTEGER(GLenum), VALUE :: map
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: values
    END SUBROUTINE glGetPixelMapfv

    !  GetPixelMapuiv(map, values)
    !  return  void
    !  param   map		PixelMap in value
    !  param   values		UInt32 out array [COMPSIZE(map)]
    SUBROUTINE glGetPixelMapuiv(map, values) BIND(C,NAME="glGetPixelMapuiv")
      IMPORT
      INTEGER(GLenum), VALUE :: map
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: values
    END SUBROUTINE glGetPixelMapuiv

    !  GetPixelMapusv(map, values)
    !  return  void
    !  param   map		PixelMap in value
    !  param   values		UInt16 out array [COMPSIZE(map)]
    SUBROUTINE glGetPixelMapusv(map, values) BIND(C,NAME="glGetPixelMapusv")
      IMPORT
      INTEGER(GLenum), VALUE :: map
      INTEGER(GLshort), DIMENSION(*), INTENT(OUT) :: values
    END SUBROUTINE glGetPixelMapusv

    !  GetPolygonStipple(mask)
    !  return  void
    !  param   mask		UInt8 out array [COMPSIZE()]
    SUBROUTINE glGetPolygonStipple(mask) BIND(C,NAME="glGetPolygonStipple")
      IMPORT
      INTEGER(GLbyte), DIMENSION(*), INTENT(OUT) :: mask
    END SUBROUTINE glGetPolygonStipple

    !  GetString(name)
    !  return  String
    !  param   name		StringName in value
    FUNCTION glGetString(name) BIND(C,NAME="glGetString")
      IMPORT
      TYPE(C_PTR) :: glGetString
      INTEGER(GLenum), VALUE :: name
    END FUNCTION glGetString

    !  GetTexEnvfv(target, pname, params)
    !  return  void
    !  param   target		TextureEnvTarget in value
    !  param   pname		TextureEnvParameter in value
    !  param   params		Float32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetTexEnvfv(target, pname, params)                               &
        BIND(C,NAME="glGetTexEnvfv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetTexEnvfv

    !  GetTexEnviv(target, pname, params)
    !  return  void
    !  param   target		TextureEnvTarget in value
    !  param   pname		TextureEnvParameter in value
    !  param   params		Int32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetTexEnviv(target, pname, params)                               &
        BIND(C,NAME="glGetTexEnviv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetTexEnviv

    !  GetTexGendv(coord, pname, params)
    !  return  void
    !  param   coord		TextureCoordName in value
    !  param   pname		TextureGenParameter in value
    !  param   params		Float64 out array [COMPSIZE(pname)]
    SUBROUTINE glGetTexGendv(coord, pname, params) BIND(C,NAME="glGetTexGendv")
      IMPORT
      INTEGER(GLenum), VALUE :: coord, pname
      REAL(GLdouble), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetTexGendv

    !  GetTexGenfv(coord, pname, params)
    !  return  void
    !  param   coord		TextureCoordName in value
    !  param   pname		TextureGenParameter in value
    !  param   params		Float32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetTexGenfv(coord, pname, params) BIND(C,NAME="glGetTexGenfv")
      IMPORT
      INTEGER(GLenum), VALUE :: coord, pname
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetTexGenfv

    !  GetTexGeniv(coord, pname, params)
    !  return  void
    !  param   coord		TextureCoordName in value
    !  param   pname		TextureGenParameter in value
    !  param   params		Int32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetTexGeniv(coord, pname, params) BIND(C,NAME="glGetTexGeniv")
      IMPORT
      INTEGER(GLenum), VALUE :: coord, pname
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetTexGeniv

    !  GetTexImage(target, level, format, type, pixels)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   pixels		Void out array [COMPSIZE(target/level/format/type)]
    SUBROUTINE glGetTexImage(target, level, format, type, pixels)                 &
        BIND(C,NAME="glGetTexImage")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      INTEGER(GLint), VALUE :: level
      TYPE(C_PTR), VALUE :: pixels
    END SUBROUTINE glGetTexImage

    !  GetTexParameterfv(target, pname, params)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   pname		GetTextureParameter in value
    !  param   params		Float32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetTexParameterfv(target, pname, params)                         &
        BIND(C,NAME="glGetTexParameterfv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetTexParameterfv

    !  GetTexParameteriv(target, pname, params)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   pname		GetTextureParameter in value
    !  param   params		Int32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetTexParameteriv(target, pname, params)                         &
        BIND(C,NAME="glGetTexParameteriv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetTexParameteriv

    !  GetTexLevelParameterfv(target, level, pname, params)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   pname		GetTextureParameter in value
    !  param   params		Float32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetTexLevelParameterfv(target, level, pname, params)             &
        BIND(C,NAME="glGetTexLevelParameterfv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), VALUE :: level
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetTexLevelParameterfv

    !  GetTexLevelParameteriv(target, level, pname, params)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   pname		GetTextureParameter in value
    !  param   params		Int32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetTexLevelParameteriv(target, level, pname, params)             &
        BIND(C,NAME="glGetTexLevelParameteriv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), VALUE :: level
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetTexLevelParameteriv

    !  IsEnabled(cap)
    !  return  Boolean
    !  param   cap		EnableCap in value
    FUNCTION glIsEnabled(cap) BIND(C,NAME="glIsEnabled")
      IMPORT
      INTEGER(GLboolean) :: glIsEnabled
      INTEGER(GLenum), VALUE :: cap
    END FUNCTION glIsEnabled

    !  IsList(list)
    !  return  Boolean
    !  param   list		List in value
    FUNCTION glIsList(list) BIND(C,NAME="glIsList")
      IMPORT
      INTEGER(GLboolean) :: glIsList
      INTEGER(GLint), VALUE :: list
    END FUNCTION glIsList

    !  xform  commands

    !  DepthRange(zNear, zFar)
    !  return  void
    !  param   zNear		ClampedFloat64 in value
    !  param   zFar		ClampedFloat64 in value
    SUBROUTINE glDepthRange(zNear, zFar) BIND(C,NAME="glDepthRange")
      IMPORT
      REAL(GLclampd), VALUE :: zNear, zFar
    END SUBROUTINE glDepthRange

    !  Frustum(left, right, bottom, top, zNear, zFar)
    !  return  void
    !  param   left		Float64 in value
    !  param   right		Float64 in value
    !  param   bottom		Float64 in value
    !  param   top		Float64 in value
    !  param   zNear		Float64 in value
    !  param   zFar		Float64 in value
    SUBROUTINE glFrustum(left, right, bottom, top, zNear, zFar)                   &
        BIND(C,NAME="glFrustum")
      IMPORT
      REAL(GLdouble), VALUE :: left, right, bottom, top, zNear, zFar
    END SUBROUTINE glFrustum

    !  LoadIdentity()
    !  return  void
    SUBROUTINE glLoadIdentity() BIND(C,NAME="glLoadIdentity")
      IMPORT
    END SUBROUTINE glLoadIdentity

    !  LoadMatrixf(m)
    !  return  void
    !  param   m		Float32 in array [16]
    SUBROUTINE glLoadMatrixf(m) BIND(C,NAME="glLoadMatrixf")
      IMPORT
      REAL(GLfloat), DIMENSION(16), INTENT(IN) :: m
    END SUBROUTINE glLoadMatrixf

    !  LoadMatrixd(m)
    !  return  void
    !  param   m		Float64 in array [16]
    SUBROUTINE glLoadMatrixd(m) BIND(C,NAME="glLoadMatrixd")
      IMPORT
      REAL(GLdouble), DIMENSION(16), INTENT(IN) :: m
    END SUBROUTINE glLoadMatrixd

    !  MatrixMode(mode)
    !  return  void
    !  param   mode		MatrixMode in value
    SUBROUTINE glMatrixMode(mode) BIND(C,NAME="glMatrixMode")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
    END SUBROUTINE glMatrixMode

    !  MultMatrixf(m)
    !  return  void
    !  param   m		Float32 in array [16]
    SUBROUTINE glMultMatrixf(m) BIND(C,NAME="glMultMatrixf")
      IMPORT
      REAL(GLfloat), DIMENSION(16), INTENT(IN) :: m
    END SUBROUTINE glMultMatrixf

    !  MultMatrixd(m)
    !  return  void
    !  param   m		Float64 in array [16]
    SUBROUTINE glMultMatrixd(m) BIND(C,NAME="glMultMatrixd")
      IMPORT
      REAL(GLdouble), DIMENSION(16), INTENT(IN) :: m
    END SUBROUTINE glMultMatrixd

    !  Ortho(left, right, bottom, top, zNear, zFar)
    !  return  void
    !  param   left		Float64 in value
    !  param   right		Float64 in value
    !  param   bottom		Float64 in value
    !  param   top		Float64 in value
    !  param   zNear		Float64 in value
    !  param   zFar		Float64 in value
    SUBROUTINE glOrtho(left, right, bottom, top, zNear, zFar)                     &
        BIND(C,NAME="glOrtho")
      IMPORT
      REAL(GLdouble), VALUE :: left, right, bottom, top, zNear, zFar
    END SUBROUTINE glOrtho

    !  PopMatrix()
    !  return  void
    SUBROUTINE glPopMatrix() BIND(C,NAME="glPopMatrix")
      IMPORT
    END SUBROUTINE glPopMatrix

    !  PushMatrix()
    !  return  void
    SUBROUTINE glPushMatrix() BIND(C,NAME="glPushMatrix")
      IMPORT
    END SUBROUTINE glPushMatrix

    !  Rotated(angle, x, y, z)
    !  return  void
    !  param   angle		Float64 in value
    !  param   x		Float64 in value
    !  param   y		Float64 in value
    !  param   z		Float64 in value
    SUBROUTINE glRotated(angle, x, y, z) BIND(C,NAME="glRotated")
      IMPORT
      REAL(GLdouble), VALUE :: angle, x, y, z
    END SUBROUTINE glRotated

    !  Rotatef(angle, x, y, z)
    !  return  void
    !  param   angle		Float32 in value
    !  param   x		Float32 in value
    !  param   y		Float32 in value
    !  param   z		Float32 in value
    SUBROUTINE glRotatef(angle, x, y, z) BIND(C,NAME="glRotatef")
      IMPORT
      REAL(GLfloat), VALUE :: angle, x, y, z
    END SUBROUTINE glRotatef

    !  Scaled(x, y, z)
    !  return  void
    !  param   x		Float64 in value
    !  param   y		Float64 in value
    !  param   z		Float64 in value
    SUBROUTINE glScaled(x, y, z) BIND(C,NAME="glScaled")
      IMPORT
      REAL(GLdouble), VALUE :: x, y, z
    END SUBROUTINE glScaled

    !  Scalef(x, y, z)
    !  return  void
    !  param   x		Float32 in value
    !  param   y		Float32 in value
    !  param   z		Float32 in value
    SUBROUTINE glScalef(x, y, z) BIND(C,NAME="glScalef")
      IMPORT
      REAL(GLfloat), VALUE :: x, y, z
    END SUBROUTINE glScalef

    !  Translated(x, y, z)
    !  return  void
    !  param   x		Float64 in value
    !  param   y		Float64 in value
    !  param   z		Float64 in value
    SUBROUTINE glTranslated(x, y, z) BIND(C,NAME="glTranslated")
      IMPORT
      REAL(GLdouble), VALUE :: x, y, z
    END SUBROUTINE glTranslated

    !  Translatef(x, y, z)
    !  return  void
    !  param   x		Float32 in value
    !  param   y		Float32 in value
    !  param   z		Float32 in value
    SUBROUTINE glTranslatef(x, y, z) BIND(C,NAME="glTranslatef")
      IMPORT
      REAL(GLfloat), VALUE :: x, y, z
    END SUBROUTINE glTranslatef

    !  Viewport(x, y, width, height)
    !  return  void
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    SUBROUTINE glViewport(x, y, width, height) BIND(C,NAME="glViewport")
      IMPORT
      INTEGER(GLint), VALUE :: x, y
      INTEGER(GLsizei), VALUE :: width, height
    END SUBROUTINE glViewport

    !  OpenGL 1.1  commands

    !  ArrayElement(i)
    !  return  void
    !  param   i		Int32 in value
    SUBROUTINE glArrayElement(i) BIND(C,NAME="glArrayElement")
      IMPORT
      INTEGER(GLint), VALUE :: i
    END SUBROUTINE glArrayElement

    !  ColorPointer(size, type, stride, pointer)
    !  return  void
    !  param   size		Int32 in value
    !  param   type		ColorPointerType in value
    !  param   stride		SizeI in value
    !  param   pointer		Void in array [COMPSIZE(size/type/stride)] retained
    SUBROUTINE glColorPointer(size, type, stride, pointer)                        &
        BIND(C,NAME="glColorPointer")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLint), VALUE :: size
      INTEGER(GLsizei), VALUE :: stride
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glColorPointer

    !  DisableClientState(array)
    !  return  void
    !  param   array		EnableCap in value
    SUBROUTINE glDisableClientState(array) BIND(C,NAME="glDisableClientState")
      IMPORT
      INTEGER(GLenum), VALUE :: array
    END SUBROUTINE glDisableClientState

    !  DrawArrays(mode, first, count)
    !  return  void
    !  param   mode		BeginMode in value
    !  param   first		Int32 in value
    !  param   count		SizeI in value
    SUBROUTINE glDrawArrays(mode, first, count) BIND(C,NAME="glDrawArrays")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
      INTEGER(GLint), VALUE :: first
      INTEGER(GLsizei), VALUE :: count
    END SUBROUTINE glDrawArrays

    !  DrawElements(mode, count, type, indices)
    !  return  void
    !  param   mode		BeginMode in value
    !  param   count		SizeI in value
    !  param   type		DrawElementsType in value
    !  param   indices		Void in array [COMPSIZE(count/type)]
    SUBROUTINE glDrawElements(mode, count, type, indices)                         &
        BIND(C,NAME="glDrawElements")
      IMPORT
      INTEGER(GLenum), VALUE :: mode, type
      INTEGER(GLsizei), VALUE :: count
      TYPE(C_PTR), VALUE :: indices
    END SUBROUTINE glDrawElements

    !  EdgeFlagPointer(stride, pointer)
    !  return  void
    !  param   stride		SizeI in value
    !  param   pointer		Boolean in array [COMPSIZE(stride)] retained
    SUBROUTINE glEdgeFlagPointer(stride, pointer)                                 &
        BIND(C,NAME="glEdgeFlagPointer")
      IMPORT
      INTEGER(GLsizei), VALUE :: stride
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glEdgeFlagPointer

    !  EnableClientState(array)
    !  return  void
    !  param   array		EnableCap in value
    SUBROUTINE glEnableClientState(array) BIND(C,NAME="glEnableClientState")
      IMPORT
      INTEGER(GLenum), VALUE :: array
    END SUBROUTINE glEnableClientState

    !  GetPointerv(pname, params)
    !  return  void
    !  param   pname		GetPointervPName in value
    !  param   params		VoidPointer out array [1]
    SUBROUTINE glGetPointerv(pname, params) BIND(C,NAME="glGetPointerv")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      TYPE(C_PTR), INTENT(OUT) :: params
    END SUBROUTINE glGetPointerv

    !  IndexPointer(type, stride, pointer)
    !  return  void
    !  param   type		IndexPointerType in value
    !  param   stride		SizeI in value
    !  param   pointer		Void in array [COMPSIZE(type/stride)] retained
    SUBROUTINE glIndexPointer(type, stride, pointer)                              &
        BIND(C,NAME="glIndexPointer")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLsizei), VALUE :: stride
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glIndexPointer

    !  InterleavedArrays(format, stride, pointer)
    !  return  void
    !  param   format		InterleavedArrayFormat in value
    !  param   stride		SizeI in value
    !  param   pointer		Void in array [COMPSIZE(format/stride)] retained
    SUBROUTINE glInterleavedArrays(format, stride, pointer)                       &
        BIND(C,NAME="glInterleavedArrays")
      IMPORT
      INTEGER(GLenum), VALUE :: format
      INTEGER(GLsizei), VALUE :: stride
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glInterleavedArrays

    !  NormalPointer(type, stride, pointer)
    !  return  void
    !  param   type		NormalPointerType in value
    !  param   stride		SizeI in value
    !  param   pointer		Void in array [COMPSIZE(type/stride)] retained
    SUBROUTINE glNormalPointer(type, stride, pointer)                             &
        BIND(C,NAME="glNormalPointer")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLsizei), VALUE :: stride
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glNormalPointer

    !  TexCoordPointer(size, type, stride, pointer)
    !  return  void
    !  param   size		Int32 in value
    !  param   type		TexCoordPointerType in value
    !  param   stride		SizeI in value
    !  param   pointer		Void in array [COMPSIZE(size/type/stride)] retained
    SUBROUTINE glTexCoordPointer(size, type, stride, pointer)                     &
        BIND(C,NAME="glTexCoordPointer")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLint), VALUE :: size
      INTEGER(GLsizei), VALUE :: stride
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glTexCoordPointer

    !  VertexPointer(size, type, stride, pointer)
    !  return  void
    !  param   size		Int32 in value
    !  param   type		VertexPointerType in value
    !  param   stride		SizeI in value
    !  param   pointer		Void in array [COMPSIZE(size/type/stride)] retained
    SUBROUTINE glVertexPointer(size, type, stride, pointer)                       &
        BIND(C,NAME="glVertexPointer")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLint), VALUE :: size
      INTEGER(GLsizei), VALUE :: stride
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glVertexPointer

    !  PolygonOffset(factor, units)
    !  return  void
    !  param   factor		Float32 in value
    !  param   units		Float32 in value
    SUBROUTINE glPolygonOffset(factor, units) BIND(C,NAME="glPolygonOffset")
      IMPORT
      REAL(GLfloat), VALUE :: factor, units
    END SUBROUTINE glPolygonOffset

    !  CopyTexImage1D(target, level, internalformat, x, y, width, border)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   internalformat	PixelInternalFormat in value
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    !  param   border		CheckedInt32 in value
    SUBROUTINE glCopyTexImage1D(target, level, internalformat, x, y, width,       &
        border) BIND(C,NAME="glCopyTexImage1D")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: level, internalformat, x, y, border
      INTEGER(GLsizei), VALUE :: width
    END SUBROUTINE glCopyTexImage1D

    !  CopyTexImage2D(target, level, internalformat, x, y, width, height, border)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   internalformat	PixelInternalFormat in value
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    !  param   border		CheckedInt32 in value
    SUBROUTINE glCopyTexImage2D(target, level, internalformat, x, y, width,       &
        height, border) BIND(C,NAME="glCopyTexImage2D")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: level, internalformat, x, y, border
      INTEGER(GLsizei), VALUE :: width, height
    END SUBROUTINE glCopyTexImage2D

    !  CopyTexSubImage1D(target, level, xoffset, x, y, width)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   xoffset		CheckedInt32 in value
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    SUBROUTINE glCopyTexSubImage1D(target, level, xoffset, x, y, width)           &
        BIND(C,NAME="glCopyTexSubImage1D")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: level, xoffset, x, y
      INTEGER(GLsizei), VALUE :: width
    END SUBROUTINE glCopyTexSubImage1D

    !  CopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   xoffset		CheckedInt32 in value
    !  param   yoffset		CheckedInt32 in value
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    SUBROUTINE glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width,  &
        height) BIND(C,NAME="glCopyTexSubImage2D")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: level, xoffset, yoffset, x, y
      INTEGER(GLsizei), VALUE :: width, height
    END SUBROUTINE glCopyTexSubImage2D

    !  TexSubImage1D(target, level, xoffset, width, format, type, pixels)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   xoffset		CheckedInt32 in value
    !  param   width		SizeI in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   pixels		Void in array [COMPSIZE(format/type/width)]
    SUBROUTINE glTexSubImage1D(target, level, xoffset, width, format, type,       &
        pixels) BIND(C,NAME="glTexSubImage1D")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      INTEGER(GLint), VALUE :: level, xoffset
      INTEGER(GLsizei), VALUE :: width
      TYPE(C_PTR), VALUE :: pixels
    END SUBROUTINE glTexSubImage1D

    !  TexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   xoffset		CheckedInt32 in value
    !  param   yoffset		CheckedInt32 in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   pixels		Void in array [COMPSIZE(format/type/width/height)]
    SUBROUTINE glTexSubImage2D(target, level, xoffset, yoffset, width, height,    &
        format, type, pixels) BIND(C,NAME="glTexSubImage2D")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      INTEGER(GLint), VALUE :: level, xoffset, yoffset
      INTEGER(GLsizei), VALUE :: width, height
      TYPE(C_PTR), VALUE :: pixels
    END SUBROUTINE glTexSubImage2D

    !  AreTexturesResident(n, textures, residences)
    !  return  Boolean
    !  param   n		SizeI in value
    !  param   textures	Texture in array [n]
    !  param   residences	Boolean out array [n]
    FUNCTION glAreTexturesResident(n, textures, residences)                       &
        BIND(C,NAME="glAreTexturesResident")
      IMPORT
      INTEGER(GLboolean) :: glAreTexturesResident
      INTEGER(GLsizei), VALUE :: n
      INTEGER(GLboolean), DIMENSION(n), INTENT(OUT) :: residences
      INTEGER(GLuint), DIMENSION(n), INTENT(IN) :: textures
    END FUNCTION glAreTexturesResident

    !  BindTexture(target, texture)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   texture		Texture in value
    SUBROUTINE glBindTexture(target, texture) BIND(C,NAME="glBindTexture")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLuint), VALUE :: texture
    END SUBROUTINE glBindTexture

    !  DeleteTextures(n, textures)
    !  return  void
    !  param   n		SizeI in value
    !  param   textures	Texture in array [n]
    SUBROUTINE glDeleteTextures(n, textures) BIND(C,NAME="glDeleteTextures")
      IMPORT
      INTEGER(GLsizei), VALUE :: n
      INTEGER(GLuint), DIMENSION(n), INTENT(IN) :: textures
    END SUBROUTINE glDeleteTextures

    !  GenTextures(n, textures)
    !  return  void
    !  param   n		SizeI in value
    !  param   textures	Texture out array [n]
    SUBROUTINE glGenTextures(n, textures) BIND(C,NAME="glGenTextures")
      IMPORT
      INTEGER(GLsizei), VALUE :: n
      INTEGER(GLuint), DIMENSION(n), INTENT(OUT) :: textures
    END SUBROUTINE glGenTextures

    !  IsTexture(texture)
    !  return  Boolean
    !  param   texture		Texture in value
    FUNCTION glIsTexture(texture) BIND(C,NAME="glIsTexture")
      IMPORT
      INTEGER(GLboolean) :: glIsTexture
      INTEGER(GLuint), VALUE :: texture
    END FUNCTION glIsTexture

    !  PrioritizeTextures(n, textures, priorities)
    !  return  void
    !  param   n		SizeI in value
    !  param   textures	Texture in array [n]
    !  param   priorities	ClampedFloat32 in array [n]
    SUBROUTINE glPrioritizeTextures(n, textures, priorities)                      &
        BIND(C,NAME="glPrioritizeTextures")
      IMPORT
      INTEGER(GLsizei), VALUE :: n
      INTEGER(GLuint), DIMENSION(n), INTENT(IN) :: textures
      REAL(GLclampf), DIMENSION(n), INTENT(IN) :: priorities
    END SUBROUTINE glPrioritizeTextures

    !  Indexub(c)
    !  return  void
    !  param   c		ColorIndexValueUB in value
    SUBROUTINE glIndexub(c) BIND(C,NAME="glIndexub")
      IMPORT
      INTEGER(GLubyte), VALUE :: c
    END SUBROUTINE glIndexub

    !  Indexubv(c)
    !  return  void
    !  param   c		ColorIndexValueUB in array [1]
    SUBROUTINE glIndexubv(c) BIND(C,NAME="glIndexubv")
      IMPORT
      INTEGER(GLubyte), INTENT(IN) :: c
    END SUBROUTINE glIndexubv

    !  PopClientAttrib()
    !  return  void
    SUBROUTINE glPopClientAttrib() BIND(C,NAME="glPopClientAttrib")
      IMPORT
    END SUBROUTINE glPopClientAttrib

    !  PushClientAttrib(mask)
    !  return  void
    !  param   mask		ClientAttribMask in value
    SUBROUTINE glPushClientAttrib(mask) BIND(C,NAME="glPushClientAttrib")
      IMPORT
      INTEGER(GLbitfield), VALUE :: mask
    END SUBROUTINE glPushClientAttrib

    !  OpenGL 1.2  commands

    !  BlendColor(red, green, blue, alpha)
    !  return  void
    !  param   red		ClampedColorF in value
    !  param   green		ClampedColorF in value
    !  param   blue		ClampedColorF in value
    !  param   alpha		ClampedColorF in value
    SUBROUTINE glBlendColor(red, green, blue, alpha)                              &
        BIND(C,NAME="glBlendColor")
      IMPORT
      REAL(GLclampf), VALUE :: red, green, blue, alpha
    END SUBROUTINE glBlendColor

    !  BlendEquation(mode)
    !  return  void
    !  param   mode		BlendEquationMode in value
    SUBROUTINE glBlendEquation(mode) BIND(C,NAME="glBlendEquation")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
    END SUBROUTINE glBlendEquation

    !  DrawRangeElements(mode, start, end, count, type, indices)
    !  return  void
    !  param   mode		BeginMode in value
    !  param   start		UInt32 in value
    !  param   end		UInt32 in value
    !  param   count		SizeI in value
    !  param   type		DrawElementsType in value
    !  param   indices		Void in array [COMPSIZE(count/type)]
    SUBROUTINE glDrawRangeElements(mode, start, end, count, type, indices)        &
        BIND(C,NAME="glDrawRangeElements")
      IMPORT
      INTEGER(GLenum), VALUE :: mode, type
      INTEGER(GLint), VALUE :: start, end
      INTEGER(GLsizei), VALUE :: count
      TYPE(C_PTR), VALUE :: indices
    END SUBROUTINE glDrawRangeElements

    !  color_table extension  commands

    !  ColorTable(target, internalformat, width, format, type, table)
    !  return  void
    !  param   target		ColorTableTarget in value
    !  param   internalformat	PixelInternalFormat in value
    !  param   width		SizeI in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   table		Void in array [COMPSIZE(format/type/width)]
    SUBROUTINE glColorTable(target, internalformat, width, format, type, table)   &
        BIND(C,NAME="glColorTable")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      INTEGER(GLint), VALUE :: internalformat
      INTEGER(GLsizei), VALUE :: width
      TYPE(C_PTR), VALUE :: table
    END SUBROUTINE glColorTable

    !  ColorTableParameterfv(target, pname, params)
    !  return  void
    !  param   target		ColorTableTarget in value
    !  param   pname		ColorTableParameterPName in value
    !  param   params		CheckedFloat32 in array [COMPSIZE(pname)]
    SUBROUTINE glColorTableParameterfv(target, pname, params)                     &
        BIND(C,NAME="glColorTableParameterfv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glColorTableParameterfv

    !  ColorTableParameteriv(target, pname, params)
    !  return  void
    !  param   target		ColorTableTarget in value
    !  param   pname		ColorTableParameterPName in value
    !  param   params		CheckedInt32 in array [COMPSIZE(pname)]
    SUBROUTINE glColorTableParameteriv(target, pname, params)                     &
        BIND(C,NAME="glColorTableParameteriv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glColorTableParameteriv

    !  CopyColorTable(target, internalformat, x, y, width)
    !  return  void
    !  param   target		ColorTableTarget in value
    !  param   internalformat	PixelInternalFormat in value
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    SUBROUTINE glCopyColorTable(target, internalformat, x, y, width)              &
        BIND(C,NAME="glCopyColorTable")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: internalformat, x, y
      INTEGER(GLsizei), VALUE :: width
    END SUBROUTINE glCopyColorTable

    !  GetColorTable(target, format, type, table)
    !  return  void
    !  param   target		ColorTableTarget in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   table		Void out array [COMPSIZE(target/format/type)]
    SUBROUTINE glGetColorTable(target, format, type, table)                       &
        BIND(C,NAME="glGetColorTable")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      TYPE(C_PTR), VALUE :: table
    END SUBROUTINE glGetColorTable

    !  GetColorTableParameterfv(target, pname, params)
    !  return  void
    !  param   target		ColorTableTarget in value
    !  param   pname		GetColorTableParameterPName in value
    !  param   params		Float32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetColorTableParameterfv(target, pname, params)                  &
        BIND(C,NAME="glGetColorTableParameterfv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetColorTableParameterfv

    !  GetColorTableParameteriv(target, pname, params)
    !  return  void
    !  param   target		ColorTableTarget in value
    !  param   pname		GetColorTableParameterPName in value
    !  param   params		Int32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetColorTableParameteriv(target, pname, params)                  &
        BIND(C,NAME="glGetColorTableParameteriv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetColorTableParameteriv

    !  color_subtable extension  commands

    !  ColorSubTable(target, start, count, format, type, data)
    !  return  void
    !  param   target		ColorTableTarget in value
    !  param   start		SizeI in value
    !  param   count		SizeI in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   data		Void in array [COMPSIZE(format/type/count)]
    SUBROUTINE glColorSubTable(target, start, count, format, type, data)          &
        BIND(C,NAME="glColorSubTable")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      INTEGER(GLsizei), VALUE :: start, count
      TYPE(C_PTR), VALUE :: data
    END SUBROUTINE glColorSubTable

    !  CopyColorSubTable(target, start, x, y, width)
    !  return  void
    !  param   target		ColorTableTarget in value
    !  param   start		SizeI in value
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    SUBROUTINE glCopyColorSubTable(target, start, x, y, width)                    &
        BIND(C,NAME="glCopyColorSubTable")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: x, y
      INTEGER(GLsizei), VALUE :: start, width
    END SUBROUTINE glCopyColorSubTable

    !  convolution extension  commands

    !  ConvolutionFilter1D(target, internalformat, width, format, type, image)
    !  return  void
    !  param   target		ConvolutionTarget in value
    !  param   internalformat	PixelInternalFormat in value
    !  param   width		SizeI in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   image		Void in array [COMPSIZE(format/type/width)]
    SUBROUTINE glConvolutionFilter1D(target, internalformat, width, format,       &
        type, image) BIND(C,NAME="glConvolutionFilter1D")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      INTEGER(GLint), VALUE :: internalformat
      INTEGER(GLsizei), VALUE :: width
      TYPE(C_PTR), VALUE :: image
    END SUBROUTINE glConvolutionFilter1D

    !  ConvolutionFilter2D(target, internalformat, width, height, format, type, image)
    !  return  void
    !  param   target		ConvolutionTarget in value
    !  param   internalformat	PixelInternalFormat in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   image		Void in array [COMPSIZE(format/type/width/height)]
    SUBROUTINE glConvolutionFilter2D(target, internalformat, width, height,       &
        format, type, image) BIND(C,NAME="glConvolutionFilter2D")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      INTEGER(GLint), VALUE :: internalformat
      INTEGER(GLsizei), VALUE :: width, height
      TYPE(C_PTR), VALUE :: image
    END SUBROUTINE glConvolutionFilter2D

    !  ConvolutionParameterf(target, pname, params)
    !  return  void
    !  param   target		ConvolutionTarget in value
    !  param   pname		ConvolutionParameter in value
    !  param   params		CheckedFloat32 in value
    SUBROUTINE glConvolutionParameterf(target, pname, params)                     &
        BIND(C,NAME="glConvolutionParameterf")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), VALUE :: params
    END SUBROUTINE glConvolutionParameterf

    !  ConvolutionParameterfv(target, pname, params)
    !  return  void
    !  param   target		ConvolutionTarget in value
    !  param   pname		ConvolutionParameter in value
    !  param   params		CheckedFloat32 in array [COMPSIZE(pname)]
    SUBROUTINE glConvolutionParameterfv(target, pname, params)                    &
        BIND(C,NAME="glConvolutionParameterfv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glConvolutionParameterfv

    !  ConvolutionParameteri(target, pname, params)
    !  return  void
    !  param   target		ConvolutionTarget in value
    !  param   pname		ConvolutionParameter in value
    !  param   params		CheckedInt32 in value
    SUBROUTINE glConvolutionParameteri(target, pname, params)                     &
        BIND(C,NAME="glConvolutionParameteri")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), VALUE :: params
    END SUBROUTINE glConvolutionParameteri

    !  ConvolutionParameteriv(target, pname, params)
    !  return  void
    !  param   target		ConvolutionTarget in value
    !  param   pname		ConvolutionParameter in value
    !  param   params		CheckedInt32 in array [COMPSIZE(pname)]
    SUBROUTINE glConvolutionParameteriv(target, pname, params)                    &
        BIND(C,NAME="glConvolutionParameteriv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), DIMENSION(*), INTENT(IN) :: params
    END SUBROUTINE glConvolutionParameteriv

    !  CopyConvolutionFilter1D(target, internalformat, x, y, width)
    !  return  void
    !  param   target		ConvolutionTarget in value
    !  param   internalformat	PixelInternalFormat in value
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    SUBROUTINE glCopyConvolutionFilter1D(target, internalformat, x, y, width)     &
        BIND(C,NAME="glCopyConvolutionFilter1D")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: internalformat, x, y
      INTEGER(GLsizei), VALUE :: width
    END SUBROUTINE glCopyConvolutionFilter1D

    !  CopyConvolutionFilter2D(target, internalformat, x, y, width, height)
    !  return  void
    !  param   target		ConvolutionTarget in value
    !  param   internalformat	PixelInternalFormat in value
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    SUBROUTINE glCopyConvolutionFilter2D(target, internalformat, x, y, width,     &
        height) BIND(C,NAME="glCopyConvolutionFilter2D")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: internalformat, x, y
      INTEGER(GLsizei), VALUE :: width, height
    END SUBROUTINE glCopyConvolutionFilter2D

    !  GetConvolutionFilter(target, format, type, image)
    !  return  void
    !  param   target		ConvolutionTarget in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   image		Void out array [COMPSIZE(target/format/type)]
    SUBROUTINE glGetConvolutionFilter(target, format, type, image)                &
        BIND(C,NAME="glGetConvolutionFilter")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      TYPE(C_PTR), VALUE :: image
    END SUBROUTINE glGetConvolutionFilter

    !  GetConvolutionParameterfv(target, pname, params)
    !  return  void
    !  param   target		ConvolutionTarget in value
    !  param   pname		GetConvolutionParameterPName in value
    !  param   params		Float32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetConvolutionParameterfv(target, pname, params)                 &
        BIND(C,NAME="glGetConvolutionParameterfv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetConvolutionParameterfv

    !  GetConvolutionParameteriv(target, pname, params)
    !  return  void
    !  param   target		ConvolutionTarget in value
    !  param   pname		GetConvolutionParameterPName in value
    !  param   params		Int32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetConvolutionParameteriv(target, pname, params)                 &
        BIND(C,NAME="glGetConvolutionParameteriv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetConvolutionParameteriv

    !  GetSeparableFilter(target, format, type, row, column, span)
    !  return  void
    !  param   target		SeparableTarget in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   row		Void out array [COMPSIZE(target/format/type)]
    !  param   column		Void out array [COMPSIZE(target/format/type)]
    !  param   span		Void out array [COMPSIZE(target/format/type)]
    SUBROUTINE glGetSeparableFilter(target, format, type, row, column, span)      &
        BIND(C,NAME="glGetSeparableFilter")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      TYPE(C_PTR), VALUE :: row, column, span
    END SUBROUTINE glGetSeparableFilter

    !  SeparableFilter2D(target, internalformat, width, height, format, type, row, column)
    !  return  void
    !  param   target		SeparableTarget in value
    !  param   internalformat	PixelInternalFormat in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   row		Void in array [COMPSIZE(target/format/type/width)]
    !  param   column		Void in array [COMPSIZE(target/format/type/height)]
    SUBROUTINE glSeparableFilter2D(target, internalformat, width, height,         &
        format, type, row, column) BIND(C,NAME="glSeparableFilter2D")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      INTEGER(GLint), VALUE :: internalformat
      INTEGER(GLsizei), VALUE :: width, height
      TYPE(C_PTR), VALUE :: row, column
    END SUBROUTINE glSeparableFilter2D

    !  histogram extension  commands

    !  GetHistogram(target, reset, format, type, values)
    !  return  void
    !  param   target		HistogramTarget in value
    !  param   reset		Boolean in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   values		Void out array [COMPSIZE(target/format/type)]
    SUBROUTINE glGetHistogram(target, reset, format, type, values)                &
        BIND(C,NAME="glGetHistogram")
      IMPORT
      INTEGER(GLboolean), VALUE :: reset
      INTEGER(GLenum), VALUE :: target, format, type
      TYPE(C_PTR), VALUE :: values
    END SUBROUTINE glGetHistogram

    !  GetHistogramParameterfv(target, pname, params)
    !  return  void
    !  param   target		HistogramTarget in value
    !  param   pname		GetHistogramParameterPName in value
    !  param   params		Float32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetHistogramParameterfv(target, pname, params)                   &
        BIND(C,NAME="glGetHistogramParameterfv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetHistogramParameterfv

    !  GetHistogramParameteriv(target, pname, params)
    !  return  void
    !  param   target		HistogramTarget in value
    !  param   pname		GetHistogramParameterPName in value
    !  param   params		Int32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetHistogramParameteriv(target, pname, params)                   &
        BIND(C,NAME="glGetHistogramParameteriv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetHistogramParameteriv

    !  GetMinmax(target, reset, format, type, values)
    !  return  void
    !  param   target		MinmaxTarget in value
    !  param   reset		Boolean in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   values		Void out array [COMPSIZE(target/format/type)]
    SUBROUTINE glGetMinmax(target, reset, format, type, values)                   &
        BIND(C,NAME="glGetMinmax")
      IMPORT
      INTEGER(GLboolean), VALUE :: reset
      INTEGER(GLenum), VALUE :: target, format, type
      TYPE(C_PTR), VALUE :: values
    END SUBROUTINE glGetMinmax

    !  GetMinmaxParameterfv(target, pname, params)
    !  return  void
    !  param   target		MinmaxTarget in value
    !  param   pname		GetMinmaxParameterPName in value
    !  param   params		Float32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetMinmaxParameterfv(target, pname, params)                      &
        BIND(C,NAME="glGetMinmaxParameterfv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      REAL(GLfloat), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetMinmaxParameterfv

    !  GetMinmaxParameteriv(target, pname, params)
    !  return  void
    !  param   target		MinmaxTarget in value
    !  param   pname		GetMinmaxParameterPName in value
    !  param   params		Int32 out array [COMPSIZE(pname)]
    SUBROUTINE glGetMinmaxParameteriv(target, pname, params)                      &
        BIND(C,NAME="glGetMinmaxParameteriv")
      IMPORT
      INTEGER(GLenum), VALUE :: target, pname
      INTEGER(GLint), DIMENSION(*), INTENT(OUT) :: params
    END SUBROUTINE glGetMinmaxParameteriv

    !  Histogram(target, width, internalformat, sink)
    !  return  void
    !  param   target		HistogramTarget in value
    !  param   width		SizeI in value
    !  param   internalformat	PixelInternalFormat in value
    !  param   sink		Boolean in value
    SUBROUTINE glHistogram(target, width, internalformat, sink)                   &
        BIND(C,NAME="glHistogram")
      IMPORT
      INTEGER(GLboolean), VALUE :: sink
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: internalformat
      INTEGER(GLsizei), VALUE :: width
    END SUBROUTINE glHistogram

    !  Minmax(target, internalformat, sink)
    !  return  void
    !  param   target		MinmaxTarget in value
    !  param   internalformat	PixelInternalFormat in value
    !  param   sink		Boolean in value
    SUBROUTINE glMinmax(target, internalformat, sink) BIND(C,NAME="glMinmax")
      IMPORT
      INTEGER(GLboolean), VALUE :: sink
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: internalformat
    END SUBROUTINE glMinmax

    !  ResetHistogram(target)
    !  return  void
    !  param   target		HistogramTarget in value
    SUBROUTINE glResetHistogram(target) BIND(C,NAME="glResetHistogram")
      IMPORT
      INTEGER(GLenum), VALUE :: target
    END SUBROUTINE glResetHistogram

    !  ResetMinmax(target)
    !  return  void
    !  param   target		MinmaxTarget in value
    SUBROUTINE glResetMinmax(target) BIND(C,NAME="glResetMinmax")
      IMPORT
      INTEGER(GLenum), VALUE :: target
    END SUBROUTINE glResetMinmax

    !  texture3D extension  commands

    !  TexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   internalformat	PixelInternalFormat in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    !  param   depth		SizeI in value
    !  param   border		CheckedInt32 in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   pixels		Void in array [COMPSIZE(format/type/width/height/depth)]
    SUBROUTINE glTexImage3D(target, level, internalformat, width, height, depth,  &
        border, format, type, pixels) BIND(C,NAME="glTexImage3D")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      INTEGER(GLint), VALUE :: level, internalformat, border
      INTEGER(GLsizei), VALUE :: width, height, depth
      TYPE(C_PTR), VALUE :: pixels
    END SUBROUTINE glTexImage3D

    !  TexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   xoffset		CheckedInt32 in value
    !  param   yoffset		CheckedInt32 in value
    !  param   zoffset		CheckedInt32 in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    !  param   depth		SizeI in value
    !  param   format		PixelFormat in value
    !  param   type		PixelType in value
    !  param   pixels		Void in array [COMPSIZE(format/type/width/height/depth)]
    SUBROUTINE glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width,   &
        height, depth, format, type, pixels) BIND(C,NAME="glTexSubImage3D")
      IMPORT
      INTEGER(GLenum), VALUE :: target, format, type
      INTEGER(GLint), VALUE :: level, xoffset, yoffset, zoffset
      INTEGER(GLsizei), VALUE :: width, height, depth
      TYPE(C_PTR), VALUE :: pixels
    END SUBROUTINE glTexSubImage3D

    !  CopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height)
    !  return  void
    !  param   target		TextureTarget in value
    !  param   level		CheckedInt32 in value
    !  param   xoffset		CheckedInt32 in value
    !  param   yoffset		CheckedInt32 in value
    !  param   zoffset		CheckedInt32 in value
    !  param   x		WinCoord in value
    !  param   y		WinCoord in value
    !  param   width		SizeI in value
    !  param   height		SizeI in value
    SUBROUTINE glCopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x,   &
        y, width, height) BIND(C,NAME="glCopyTexSubImage3D")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: level, xoffset, yoffset, zoffset, x, y
      INTEGER(GLsizei), VALUE :: width, height
    END SUBROUTINE glCopyTexSubImage3D

    !  ActiveTextureARB(texture)
    !  return  void
    !  param   texture		TextureUnit in value
    SUBROUTINE glActiveTextureARB(texture) BIND(C,NAME="glActiveTextureARB")
      IMPORT
      INTEGER(GLenum), VALUE :: texture
    END SUBROUTINE glActiveTextureARB

    !  ClientActiveTextureARB(texture)
    !  return  void
    !  param   texture		TextureUnit in value
    SUBROUTINE glClientActiveTextureARB(texture)                                  &
        BIND(C,NAME="glClientActiveTextureARB")
      IMPORT
      INTEGER(GLenum), VALUE :: texture
    END SUBROUTINE glClientActiveTextureARB

    !  MultiTexCoord1dARB(target, s)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordD in value
    SUBROUTINE glMultiTexCoord1dARB(target, s)                                    &
        BIND(C,NAME="glMultiTexCoord1dARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLdouble), VALUE :: s
    END SUBROUTINE glMultiTexCoord1dARB

    !  MultiTexCoord1dvARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordD in array [1]
    SUBROUTINE glMultiTexCoord1dvARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord1dvARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLdouble), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord1dvARB

    !  MultiTexCoord1fARB(target, s)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordF in value
    SUBROUTINE glMultiTexCoord1fARB(target, s)                                    &
        BIND(C,NAME="glMultiTexCoord1fARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLfloat), VALUE :: s
    END SUBROUTINE glMultiTexCoord1fARB

    !  MultiTexCoord1fvARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordF in array [1]
    SUBROUTINE glMultiTexCoord1fvARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord1fvARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLfloat), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord1fvARB

    !  MultiTexCoord1iARB(target, s)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordI in value
    SUBROUTINE glMultiTexCoord1iARB(target, s)                                    &
        BIND(C,NAME="glMultiTexCoord1iARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: s
    END SUBROUTINE glMultiTexCoord1iARB

    !  MultiTexCoord1ivARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordI in array [1]
    SUBROUTINE glMultiTexCoord1ivARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord1ivARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord1ivARB

    !  MultiTexCoord1sARB(target, s)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordS in value
    SUBROUTINE glMultiTexCoord1sARB(target, s)                                    &
        BIND(C,NAME="glMultiTexCoord1sARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLshort), VALUE :: s
    END SUBROUTINE glMultiTexCoord1sARB

    !  MultiTexCoord1svARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordS in array [1]
    SUBROUTINE glMultiTexCoord1svARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord1svARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLshort), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord1svARB

    !  MultiTexCoord2dARB(target, s, t)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordD in value
    !  param   t		CoordD in value
    SUBROUTINE glMultiTexCoord2dARB(target, s, t)                                 &
        BIND(C,NAME="glMultiTexCoord2dARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLdouble), VALUE :: s, t
    END SUBROUTINE glMultiTexCoord2dARB

    !  MultiTexCoord2dvARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordD in array [2]
    SUBROUTINE glMultiTexCoord2dvARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord2dvARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLdouble), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord2dvARB

    !  MultiTexCoord2fARB(target, s, t)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordF in value
    !  param   t		CoordF in value
    SUBROUTINE glMultiTexCoord2fARB(target, s, t)                                 &
        BIND(C,NAME="glMultiTexCoord2fARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLfloat), VALUE :: s, t
    END SUBROUTINE glMultiTexCoord2fARB

    !  MultiTexCoord2fvARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordF in array [2]
    SUBROUTINE glMultiTexCoord2fvARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord2fvARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLfloat), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord2fvARB

    !  MultiTexCoord2iARB(target, s, t)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordI in value
    !  param   t		CoordI in value
    SUBROUTINE glMultiTexCoord2iARB(target, s, t)                                 &
        BIND(C,NAME="glMultiTexCoord2iARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: s, t
    END SUBROUTINE glMultiTexCoord2iARB

    !  MultiTexCoord2ivARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordI in array [2]
    SUBROUTINE glMultiTexCoord2ivARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord2ivARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord2ivARB

    !  MultiTexCoord2sARB(target, s, t)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordS in value
    !  param   t		CoordS in value
    SUBROUTINE glMultiTexCoord2sARB(target, s, t)                                 &
        BIND(C,NAME="glMultiTexCoord2sARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLshort), VALUE :: s, t
    END SUBROUTINE glMultiTexCoord2sARB

    !  MultiTexCoord2svARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordS in array [2]
    SUBROUTINE glMultiTexCoord2svARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord2svARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLshort), DIMENSION(2), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord2svARB

    !  MultiTexCoord3dARB(target, s, t, r)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordD in value
    !  param   t		CoordD in value
    !  param   r		CoordD in value
    SUBROUTINE glMultiTexCoord3dARB(target, s, t, r)                              &
        BIND(C,NAME="glMultiTexCoord3dARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLdouble), VALUE :: s, t, r
    END SUBROUTINE glMultiTexCoord3dARB

    !  MultiTexCoord3dvARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordD in array [3]
    SUBROUTINE glMultiTexCoord3dvARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord3dvARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLdouble), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord3dvARB

    !  MultiTexCoord3fARB(target, s, t, r)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordF in value
    !  param   t		CoordF in value
    !  param   r		CoordF in value
    SUBROUTINE glMultiTexCoord3fARB(target, s, t, r)                              &
        BIND(C,NAME="glMultiTexCoord3fARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLfloat), VALUE :: s, t, r
    END SUBROUTINE glMultiTexCoord3fARB

    !  MultiTexCoord3fvARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordF in array [3]
    SUBROUTINE glMultiTexCoord3fvARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord3fvARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLfloat), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord3fvARB

    !  MultiTexCoord3iARB(target, s, t, r)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordI in value
    !  param   t		CoordI in value
    !  param   r		CoordI in value
    SUBROUTINE glMultiTexCoord3iARB(target, s, t, r)                              &
        BIND(C,NAME="glMultiTexCoord3iARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: s, t, r
    END SUBROUTINE glMultiTexCoord3iARB

    !  MultiTexCoord3ivARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordI in array [3]
    SUBROUTINE glMultiTexCoord3ivARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord3ivARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord3ivARB

    !  MultiTexCoord3sARB(target, s, t, r)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordS in value
    !  param   t		CoordS in value
    !  param   r		CoordS in value
    SUBROUTINE glMultiTexCoord3sARB(target, s, t, r)                              &
        BIND(C,NAME="glMultiTexCoord3sARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLshort), VALUE :: s, t, r
    END SUBROUTINE glMultiTexCoord3sARB

    !  MultiTexCoord3svARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordS in array [3]
    SUBROUTINE glMultiTexCoord3svARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord3svARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLshort), DIMENSION(3), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord3svARB

    !  MultiTexCoord4dARB(target, s, t, r, q)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordD in value
    !  param   t		CoordD in value
    !  param   r		CoordD in value
    !  param   q		CoordD in value
    SUBROUTINE glMultiTexCoord4dARB(target, s, t, r, q)                           &
        BIND(C,NAME="glMultiTexCoord4dARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLdouble), VALUE :: s, t, r, q
    END SUBROUTINE glMultiTexCoord4dARB

    !  MultiTexCoord4dvARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordD in array [4]
    SUBROUTINE glMultiTexCoord4dvARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord4dvARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLdouble), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord4dvARB

    !  MultiTexCoord4fARB(target, s, t, r, q)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordF in value
    !  param   t		CoordF in value
    !  param   r		CoordF in value
    !  param   q		CoordF in value
    SUBROUTINE glMultiTexCoord4fARB(target, s, t, r, q)                           &
        BIND(C,NAME="glMultiTexCoord4fARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLfloat), VALUE :: s, t, r, q
    END SUBROUTINE glMultiTexCoord4fARB

    !  MultiTexCoord4fvARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordF in array [4]
    SUBROUTINE glMultiTexCoord4fvARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord4fvARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      REAL(GLfloat), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord4fvARB

    !  MultiTexCoord4iARB(target, s, t, r, q)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordI in value
    !  param   t		CoordI in value
    !  param   r		CoordI in value
    !  param   q		CoordI in value
    SUBROUTINE glMultiTexCoord4iARB(target, s, t, r, q)                           &
        BIND(C,NAME="glMultiTexCoord4iARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), VALUE :: s, t, r, q
    END SUBROUTINE glMultiTexCoord4iARB

    !  MultiTexCoord4ivARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordI in array [4]
    SUBROUTINE glMultiTexCoord4ivARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord4ivARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLint), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord4ivARB

    !  MultiTexCoord4sARB(target, s, t, r, q)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   s		CoordS in value
    !  param   t		CoordS in value
    !  param   r		CoordS in value
    !  param   q		CoordS in value
    SUBROUTINE glMultiTexCoord4sARB(target, s, t, r, q)                           &
        BIND(C,NAME="glMultiTexCoord4sARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLshort), VALUE :: s, t, r, q
    END SUBROUTINE glMultiTexCoord4sARB

    !  MultiTexCoord4svARB(target, v)
    !  return  void
    !  param   target		TextureUnit in value
    !  param   v		CoordS in array [4]
    SUBROUTINE glMultiTexCoord4svARB(target, v)                                   &
        BIND(C,NAME="glMultiTexCoord4svARB")
      IMPORT
      INTEGER(GLenum), VALUE :: target
      INTEGER(GLshort), DIMENSION(4), INTENT(IN) :: v
    END SUBROUTINE glMultiTexCoord4svARB

    !  EXT_compiled_vertex_array extension  commands

    !  LockArraysEXT(first, count)
    !  return  void
    !  param   first		Int32 in value
    !  param   count		SizeI in value
    SUBROUTINE glLockArraysEXT(first, count) BIND(C,NAME="glLockArraysEXT")
      IMPORT
      INTEGER(GLint), VALUE :: first
      INTEGER(GLsizei), VALUE :: count
    END SUBROUTINE glLockArraysEXT

    !  UnlockArraysEXT()
    !  return  void
    SUBROUTINE glUnlockArraysEXT() BIND(C,NAME="glUnlockArraysEXT")
      IMPORT
    END SUBROUTINE glUnlockArraysEXT

    !  EXT_vertex_array extension  commands

    !  ArrayElementEXT(i)
    !  return  void
    !  param   i		Int32 in value
    SUBROUTINE glArrayElementEXT(i) BIND(C,NAME="glArrayElementEXT")
      IMPORT
      INTEGER(GLint), VALUE :: i
    END SUBROUTINE glArrayElementEXT

    !  ColorPointerEXT(size, type, stride, count, pointer)
    !  return  void
    !  param   size		Int32 in value
    !  param   type		ColorPointerType in value
    !  param   stride		SizeI in value
    !  param   count		SizeI in value
    !  param   pointer		Void in array [COMPSIZE(size/type/stride/count)] retained
    SUBROUTINE glColorPointerEXT(size, type, stride, count, pointer)              &
        BIND(C,NAME="glColorPointerEXT")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLint), VALUE :: size
      INTEGER(GLsizei), VALUE :: stride, count
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glColorPointerEXT

    !  EdgeFlagPointerEXT(stride, count, pointer)
    !  return  void
    !  param   stride		SizeI in value
    !  param   count		SizeI in value
    !  param   pointer		Boolean in array [COMPSIZE(stride/count)] retained
    SUBROUTINE glEdgeFlagPointerEXT(stride, count, pointer)                       &
        BIND(C,NAME="glEdgeFlagPointerEXT")
      IMPORT
      INTEGER(GLsizei), VALUE :: stride, count
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glEdgeFlagPointerEXT

    !  GetPointervEXT(pname, params)
    !  return  void
    !  param   pname		GetPointervPName in value
    !  param   params		VoidPointer out array [1]
    SUBROUTINE glGetPointervEXT(pname, params) BIND(C,NAME="glGetPointervEXT")
      IMPORT
      INTEGER(GLenum), VALUE :: pname
      TYPE(C_PTR), INTENT(OUT) :: params
    END SUBROUTINE glGetPointervEXT

    !  IndexPointerEXT(type, stride, count, pointer)
    !  return  void
    !  param   type		IndexPointerType in value
    !  param   stride		SizeI in value
    !  param   count		SizeI in value
    !  param   pointer		Void in array [COMPSIZE(type/stride/count)] retained
    SUBROUTINE glIndexPointerEXT(type, stride, count, pointer)                    &
        BIND(C,NAME="glIndexPointerEXT")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLsizei), VALUE :: stride, count
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glIndexPointerEXT

    !  NormalPointerEXT(type, stride, count, pointer)
    !  return  void
    !  param   type		NormalPointerType in value
    !  param   stride		SizeI in value
    !  param   count		SizeI in value
    !  param   pointer		Void in array [COMPSIZE(type/stride/count)] retained
    SUBROUTINE glNormalPointerEXT(type, stride, count, pointer)                   &
        BIND(C,NAME="glNormalPointerEXT")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLsizei), VALUE :: stride, count
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glNormalPointerEXT

    !  TexCoordPointerEXT(size, type, stride, count, pointer)
    !  return  void
    !  param   size		Int32 in value
    !  param   type		TexCoordPointerType in value
    !  param   stride		SizeI in value
    !  param   count		SizeI in value
    !  param   pointer		Void in array [COMPSIZE(size/type/stride/count)] retained
    SUBROUTINE glTexCoordPointerEXT(size, type, stride, count, pointer)           &
        BIND(C,NAME="glTexCoordPointerEXT")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLint), VALUE :: size
      INTEGER(GLsizei), VALUE :: stride, count
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glTexCoordPointerEXT

    !  VertexPointerEXT(size, type, stride, count, pointer)
    !  return  void
    !  param   size		Int32 in value
    !  param   type		VertexPointerType in value
    !  param   stride		SizeI in value
    !  param   count		SizeI in value
    !  param   pointer		Void in array [COMPSIZE(size/type/stride/count)] retained
    SUBROUTINE glVertexPointerEXT(size, type, stride, count, pointer)             &
        BIND(C,NAME="glVertexPointerEXT")
      IMPORT
      INTEGER(GLenum), VALUE :: type
      INTEGER(GLint), VALUE :: size
      INTEGER(GLsizei), VALUE :: stride, count
      TYPE(C_PTR), VALUE :: pointer
    END SUBROUTINE glVertexPointerEXT

    !  DrawArraysEXT(mode, first, count)
    !  return  void
    !  param   mode		BeginMode in value
    !  param   first		Int32 in value
    !  param   count		SizeI in value
    SUBROUTINE glDrawArraysEXT(mode, first, count)                                &
        BIND(C,NAME="glDrawArraysEXT")
      IMPORT
      INTEGER(GLenum), VALUE :: mode
      INTEGER(GLint), VALUE :: first
      INTEGER(GLsizei), VALUE :: count
    END SUBROUTINE glDrawArraysEXT

    !  AreTexturesResidentEXT(n, textures, residences)
    !  return  Boolean
    !  param   n		SizeI in value
    !  param   textures	Texture in array [n]
    !  param   residences	Boolean out array [n]
    FUNCTION glAreTexturesResidentEXT(n, textures, residences)                    &
        BIND(C,NAME="glAreTexturesResidentEXT")
      IMPORT
      INTEGER(GLboolean) :: glAreTexturesResidentEXT
      INTEGER(GLsizei), VALUE :: n
      INTEGER(GLboolean), DIMENSION(n), INTENT(OUT) :: residences
      INTEGER(GLuint), DIMENSION(n), INTENT(IN) :: textures
    END FUNCTION glAreTexturesResidentEXT

    !  DeleteTexturesEXT(n, textures)
    !  return  void
    !  param   n		SizeI in value
    !  param   textures	Texture in array [n]
    SUBROUTINE glDeleteTexturesEXT(n, textures)                                   &
        BIND(C,NAME="glDeleteTexturesEXT")
      IMPORT
      INTEGER(GLsizei), VALUE :: n
      INTEGER(GLuint), DIMENSION(n), INTENT(IN) :: textures
    END SUBROUTINE glDeleteTexturesEXT

    !  GenTexturesEXT(n, textures)
    !  return  void
    !  param   n		SizeI in value
    !  param   textures	Texture out array [n]
    SUBROUTINE glGenTexturesEXT(n, textures) BIND(C,NAME="glGenTexturesEXT")
      IMPORT
      INTEGER(GLsizei), VALUE :: n
      INTEGER(GLuint), DIMENSION(n), INTENT(OUT) :: textures
    END SUBROUTINE glGenTexturesEXT

    !  IsTextureEXT(texture)
    !  return  Boolean
    !  param   texture		Texture in value
    FUNCTION glIsTextureEXT(texture) BIND(C,NAME="glIsTextureEXT")
      IMPORT
      INTEGER(GLboolean) :: glIsTextureEXT
      INTEGER(GLuint), VALUE :: texture
    END FUNCTION glIsTextureEXT

  END INTERFACE


CONTAINS

  FUNCTION CString(string) RESULT(array)
    CHARACTER(LEN=*) :: string
    CHARACTER(KIND=C_CHAR), DIMENSION(len(string)+1) :: array

    INTEGER :: i

    do i=1, len(string)
      array(i)=string(i:i)
    end do
    array(len(string)+1)=c_null_char

  END FUNCTION CString

END MODULE  OpenGL_gl
