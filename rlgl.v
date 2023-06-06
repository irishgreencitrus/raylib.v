module raylibv

pub const (
	// Texture parameters (equivalent to OpenGL defines)
	rl_texture_wrap_s                    = 0x2802
	rl_texture_wrap_t                    = 0x2803
	rl_texture_mag_filter                = 0x2800
	rl_texture_min_filter                = 0x2801

	rl_texture_filter_nearest            = 0x2600
	rl_texture_filter_linear             = 0x2601
	rl_texture_filter_mip_nearest        = 0x2700
	rl_texture_filter_nearest_mip_linear = 0x2702
	rl_texture_filter_linear_mip_nearest = 0x2701
	rl_texture_filter_mip_linear         = 0x2703
	rl_texture_filter_anisotropic        = 0x3000
	rl_texture_mipmap_bias_ratio         = 0x4000

	rl_texture_wrap_repeat               = 0x2901
	rl_texture_wrap_clamp                = 0x812f
	rl_texture_wrap_mirror_repeat        = 0x8370
	rl_texture_wrap_mirror_clamp         = 0x8742

	// Matrix modes (equivalent to OpenGL)
	rl_modelview                         = 0x1700
	rl_projection                        = 0x1701
	rl_texture                           = 0x1702

	// Primitive assembly draw modes
	rl_lines                             = 0x001
	rl_triangles                         = 0x004
	rl_quads                             = 0x007

	// GL equivalent data types
	rl_unsigned_byte                     = 0x1401
	rl_float                             = 0x1406

	// GL buffer usage hint
	rl_stream_draw                       = 0x88e0
	rl_stream_read                       = 0x88e1
	rl_stream_copy                       = 0x88e2
	rl_static_draw                       = 0x88e4
	rl_static_read                       = 0x88e5
	rl_static_copy                       = 0x88e6
	rl_dynamic_draw                      = 0x88e8
	rl_dynamic_read                      = 0x88e9
	rl_dynamic_copy                      = 0x88ea

	// GL Shader type
	rl_fragment_shader                   = 0x8b30
	rl_vertex_shader                     = 0x8b31
	rl_compute_shader                    = 0x91b9

	// GL blending factors
	rl_zero                              = 0
	rl_one                               = 1
	rl_src_color                         = 0x0300
	rl_one_minus_src_color               = 0x0301
	rl_src_alpha                         = 0x0302
	rl_one_minus_src_alpha               = 0x0303
	rl_dst_alpha                         = 0x0304
	rl_one_minus_dst_alpha               = 0x0305
	rl_dst_color                         = 0x0306
	rl_one_minus_dst_color               = 0x0307
	rl_src_alpha_saturate                = 0x0308
	rl_constant_color                    = 0x8001
	rl_one_minus_constant_color          = 0x8002
	rl_constant_alpha                    = 0x8003
	rl_one_minus_constant_alpha          = 0x8004


	// GL blending functions/equations
	rl_func_add                          = 0x8006
	rl_min                               = 0x8007
	rl_max                               = 0x8008
	rl_func_subtract                     = 0x800a
	rl_func_reverse_subtract             = 0x800b
	rl_blend_equation                    = 0x8009
	rl_blend_equation_rgb                = 0x8009
	rl_blend_equation_alpha              = 0x883d
	rl_blend_dst_rgb                     = 0x80c8
	rl_blend_src_rgb                     = 0x80c9
	rl_blend_dst_alpha                   = 0x80ca
	rl_blend_src_alpha                   = 0x80cb
	rl_blend_color                       = 0x8005

	// OpenGL version
	rl_opengl_11                         = 1
	rl_opengl_21                         = 2
	rl_opengl_33                         = 3
	rl_opengl_43                         = 4
	rl_opengl_es_20                      = 5

	// Trace log level
	rl_log_all                           = 0
	rl_log_trace                         = 1
	rl_log_debug                         = 2
	rl_log_info                          = 3
	rl_log_warning                       = 4
	rl_log_error                         = 5
	rl_log_fatal                         = 6
	rl_log_none                          = 7

	// Texture pixel formats
	rl_pixelformat_uncompressed_grayscale    = 1
	rl_pixelformat_uncompressed_gray_alpha   = 2
	rl_pixelformat_uncompressed_r5g6b5       = 3
	rl_pixelformat_uncompressed_r8g8b8       = 4
	rl_pixelformat_uncompressed_r5g5b5a1     = 5
	rl_pixelformat_uncompressed_r4g4b4a4     = 6
	rl_pixelformat_uncompressed_r8g8b8a8     = 7
	rl_pixelformat_uncompressed_r32          = 8
	rl_pixelformat_uncompressed_r32g32b32    = 9
	rl_pixelformat_uncompressed_r32g32b32a32 = 10
	rl_pixelformat_compressed_dxt1_rgb       = 11
	rl_pixelformat_compressed_dxt1_rgba      = 12
	rl_pixelformat_compressed_dxt3_rgba      = 13
	rl_pixelformat_compressed_dxt5_rgba      = 14
	rl_pixelformat_compressed_etc1_rgb       = 15
	rl_pixelformat_compressed_etc2_rgb       = 16
	rl_pixelformat_compressed_etc2_eac_rgba  = 17
	rl_pixelformat_compressed_pvrt_rgb       = 18
	rl_pixelformat_compressed_pvrt_rgba      = 19
	rl_pixelformat_compressed_astc_4x4_rgba  = 20
	rl_pixelformat_compressed_astc_8x8_rgba  = 21

	// Texture parameters: filter mode
	rl_texture_filter_point              = 0
	rl_texture_filter_bilinear           = 1
	rl_texture_filter_trilinear          = 2
	rl_texture_filter_anisotropic_4x     = 3
	rl_texture_filter_anisotropic_8x     = 4
	rl_texture_filter_anisotropic_16x    = 5

	// rlBlendMode
	rl_blend_alpha                       = 0
	rl_blend_additive                    = 1
	rl_blend_multiplied                  = 2
	rl_blend_add_colors                  = 3
	rl_blend_subtract_colors             = 4
	rl_blend_alpha_premultiply           = 5
	rl_blend_custom                      = 6
	rl_blend_custom_separate             = 7

	// Shader location point type
	rl_shader_loc_vertex_position        = 0
	rl_shader_loc_vertex_texcoord01      = 1
	rl_shader_loc_vertex_texcoord02      = 2
	rl_shader_loc_vertex_normal          = 3
	rl_shader_loc_vertex_tangent         = 4
	rl_shader_loc_vertex_color           = 5
	rl_shader_loc_matrix_mvp             = 6
	rl_shader_loc_matrix_view            = 7
	rl_shader_loc_matrix_projection      = 8
	rl_shader_loc_matrix_model           = 9
	rl_shader_loc_matrix_normal          = 10
	rl_shader_loc_vector_view            = 11
	rl_shader_loc_color_diffuse          = 12
	rl_shader_loc_color_specular         = 13
	rl_shader_loc_color_ambient          = 14
	rl_shader_loc_map_albedo             = 15
	rl_shader_loc_map_metalness          = 16
	rl_shader_loc_map_normal             = 17
	rl_shader_loc_map_roughness          = 18
	rl_shader_loc_map_occlusion          = 19
	rl_shader_loc_map_emission           = 20
	rl_shader_loc_map_height             = 21
	rl_shader_loc_map_cubemap            = 22
	rl_shader_loc_map_irradiance         = 23
	rl_shader_loc_map_prefilter          = 24
	rl_shader_loc_map_brdf               = 25

	rl_shader_loc_map_diffuse            = 15
	rl_shader_loc_map_specular           = 16

	// Shader uniform data type
	rl_shader_uniform_float              = 0
	rl_shader_uniform_vec2               = 1 
	rl_shader_uniform_vec3               = 2
	rl_shader_uniform_vec4               = 3
	rl_shader_uniform_int                = 4
	rl_shader_uniform_ivec2              = 5
	rl_shader_uniform_ivec3              = 6
	rl_shader_uniform_ivec4              = 7
	rl_shader_uniform_sampler2d          = 8

	// Shader attribute data types
	rl_shader_attrib_float               = 0
	rl_shader_attrib_vec2                = 1
	rl_shader_attrib_vec3                = 2
	rl_shader_attrib_vec4                = 3

	// Framebuffer attachment type
	rl_attachment_color_channel0         = 0
	rl_attachment_color_channel1         = 1
	rl_attachment_color_channel2         = 2
	rl_attachment_color_channel3         = 3
	rl_attachment_color_channel4         = 4
	rl_attachment_color_channel5         = 5
	rl_attachment_color_channel6         = 6
	rl_attachment_color_channel7         = 7
	rl_attachment_depth                  = 100
	rl_attachment_stencil                = 200

	// Framebuffer texture attachment type
	rl_attachment_cubemap_positive_x     = 0
	rl_attachment_cubemap_negative_x     = 1
	rl_attachment_cubemap_positive_y     = 2
	rl_attachment_cubemap_negative_y     = 3
	rl_attachment_cubemap_positive_z     = 4
	rl_attachment_cubemap_negative_z     = 5
	rl_attachment_texture2d              = 100
	rl_attachment_renderbuffer           = 200

	// Face culling mode
	rl_cull_face_front                   = 0
	rl_cull_face_back                    = 1
)

[typedef]
struct C.rlVertexBuffer {
pub mut:
	elementCount int
	vertices     &f32
	texcoords    &f32
	colors       &u8
	indices      &u32
	vaoId        u32
	vboId        [4]u32
}

pub type RlVertexBuffer = C.rlVertexBuffer

[typedef]
struct C.rlDrawCall {
pub mut:
	mode            int
	vertexCount     int
	vertexAlignment int
	textureId       u32
}

pub type RlDrawCall = C.rlDrawCall

[typedef]
struct C.rlRenderBatch {
pub mut:
	bufferCount   int
	currentBuffer int
	vertexBuffer  &RlVertexBuffer
	draws         &RlDrawCall
	drawCounter   int
	currentDepth  f32
}

pub type RlRenderBatch = C.rlRenderBatch

fn C.rlMatrixMode(mode int)
[inline]
pub fn rl_matrix_mode(mode int) {
	C.rlMatrixMode(mode)
}

fn C.rlPushMatrix()
[inline]
pub fn rl_push_matrix() {
	C.rlPushMatrix()
}

fn C.rlPopMatrix()
[inline]
pub fn rl_pop_matrix() {
	C.rlPopMatrix()
}

fn C.rlLoadIdentity()
[inline]
pub fn rl_load_identity() {
	C.rlLoadIdentity()
}

fn C.rlTranslatef(x f32, y f32, z f32)
[inline]
pub fn rl_translatef(x f32, y f32, z f32) {
	C.rlTranslatef(x, y, z)
}

fn C.rlRotatef(angle f32, x f32, y f32, z f32)
[inline]
pub fn rl_rotatef(angle f32, x f32, y f32, z f32) {
	C.rlRotatef(angle, x, y, z)
}

fn C.rlScalef(x f32, y f32, z f32)
[inline]
pub fn rl_scalef(x f32, y f32, z f32) {
	C.rlScalef(x, y, z)
}

fn C.rlMultMatrixf(matf &f32)
[inline]
pub fn rl_multmatrixf(matf &f32) {
	C.rlMultMatrixf(matf)
}

fn C.rlFrustum(left f64, right f64, bottom f64, top f64, znear f64, zfar f64)
[inline]
pub fn rl_frustum(left f64, right f64, bottom f64, top f64, znear f64, zfar f64) {
	C.rlFrustum(left, right, bottom, top, znear, zfar)
}

fn C.rlOrtho(left f64, right f64, bottom f64, top f64, znear f64, zfar f64)
[inline]
pub fn rl_ortho(left f64, right f64, bottom f64, top f64, znear f64, zfar f64) {
	C.rlOrtho(left, right, bottom, top, znear, zfar)
}

fn C.rlViewport(x int, y int, width int, height int)
[inline]
pub fn rl_viewport(x int, y int, width int, height int) {
	C.rlViewport(x, y, width, height)
}

fn C.rlBegin(mode int)
[inline]
pub fn rl_begin(mode int) {
	C.rlBegin(mode)
}

fn C.rlEnd()
[inline]
pub fn rl_end() {
	C.rlEnd()
}

fn C.rlVertex2i(x int, y int)
[inline]
pub fn rl_vertex2i(x int, y int) {
	C.rlVertex2i(x, y)
}

fn C.rlVertex2f(x f32, y f32)
[inline]
pub fn rl_vertex2f(x f32, y f32) {
	C.rlVertex2f(x, y)
}

fn C.rlVertex3f(x f32, y f32, z f32)
[inline]
pub fn rl_vertex3f(x f32, y f32, z f32) {
	C.rlVertex3f(x, y, z)
}

fn C.rlTexCoord2f(x f32, y f32)
[inline]
pub fn rl_texcoord2f(x f32, y f32) {
	C.rlTexCoord2f(x, y)
}

fn C.rlNormal3f(x f32, y f32, z f32)
[inline]
pub fn rl_normal3f(x f32, y f32, z f32) {
	C.rlNormal3f(x, y, z)
}

fn C.rlColor4ub(r u8, g u8, b u8, a u8)
[inline]
pub fn rl_color4ub(r u8, g u8, b u8, a u8) {
	C.rlColor4ub(r, g, b, a)
}

fn C.rlColor3f(x f32, y f32, z f32)
[inline]
pub fn rl_color3f(x f32, y f32, z f32) {
	C.rlColor3f(x, y, z)
}

fn C.rlColor4f(x f32, y f32, z f32, w f32)
[inline]
pub fn rl_color4f(x f32, y f32, z f32, w f32) {
	C.rlColor4f(x, y, z, w)
}

fn C.rlDisableVertexArray()
[inline]
pub fn rl_disable_vertex_array() {
	C.rlDisableVertexArray()
}

fn C.rlEnableVertexBuffer(id u32)
[inline]
pub fn rl_enable_vertex_buffer(id u32) {
	C.rlEnableVertexBuffer(id)
}

fn C.rlDisableVertexBuffer()
[inline]
pub fn rl_disable_vertex_buffer() {
	C.rlDisableVertexBuffer()
}

fn C.rlEnableVertexBufferElement(id u32)
[inline]
pub fn rl_enable_vertex_buffer_element(id u32) {
	C.rlEnableVertexBufferElement(id)
}

fn C.rlDisableVertexBufferElement()
[inline]
pub fn rl_disable_vertex_buffer_element() {
	C.rlDisableVertexBufferElement()
}

fn C.rlEnableVertexAttribute(index u32)
[inline]
pub fn rl_enable_vertex_attribute(index u32) {
	C.rlEnableVertexAttribute(index)
}

fn C.rlDisableVertexAttribute(index u32)
[inline]
pub fn rl_disable_vertex_attribute(index u32) {
	C.rlDisableVertexAttribute(index)
}

fn C.rlActiveTextureSlot(slot int)
[inline]
pub fn rl_active_texture_slot(slot int) {
	C.rlActiveTextureSlot(slot)
}

fn C.rlEnableTexture(id u32)
[inline]
pub fn rl_enable_texture(id u32) {
	C.rlEnableTexture(id)
}

fn C.rlDisableTexture()
[inline]
pub fn rl_disable_texture() {
	C.rlDisableTexture()
}

fn C.rlEnableTextureCubemap(id u32)
[inline]
pub fn rl_enable_texture_cubemap(id u32) {
	C.rlEnableTextureCubemap(id)
}

fn C.rlDisableTextureCubemap()
[inline]
pub fn rl_disable_texture_cubemap() {
	C.rlDisableTextureCubemap()
}

fn C.rlTextureParameters(id u32, param int, value int)
[inline]
pub fn rl_texture_parameters(id u32, param int, value int) {
	C.rlTextureParameters(id, param, value)
}

fn C.rlCubemapParameters(id u32, param int, value int)
[inline]
pub fn rl_cubemap_parameters(id u32, param int, value int) {
	C.rlCubemapParameters(id, param, value)
}

fn C.rlEnableShader(id u32)
[inline]
pub fn rl_enable_shader(id u32) {
	C.rlEnableShader(id)
}

fn C.rlDisableShader()
[inline]
pub fn rl_disable_shader() {
	C.rlDisableShader()
}

fn C.rlEnableFramebuffer(id u32)
[inline]
pub fn rl_enable_frame_buffer(id u32) {
	C.rlEnableFramebuffer(id)
}

fn C.rlDisableFramebuffer()
[inline]
pub fn rl_disable_frame_buffer() {
	C.rlDisableFramebuffer()
}

fn C.rlActiveDrawBuffers(count int)
[inline]
pub fn rl_active_draw_buffers(count int) {
	C.rlActiveDrawBuffers(count)
}

fn C.rlEnableColorBlend()
[inline]
pub fn rl_enable_color_blend() {
	C.rlEnableColorBlend()
}

fn C.rlDisableColorBlend()
[inline]
pub fn rl_disable_color_blend() {
	C.rlDisableColorBlend()
}

fn C.rlEnableDepthTest()
[inline]
pub fn rl_enable_depth_test() {
	C.rlEnableDepthTest()
}

fn C.rlDisableDepthTest()
[inline]
pub fn rl_disable_depth_test() {
	C.rlDisableDepthTest()
}

fn C.rlEnableDepthMask()
[inline]
pub fn rl_enable_depth_mask() {
	C.rlEnableDepthMask()
}

fn C.rlDisableDepthMask()
[inline]
pub fn rl_disable_depth_mask() {
	C.rlDisableDepthMask()
}

fn C.rlEnableBackfaceCulling()
[inline]
pub fn rl_enable_backface_culling() {
	C.rlEnableBackfaceCulling()
}

fn C.rlDisableBackfaceCulling()
[inline]
pub fn rl_disable_backface_culling() {
	C.rlDisableBackfaceCulling()
}

fn C.rlSetCullFace(mode int)
[inline]
pub fn rl_set_cull_face(mode int) {
	C.rlSetCullFace(mode)
}

fn C.rlEnableScissorTest()
[inline]
pub fn rl_enable_scissor_test() {
	C.rlEnableScissorTest()
}

fn C.rlDisableScissorTest()
[inline]
pub fn rl_disable_scissor_test() {
	C.rlDisableScissorTest()
}

fn C.rlScissor(x int, y int, width int, height int)
[inline]
pub fn rl_scissor(x int, y int, width int, height int) {
	C.rlScissor(x, y, width, height)
}

fn C.rlEnableWireMode()
[inline]
pub fn rl_enable_wire_mode() {
	C.rlEnableWireMode()
}

fn C.rlDisableWireMode()
[inline]
pub fn rl_disable_wire_mode() {
	C.rlDisableWireMode()
}

fn C.rlSetLineWidth(width f32)
[inline]
pub fn rl_set_line_width(width f32) {
	C.rlSetLineWidth(width)
}

fn C.rlGetLineWidth() f32
[inline]
pub fn rl_get_line_width() f32 {
	return C.rlGetLineWidth()
}

fn C.rlEnableSmoothLines()
[inline]
pub fn rl_enable_smooth_lines() {
	C.rlEnableSmoothLines()
}

fn C.rlDisableSmoothLines()
[inline]
pub fn rl_disable_smooth_lines() {
	C.rlDisableSmoothLines()
}

fn C.rlEnableStereoRender()
[inline]
pub fn rl_enable_stereo_render() {
	C.rlEnableStereoRender()
}

fn C.rlDisableStereoRender()
[inline]
pub fn rl_disable_stereo_render() {
	C.rlDisableStereoRender()
}

fn C.rlIsStereoRenderEnabled() bool
[inline]
pub fn rl_is_stereo_render_enabled() bool {
	return C.rlIsStereoRenderEnabled()
}

fn C.rlClearScreenBuffers()
[inline]
pub fn rl_clear_screen_buffers() {
	C.rlClearScreenBuffers()
}

fn C.rlCheckErrors()
[inline]
pub fn rl_check_errors() {
	C.rlCheckErrors()
}

fn C.rlSetBlendMode(mode int)
[inline]
pub fn rl_set_blend_mode(mode int) {
	C.rlSetBlendMode(mode)
}

fn C.rlSetBlendFactors(glsrcfactor int, gldstfactor int, glequation int)
[inline]
pub fn rl_set_blend_factors(glsrcfactor int, gldstfactor int, glequation int) {
	C.rlSetBlendFactors(glsrcfactor, gldstfactor, glequation)
}

fn C.rlSetBlendFactorsSeparate(glsrcrgb int, gldstrgb int, glsrcalpha int, gldstalpha int, gleqrgb int, gleqalpha int)
[inline]
pub fn rl_set_blend_factors_separate(glsrcrgb int, gldstrgb int, glsrcalpha int, gldstalpha int, gleqrgb int, gleqalpha int) {
	C.rlSetBlendFactorsSeparate(glsrcrgb, gldstrgb, glsrcalpha, gldstalpha, gleqrgb, gleqalpha)
}

fn C.rlglInit(width int, height int)
[inline]
pub fn rlgl_init(width int, height int) {
	C.rlglInit(width, height)
}

fn C.rlglClose()
[inline]
pub fn rlgl_close() {
	C.rlglClose()
}

fn C.rlLoadExtensions(loader voidptr)
[inline]
pub fn rl_load_extensions(loader voidptr) {
	C.rlLoadExtensions(loader)
}

fn C.rlGetVersion() int
[inline]
pub fn rl_get_version() int {
	return C.rlGetVersion()
}

fn C.rlSetFramebufferWidth(width int)
[inline]
pub fn rl_set_framebuffer_width(width int) {
	C.rlSetFramebufferWidth(width)
}

fn C.rlGetFramebufferWidth() int
[inline]
pub fn rl_get_framebuffer_width() int {
	return C.rlGetFramebufferWidth()
}

fn C.rlSetFramebufferHeight(height int)
[inline]
pub fn rl_set_framebuffer_height(height int) {
	C.rlSetFramebufferHeight(height)
}

fn C.rlGetFramebufferHeight() int
[inline]
pub fn rl_get_framebuffer_height() int {
	return C.rlGetFramebufferHeight()
}

fn C.rlGetTextureIdDefault() u32
[inline]
pub fn rl_get_texture_id_default() u32 {
	return C.rlGetTextureIdDefault()
}

fn C.rlGetShaderIdDefault() u32
[inline]
pub fn rl_get_shader_id_default() u32 {
	return C.rlGetShaderIdDefault()
}

fn C.rlGetShaderLocsDefault() &int
[inline]
pub fn rl_get_shader_locs_default() &int {
	return C.rlGetShaderLocsDefault()
}

fn C.rlLoadRenderBatch(numbuffers int, bufferelements int) RlRenderBatch
[inline]
pub fn rl_load_render_batch(numbuffers int, bufferelements int) RlRenderBatch {
	return C.rlLoadRenderBatch(numbuffers, bufferelements)
}

fn C.rlUnloadRenderBatch(batch RlRenderBatch)
[inline]
pub fn rl_unload_render_batch(batch RlRenderBatch) {
	C.rlUnloadRenderBatch(batch)
}

fn C.rlDrawRenderBatch(batch &RlRenderBatch)
[inline]
pub fn rl_draw_render_batch(batch &RlRenderBatch) {
	C.rlDrawRenderBatch(batch)
}

fn C.rlSetRenderBatchActive(batch &RlRenderBatch)
[inline]
pub fn rl_set_render_batch_active(batch &RlRenderBatch) {
	C.rlSetRenderBatchActive(batch)
}

fn C.rlDrawRenderBatchActive()
[inline]
pub fn rl_draw_render_batch_active() {
	C.rlDrawRenderBatchActive()
}

fn C.rlCheckRenderBatchLimit(vcount int) bool
[inline]
pub fn rl_check_render_batch_limit(vcount int) bool {
	return C.rlCheckRenderBatchLimit(vcount)
}

fn C.rlSetTexture(id u32)
[inline]
pub fn rl_set_texture(id u32) {
	C.rlSetTexture(id)
}

fn C.rlLoadVertexArray() u32
[inline]
pub fn rl_load_vertex_array() u32 {
	return C.rlLoadVertexArray()
}

fn C.rlLoadVertexBuffer(buffer voidptr, size int, dynamic bool) u32
[inline]
pub fn rl_load_vertex_buffer(buffer voidptr, size int, dynamic bool) u32 {
	return C.rlLoadVertexBuffer(buffer, size, dynamic)
}

fn C.rlLoadVertexBufferElement(buffer voidptr, size int, dynamic bool) u32
[inline]
pub fn rl_load_vertex_buffer_element(buffer voidptr, size int, dynamic bool) u32 {
	return C.rlLoadVertexBufferElement(buffer, size, dynamic)
}

fn C.rlUpdateVertexBuffer(bufferid u32, data voidptr, datasize int, offset int)
[inline]
pub fn rl_update_vertex_buffer(bufferid u32, data voidptr, datasize int, offset int) {
	C.rlUpdateVertexBuffer(bufferid, data, datasize, offset)
}

fn C.rlUpdateVertexBufferElements(id u32, data voidptr, datasize int, offset int)
[inline]
pub fn rl_update_vertex_buffer_elements(id u32, data voidptr, datasize int, offset int) {
	C.rlUpdateVertexBufferElements(id, data, datasize, offset)
}

fn C.rlUnloadVertexArray(vaoid u32)
[inline]
pub fn rl_unload_vertex_array(vaoid u32) {
	C.rlUnloadVertexArray(vaoid)
}

fn C.rlUnloadVertexBuffer(vboId u32)
[inline]
pub fn rl_unload_vertex_buffer(vboid u32) {
	C.rlUnloadVertexBuffer(vboid)
}

fn C.rlSetVertexAttribute(index u32, compsize int, type_ int, normalized bool, stride int, pointer voidptr)
[inline]
pub fn rl_set_vertex_attribute(index u32, compsize int, type_ int, normalized bool, stride int, pointer voidptr) {
	C.rlSetVertexAttribute(index, compsize, type_, normalized, stride, pointer)
}

fn C.rlSetVertexAttributeDivisor(index u32, divisor int)
[inline]
pub fn rl_set_vertex_attribute_divisor(index u32, divisor int) {
	C.rlSetVertexAttributeDivisor(index, divisor)
}

fn C.rlSetVertexAttributeDefault(locindex int, value voidptr, attribtype int, count int)
[inline]
pub fn rl_set_vertex_attribute_default(locindex int, value voidptr, attribtype int, count int) {
	C.rlSetVertexAttributeDefault(locindex, value, attribtype, count)
}

fn C.rlDrawVertexArray(offset int, count int)
[inline]
pub fn rl_draw_vertex_array(offset int, count int) {
	C.rlDrawVertexArray(offset, count)
}

fn C.rlDrawVertexArrayElements(offset int, count int, buffer voidptr)
[inline]
pub fn rl_draw_vertex_array_elements(offset int, count int, buffer voidptr) {
	C.rlDrawVertexArrayElements(offset, count, buffer)
}

fn C.rlDrawVertexArrayInstanced(offset int, count int, instances int)
[inline]
pub fn rl_draw_vertex_array_instanced(offset int, count int, instances int) {
	C.rlDrawVertexArrayInstanced(offset, count, instances)
}

fn C.rlDrawVertexArrayElementsInstanced(offset int, count int, buffer voidptr, instances int)
[inline]
pub fn rl_draw_vertex_array_elements_instanced(offset int, count int, buffer voidptr, instances int) {
	C.rlDrawVertexArrayElementsInstanced(offset, count, buffer, instances)
}

fn C.rlLoadTexture(data voidptr, width int, height int, format int, mipmapcount int) u32
[inline]
pub fn rl_load_texture(data voidptr, width int, height int, format int, mipmapcount int) u32 {
	return C.rlLoadTexture(data, width, height, format, mipmapcount)
}

fn C.rlLoadTextureDepth(width int, height int, userenderbuffer bool) u32
[inline]
pub fn rl_load_texture_depth(width int, height int, userenderbuffer bool) u32 {
	return C.rlLoadTextureDepth(width, height, userenderbuffer)
}

fn C.rlLoadTextureCubemap(data voidptr, size int, format int) u32
[inline]
pub fn rl_load_texture_cubemap(data voidptr, size int, format int) u32 {
	return C.rlLoadTextureCubemap(data, size, format)
}

fn C.rlUpdateTexture(id u32, offsetx int, offsety int, width int, height int, format int, data voidptr)
[inline]
pub fn rl_update_texture(id u32, offsetx int, offsety int, width int, height int, format int, data voidptr) {
	C.rlUpdateTexture(id, offsetx, offsety, width, height, format, data)
}

fn C.rlGetGlTextureFormats(format int, glinternalformat &u32, glformat &u32, gltype &u32)
[inline]
pub fn rl_get_gl_texture_formats(format int, glinternalformat &u32, glformat &u32, gltype &u32) {
	C.rlGetGlTextureFormats(format, glinternalformat, glformat, gltype)
}

fn C.rlGetPixelFormatName(format u32) &i8
[inline]
pub fn rl_get_pixel_format_name(format u32) &i8 {
	return C.rlGetPixelFormatName(format)
}

fn C.rlUnloadTexture(id u32)
[inline]
pub fn rl_unload_texture(id u32) {
	C.rlUnloadTexture(id)
}

fn C.rlGenTextureMipmaps(id u32, width int, height int, format int, mipmaps &int)
[inline]
pub fn rl_gen_texture_mipmaps(id u32, width int, height int, format int, mipmaps &int) {
	C.rlGenTextureMipmaps(id, width, height, format, mipmaps)
}

fn C.rlReadTexturePixels(id u32, width int, height int, format int) voidptr
[inline]
pub fn rl_read_texture_pixels(id u32, width int, height int, format int) voidptr {
	return C.rlReadTexturePixels(id, width, height, format)
}

fn C.rlReadScreenPixels(width int, height int) &u8
[inline]
pub fn rl_read_screen_pixels(width int, height int) &u8 {
	return C.rlReadScreenPixels(width, height)
}

fn C.rlLoadFramebuffer(width int, height int) u32
[inline]
pub fn rl_load_frame_buffer(width int, height int) u32 {
	return C.rlLoadFramebuffer(width, height)
}

fn C.rlFramebufferAttach(fboid u32, texid u32, attachtype int, textype int, miplevel int)
[inline]
pub fn rl_frame_buffer_attach(fboid u32, texid u32, attachtype int, textype int, miplevel int) {
	C.rlFramebufferAttach(fboid, texid, attachtype, textype, miplevel)
}

fn C.rlUnloadFramebuffer(id u32)
[inline]
pub fn rl_unload_frame_buffer(id u32) {
	C.rlUnloadFramebuffer(id)
}

fn C.rlLoadShaderCode(vscode &i8, fscode &i8) u32
[inline]
pub fn rl_load_shader_code(vscode &i8, fscode &i8) u32 {
	return C.rlLoadShaderCode(vscode, fscode)
}

fn C.rlCompileShader(shadercode &i8, type_ int) u32
[inline]
pub fn rl_compile_shader(shadercode &i8, type_ int) u32 {
	return C.rlCompileShader(shadercode, type_)
}

fn C.rlLoadShaderProgram(vshaderid u32, fshaderid u32) u32
[inline]
pub fn rl_load_shader_program(vshaderid u32, fshaderid u32) u32 {
	return C.rlLoadShaderProgram(vshaderid, fshaderid)
}

fn C.rlUnloadShaderProgram(id u32)
[inline]
pub fn rl_unload_shader_program(id u32) {
	C.rlUnloadShaderProgram(id)
}

fn C.rlGetLocationUniform(shaderid u32, uniformname &i8) int
[inline]
pub fn rl_get_location_uniform(shaderid u32, uniformname &i8) int {
	return C.rlGetLocationUniform(shaderid, uniformname)
}

fn C.rlGetLocationAttrib(shaderid u32, attribname &i8) int
[inline]
pub fn rl_get_location_attrib(shaderid u32, attribname &i8) int {
	return C.rlGetLocationAttrib(shaderid, attribname)
}

fn C.rlSetUniform(locindex int, value voidptr, uniformtype int, count int)
[inline]
pub fn rl_set_uniform(locindex int, value voidptr, uniformtype int, count int) {
	C.rlSetUniform(locindex, value, uniformtype, count)
}

fn C.rlSetUniformMatrix(locindex int, mat Matrix)
[inline]
pub fn rl_set_uniform_matrix(locindex int, mat Matrix) {
	C.rlSetUniformMatrix(locindex, mat)
}

fn C.rlSetUniformSampler(locindex int, textureid u32)
[inline]
pub fn rl_set_uniform_sampler(locindex int, textureid u32) {
	C.rlSetUniformSampler(locindex, textureid)
}

fn C.rlSetShader(id u32, locs &int)
[inline]
pub fn rl_set_shader(id u32, locs &int) {
	C.rlSetShader(id, locs)
}

fn C.rlLoadComputeShaderProgram(shaderId u32) u32
[inline]
pub fn rl_load_compute_shader_program(shaderid u32) u32 {
	return C.rlLoadComputeShaderProgram(shaderid)
}

fn C.rlComputeShaderDispatch(groupx u32, groupy u32, groupz u32)
[inline]
pub fn rl_compute_shader_dispatch(groupx u32, groupy u32, groupz u32) {
	C.rlComputeShaderDispatch(groupx, groupy, groupz)
}

fn C.rlLoadShaderBuffer(size u32, data voidptr, usagehint int) u32
[inline]
pub fn rl_load_shader_buffer(size u32, data voidptr, usagehint int) u32 {
	return C.rlLoadShaderBuffer(size, data, usagehint)
}

fn C.rlUnloadShaderBuffer(ssboid u32)
[inline]
pub fn rl_unload_shader_buffer(ssboid u32) {
	C.rlUnloadShaderBuffer(ssboid)
}

fn C.rlUpdateShaderBuffer(id u32, data voidptr, dataSize u32, offset u32)
[inline]
pub fn rl_update_shader_buffer(id u32, data voidptr, datasize u32, offset u32) {
	C.rlUpdateShaderBuffer(id, data, datasize, offset)
}

fn C.rlBindShaderBuffer(id u32, index u32)
[inline]
pub fn rl_bind_shader_buffer(id u32, index u32) {
	C.rlBindShaderBuffer(id, index)
}

fn C.rlReadShaderBuffer(id u32, dest voidptr, count u32, offset u32)
[inline]
pub fn rl_read_shader_buffer(id u32, dest voidptr, count u32, offset u32) {
	C.rlReadShaderBuffer(id, dest, count, offset)
}

fn C.rlCopyShaderBuffer(destid u32, srcid u32, destoffset u32, srcoffset u32, count u32)
[inline]
pub fn rl_copy_shader_buffer(destid u32, srcid u32, destoffset u32, srcoffset u32, count u32) {
	C.rlCopyShaderBuffer(destid, srcid, destoffset, srcoffset, count)
}

fn C.rlGetShaderBufferSize(id u32) u32
[inline]
pub fn rl_get_shader_buffer_size(id u32) u32 {
	return C.rlGetShaderBufferSize(id)
}

fn C.rlBindImageTexture(id u32, index u32, format u32, readonly bool)
[inline]
pub fn rl_bind_image_texture(id u32, index u32, format int, readonly bool) {
	C.rlBindImageTexture(id, index, format, readonly)
}

fn C.rlGetMatrixModelview() Matrix
[inline]
pub fn rl_get_matrix_modelview() Matrix {
	return C.rlGetMatrixModelview()
}

fn C.rlGetMatrixProjection() Matrix
[inline]
pub fn rl_get_matrix_projection() Matrix {
	return C.rlGetMatrixProjection()
}

fn C.rlGetMatrixTransform() Matrix
[inline]
pub fn rl_get_matrix_transform() Matrix {
	return C.rlGetMatrixTransform()
}

fn C.rlGetMatrixProjectionStereo(eye int) Matrix
[inline]
pub fn rl_get_matrix_projection_stereo(eye int) Matrix {
	return C.rlGetMatrixProjectionStereo(eye)
}

fn C.rlGetMatrixViewOffsetStereo(eye int) Matrix
[inline]
pub fn rl_get_matrix_view_offset_stereo(eye int) Matrix {
	return C.rlGetMatrixViewOffsetStereo(eye)
}

fn C.rlSetMatrixProjection(proj Matrix)
[inline]
pub fn rl_set_matrix_projection(proj Matrix) {
	C.rlSetMatrixProjection(proj)
}

fn C.rlSetMatrixModelview(view Matrix)
[inline]
pub fn rl_set_matrix_modelview(view Matrix) {
	C.rlSetMatrixModelview(view)
}

fn C.rlSetMatrixProjectionStereo(right Matrix, left Matrix)
[inline]
pub fn rl_set_matrix_projection_stereo(right Matrix, left Matrix) {
	C.rlSetMatrixProjectionStereo(right, left)
}

fn C.rlSetMatrixViewOffsetStereo(right Matrix, left Matrix)
[inline]
pub fn rl_set_matrix_view_offset_stereo(right Matrix, left Matrix) {
	C.rlSetMatrixViewOffsetStereo(right, left)
}

fn C.rlLoadDrawCube()
[inline]
pub fn rl_load_draw_cube() {
	C.rlLoadDrawCube()
}

fn C.rlLoadDrawQuad()
[inline]
pub fn rl_load_draw_quad() {
	C.rlLoadDrawQuad()
}
