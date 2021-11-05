module raylibv
// CONSTANTS //
pub const (
	raylib_version                        = 4.0
	flag_vsync_hint                       = 64
	flag_fullscreen_mode                  = 2
	flag_window_resizable                 = 4
	flag_window_undecorated               = 8
	flag_window_hidden                    = 128
	flag_window_minimized                 = 512
	flag_window_maximized                 = 1024
	flag_window_unfocused                 = 2048
	flag_window_topmost                   = 4096
	flag_window_always_run                = 256
	flag_window_transparent               = 16
	flag_window_highdpi                   = 8192
	flag_msaa_4x_hint                     = 32
	flag_interlaced_hint                  = 65536
	log_all                               = 0
	log_trace                             = 1
	log_debug                             = 2
	log_info                              = 3
	log_warning                           = 4
	log_error                             = 5
	log_fatal                             = 6
	log_none                              = 7
	key_null                              = 0
	key_apostrophe                        = 39
	key_comma                             = 44
	key_minus                             = 45
	key_period                            = 46
	key_slash                             = 47
	key_zero                              = 48
	key_one                               = 49
	key_two                               = 50
	key_three                             = 51
	key_four                              = 52
	key_five                              = 53
	key_six                               = 54
	key_seven                             = 55
	key_eight                             = 56
	key_nine                              = 57
	key_semicolon                         = 59
	key_equal                             = 61
	key_a                                 = 65
	key_b                                 = 66
	key_c                                 = 67
	key_d                                 = 68
	key_e                                 = 69
	key_f                                 = 70
	key_g                                 = 71
	key_h                                 = 72
	key_i                                 = 73
	key_j                                 = 74
	key_k                                 = 75
	key_l                                 = 76
	key_m                                 = 77
	key_n                                 = 78
	key_o                                 = 79
	key_p                                 = 80
	key_q                                 = 81
	key_r                                 = 82
	key_s                                 = 83
	key_t                                 = 84
	key_u                                 = 85
	key_v                                 = 86
	key_w                                 = 87
	key_x                                 = 88
	key_y                                 = 89
	key_z                                 = 90
	key_left_bracket                      = 91
	key_backslash                         = 92
	key_right_bracket                     = 93
	key_grave                             = 96
	key_space                             = 32
	key_escape                            = 256
	key_enter                             = 257
	key_tab                               = 258
	key_backspace                         = 259
	key_insert                            = 260
	key_delete                            = 261
	key_right                             = 262
	key_left                              = 263
	key_down                              = 264
	key_up                                = 265
	key_page_up                           = 266
	key_page_down                         = 267
	key_home                              = 268
	key_end                               = 269
	key_caps_lock                         = 280
	key_scroll_lock                       = 281
	key_num_lock                          = 282
	key_print_screen                      = 283
	key_pause                             = 284
	key_f1                                = 290
	key_f2                                = 291
	key_f3                                = 292
	key_f4                                = 293
	key_f5                                = 294
	key_f6                                = 295
	key_f7                                = 296
	key_f8                                = 297
	key_f9                                = 298
	key_f10                               = 299
	key_f11                               = 300
	key_f12                               = 301
	key_left_shift                        = 340
	key_left_control                      = 341
	key_left_alt                          = 342
	key_left_super                        = 343
	key_right_shift                       = 344
	key_right_control                     = 345
	key_right_alt                         = 346
	key_right_super                       = 347
	key_kb_menu                           = 348
	key_kp_0                              = 320
	key_kp_1                              = 321
	key_kp_2                              = 322
	key_kp_3                              = 323
	key_kp_4                              = 324
	key_kp_5                              = 325
	key_kp_6                              = 326
	key_kp_7                              = 327
	key_kp_8                              = 328
	key_kp_9                              = 329
	key_kp_decimal                        = 330
	key_kp_divide                         = 331
	key_kp_multiply                       = 332
	key_kp_subtract                       = 333
	key_kp_add                            = 334
	key_kp_enter                          = 335
	key_kp_equal                          = 336
	key_back                              = 4
	key_menu                              = 82
	key_volume_up                         = 24
	key_volume_down                       = 25
	mouse_button_left                     = 0
	mouse_button_right                    = 1
	mouse_button_middle                   = 2
	mouse_button_side                     = 3
	mouse_button_extra                    = 4
	mouse_button_forward                  = 5
	mouse_button_back                     = 6
	mouse_cursor_default                  = 0
	mouse_cursor_arrow                    = 1
	mouse_cursor_ibeam                    = 2
	mouse_cursor_crosshair                = 3
	mouse_cursor_pointing_hand            = 4
	mouse_cursor_resize_ew                = 5
	mouse_cursor_resize_ns                = 6
	mouse_cursor_resize_nwse              = 7
	mouse_cursor_resize_nesw              = 8
	mouse_cursor_resize_all               = 9
	mouse_cursor_not_allowed              = 10
	gamepad_button_unknown                = 0
	gamepad_button_left_face_up           = 1
	gamepad_button_left_face_right        = 2
	gamepad_button_left_face_down         = 3
	gamepad_button_left_face_left         = 4
	gamepad_button_right_face_up          = 5
	gamepad_button_right_face_right       = 6
	gamepad_button_right_face_down        = 7
	gamepad_button_right_face_left        = 8
	gamepad_button_left_trigger_1         = 9
	gamepad_button_left_trigger_2         = 10
	gamepad_button_right_trigger_1        = 11
	gamepad_button_right_trigger_2        = 12
	gamepad_button_middle_left            = 13
	gamepad_button_middle                 = 14
	gamepad_button_middle_right           = 15
	gamepad_button_left_thumb             = 16
	gamepad_button_right_thumb            = 17
	gamepad_axis_left_x                   = 0
	gamepad_axis_left_y                   = 1
	gamepad_axis_right_x                  = 2
	gamepad_axis_right_y                  = 3
	gamepad_axis_left_trigger             = 4
	gamepad_axis_right_trigger            = 5
	material_map_albedo                   = 0
	material_map_metalness                = 1
	material_map_normal                   = 2
	material_map_roughness                = 3
	material_map_occlusion                = 4
	material_map_emission                 = 5
	material_map_height                   = 6
	material_map_cubemap                  = 7
	material_map_irradiance               = 8
	material_map_prefilter                = 9
	material_map_brdf                     = 10
	shader_loc_vertex_position            = 0
	shader_loc_vertex_texcoord01          = 1
	shader_loc_vertex_texcoord02          = 2
	shader_loc_vertex_normal              = 3
	shader_loc_vertex_tangent             = 4
	shader_loc_vertex_color               = 5
	shader_loc_matrix_mvp                 = 6
	shader_loc_matrix_view                = 7
	shader_loc_matrix_projection          = 8
	shader_loc_matrix_model               = 9
	shader_loc_matrix_normal              = 10
	shader_loc_vector_view                = 11
	shader_loc_color_diffuse              = 12
	shader_loc_color_specular             = 13
	shader_loc_color_ambient              = 14
	shader_loc_map_albedo                 = 15
	shader_loc_map_metalness              = 16
	shader_loc_map_normal                 = 17
	shader_loc_map_roughness              = 18
	shader_loc_map_occlusion              = 19
	shader_loc_map_emission               = 20
	shader_loc_map_height                 = 21
	shader_loc_map_cubemap                = 22
	shader_loc_map_irradiance             = 23
	shader_loc_map_prefilter              = 24
	shader_loc_map_brdf                   = 25
	shader_uniform_float                  = 0
	shader_uniform_vec2                   = 1
	shader_uniform_vec3                   = 2
	shader_uniform_vec4                   = 3
	shader_uniform_int                    = 4
	shader_uniform_ivec2                  = 5
	shader_uniform_ivec3                  = 6
	shader_uniform_ivec4                  = 7
	shader_uniform_sampler2d              = 8
	shader_attrib_float                   = 0
	shader_attrib_vec2                    = 1
	shader_attrib_vec3                    = 2
	shader_attrib_vec4                    = 3
	pixelformat_uncompressed_grayscale    = 1
	pixelformat_uncompressed_gray_alpha   = 2
	pixelformat_uncompressed_r5g6b5       = 3
	pixelformat_uncompressed_r8g8b8       = 4
	pixelformat_uncompressed_r5g5b5a1     = 5
	pixelformat_uncompressed_r4g4b4a4     = 6
	pixelformat_uncompressed_r8g8b8a8     = 7
	pixelformat_uncompressed_r32          = 8
	pixelformat_uncompressed_r32g32b32    = 9
	pixelformat_uncompressed_r32g32b32a32 = 10
	pixelformat_compressed_dxt1_rgb       = 11
	pixelformat_compressed_dxt1_rgba      = 12
	pixelformat_compressed_dxt3_rgba      = 13
	pixelformat_compressed_dxt5_rgba      = 14
	pixelformat_compressed_etc1_rgb       = 15
	pixelformat_compressed_etc2_rgb       = 16
	pixelformat_compressed_etc2_eac_rgba  = 17
	pixelformat_compressed_pvrt_rgb       = 18
	pixelformat_compressed_pvrt_rgba      = 19
	pixelformat_compressed_astc_4x4_rgba  = 20
	pixelformat_compressed_astc_8x8_rgba  = 21
	texture_filter_point                  = 0
	texture_filter_bilinear               = 1
	texture_filter_trilinear              = 2
	texture_filter_anisotropic_4x         = 3
	texture_filter_anisotropic_8x         = 4
	texture_filter_anisotropic_16x        = 5
	texture_wrap_repeat                   = 0
	texture_wrap_clamp                    = 1
	texture_wrap_mirror_repeat            = 2
	texture_wrap_mirror_clamp             = 3
	cubemap_layout_auto_detect            = 0
	cubemap_layout_line_vertical          = 1
	cubemap_layout_line_horizontal        = 2
	cubemap_layout_cross_three_by_four    = 3
	cubemap_layout_cross_four_by_three    = 4
	cubemap_layout_panorama               = 5
	font_default                          = 0
	font_bitmap                           = 1
	font_sdf                              = 2
	blend_alpha                           = 0
	blend_additive                        = 1
	blend_multiplied                      = 2
	blend_add_colors                      = 3
	blend_subtract_colors                 = 4
	blend_custom                          = 5
	gesture_none                          = 0
	gesture_tap                           = 1
	gesture_doubletap                     = 2
	gesture_hold                          = 4
	gesture_drag                          = 8
	gesture_swipe_right                   = 16
	gesture_swipe_left                    = 32
	gesture_swipe_up                      = 64
	gesture_swipe_down                    = 128
	gesture_pinch_in                      = 256
	gesture_pinch_out                     = 512
	camera_custom                         = 0
	camera_free                           = 1
	camera_orbital                        = 2
	camera_first_person                   = 3
	camera_third_person                   = 4
	camera_perspective                    = 0
	camera_orthographic                   = 1
	npatch_nine_patch                     = 0
	npatch_three_patch_vertical           = 1
	npatch_three_patch_horizontal         = 2
)

// STRUCTS //
[typedef]
struct C.Vector2 {
pub mut:
	x f32
	y f32
}

pub type Vector2 = C.Vector2

[typedef]
struct C.Vector3 {
pub mut:
	x f32
	y f32
	z f32
}

pub type Vector3 = C.Vector3

[typedef]
struct C.Vector4 {
pub mut:
	x f32
	y f32
	z f32
	w f32
}

pub type Vector4 = C.Vector4

[typedef]
struct C.Matrix {
pub mut:
	m0  f32
	m4  f32
	m8  f32
	m12 f32
	m1  f32
	m5  f32
	m9  f32
	m13 f32
	m2  f32
	m6  f32
	m10 f32
	m14 f32
	m3  f32
	m7  f32
	m11 f32
	m15 f32
}

pub type Matrix = C.Matrix

[typedef]
struct C.Color {
pub mut:
	r byte
	g byte
	b byte
	a byte
}

pub type Color = C.Color

[typedef]
struct C.Rectangle {
pub mut:
	x      f32
	y      f32
	width  f32
	height f32
}

pub type Rectangle = C.Rectangle

[typedef]
struct C.Image {
pub mut:
	data    voidptr
	width   int
	height  int
	mipmaps int
	format  int
}

pub type Image = C.Image

[typedef]
struct C.Texture {
pub mut:
	id      u32
	width   int
	height  int
	mipmaps int
	format  int
}

pub type Texture = C.Texture

[typedef]
struct C.RenderTexture {
pub mut:
	id      u32
	texture Texture
	depth   Texture
}

pub type RenderTexture = C.RenderTexture

[typedef]
struct C.NPatchInfo {
pub mut:
	source Rectangle
	left   int
	top    int
	right  int
	bottom int
	layout int
}

pub type NPatchInfo = C.NPatchInfo

[typedef]
struct C.GlyphInfo {
pub mut:
	value    int
	offsetX  int
	offsetY  int
	advanceX int
	image    Image
}

pub type GlyphInfo = C.GlyphInfo

[typedef]
struct C.Font {
pub mut:
	baseSize     int
	glyphCount   int
	glyphPadding int
	texture      Texture2D
	recs         &Rectangle
	glyphs       &GlyphInfo
}

pub type Font = C.Font

[typedef]
struct C.Camera3D {
pub mut:
	position   Vector3
	target     Vector3
	up         Vector3
	fovy       f32
	projection int
}

pub type Camera3D = C.Camera3D

[typedef]
struct C.Camera2D {
pub mut:
	offset   Vector2
	target   Vector2
	rotation f32
	zoom     f32
}

pub type Camera2D = C.Camera2D

[typedef]
struct C.Mesh {
pub mut:
	vertexCount   int
	triangleCount int
	vertices      &f32
	texcoords     &f32
	texcoords2    &f32
	normals       &f32
	tangents      &f32
	colors        &byte
	indices       &u16
	animVertices  &f32
	animNormals   &f32
	boneIds       &byte
	boneWeights   &f32
	vaoId         u32
	vboId         &u32
}

pub type Mesh = C.Mesh

[typedef]
struct C.Shader {
pub mut:
	id   u32
	locs &int
}

pub type Shader = C.Shader

[typedef]
struct C.MaterialMap {
pub mut:
	texture Texture2D
	color   Color
	value   f32
}

pub type MaterialMap = C.MaterialMap

[typedef]
struct C.Material {
pub mut:
	shader Shader
	maps   &MaterialMap
	params [4]f32
}

pub type Material = C.Material

[typedef]
struct C.Transform {
pub mut:
	translation Vector3
	rotation    Quaternion
	scale       Vector3
}

pub type Transform = C.Transform

[typedef]
struct C.BoneInfo {
pub mut:
	name   [32]i8
	parent int
}

pub type BoneInfo = C.BoneInfo

[typedef]
struct C.Model {
pub mut:
	transform     Matrix
	meshCount     int
	materialCount int
	meshes        &Mesh
	materials     &Material
	meshMaterial  &int
	boneCount     int
	bones         &BoneInfo
	bindPose      &Transform
}

pub type Model = C.Model

[typedef]
struct C.ModelAnimation {
pub mut:
	boneCount  int
	frameCount int
	bones      &BoneInfo
	framePoses &&Transform
}

pub type ModelAnimation = C.ModelAnimation

[typedef]
struct C.Ray {
pub mut:
	position  Vector3
	direction Vector3
}

pub type Ray = C.Ray

[typedef]
struct C.RayCollision {
pub mut:
	hit      bool
	distance f32
	point    Vector3
	normal   Vector3
}

pub type RayCollision = C.RayCollision

[typedef]
struct C.BoundingBox {
pub mut:
	min Vector3
	max Vector3
}

pub type BoundingBox = C.BoundingBox

[typedef]
struct C.Wave {
pub mut:
	frameCount u32
	sampleRate u32
	sampleSize u32
	channels   u32
	data       voidptr
}

pub type Wave = C.Wave

[typedef]
struct C.rAudioBuffer {
}

pub type RAudioBuffer = C.rAudioBuffer

[typedef]
struct C.AudioStream {
pub mut:
	buffer     &RAudioBuffer
	sampleRate u32
	sampleSize u32
	channels   u32
}

pub type AudioStream = C.AudioStream

[typedef]
struct C.Sound {
pub mut:
	stream     AudioStream
	frameCount u32
}

pub type Sound = C.Sound

[typedef]
struct C.Music {
pub mut:
	stream     AudioStream
	frameCount u32
	looping    bool
	ctxType    int
	ctxData    voidptr
}

pub type Music = C.Music

[typedef]
struct C.VrDeviceInfo {
pub mut:
	hResolution            int
	vResolution            int
	hScreenSize            f32
	vScreenSize            f32
	vScreenCenter          f32
	eyeToScreenDistance    f32
	lensSeparationDistance f32
	interpupillaryDistance f32
	lensDistortionValues   [4]f32
	chromaAbCorrection     [4]f32
}

pub type VrDeviceInfo = C.VrDeviceInfo

[typedef]
struct C.VrStereoConfig {
pub mut:
	projection        [2]Matrix
	viewOffset        [2]Matrix
	leftLensCenter    [2]f32
	rightLensCenter   [2]f32
	leftScreenCenter  [2]f32
	rightScreenCenter [2]f32
	scale             [2]f32
	scaleIn           [2]f32
}

pub type VrStereoConfig = C.VrStereoConfig

// ALIASES //
pub type Quaternion = C.Vector4
pub type Texture2D = C.Texture
pub type TextureCubemap = C.Texture
pub type RenderTexture2D = C.RenderTexture
pub type Camera = C.Camera3D

// FUNCTIONS //

fn C.InitWindow(int, int, &i8)
[inline]
pub fn init_window(width int, height int, title &i8) {
	C.InitWindow(width, height, title)
}

fn C.WindowShouldClose() bool
[inline]
pub fn window_should_close() bool {
	return C.WindowShouldClose()
}

fn C.CloseWindow()
[inline]
pub fn close_window() {
	C.CloseWindow()
}

fn C.IsWindowReady() bool
[inline]
pub fn is_window_ready() bool {
	return C.IsWindowReady()
}

fn C.IsWindowFullscreen() bool
[inline]
pub fn is_window_fullscreen() bool {
	return C.IsWindowFullscreen()
}

fn C.IsWindowHidden() bool
[inline]
pub fn is_window_hidden() bool {
	return C.IsWindowHidden()
}

fn C.IsWindowMinimized() bool
[inline]
pub fn is_window_minimized() bool {
	return C.IsWindowMinimized()
}

fn C.IsWindowMaximized() bool
[inline]
pub fn is_window_maximized() bool {
	return C.IsWindowMaximized()
}

fn C.IsWindowFocused() bool
[inline]
pub fn is_window_focused() bool {
	return C.IsWindowFocused()
}

fn C.IsWindowResized() bool
[inline]
pub fn is_window_resized() bool {
	return C.IsWindowResized()
}

fn C.IsWindowState(u32) bool
[inline]
pub fn is_window_state(flag u32) bool {
	return C.IsWindowState(flag)
}

fn C.SetWindowState(u32)
[inline]
pub fn set_window_state(flags u32) {
	C.SetWindowState(flags)
}

fn C.ClearWindowState(u32)
[inline]
pub fn clear_window_state(flags u32) {
	C.ClearWindowState(flags)
}

fn C.ToggleFullscreen()
[inline]
pub fn toggle_fullscreen() {
	C.ToggleFullscreen()
}

fn C.MaximizeWindow()
[inline]
pub fn maximize_window() {
	C.MaximizeWindow()
}

fn C.MinimizeWindow()
[inline]
pub fn minimize_window() {
	C.MinimizeWindow()
}

fn C.RestoreWindow()
[inline]
pub fn restore_window() {
	C.RestoreWindow()
}

fn C.SetWindowIcon(Image)
[inline]
pub fn set_window_icon(image Image) {
	C.SetWindowIcon(image)
}

fn C.SetWindowTitle(&i8)
[inline]
pub fn set_window_title(title &i8) {
	C.SetWindowTitle(title)
}

fn C.SetWindowPosition(int, int)
[inline]
pub fn set_window_position(x int, y int) {
	C.SetWindowPosition(x, y)
}

fn C.SetWindowMonitor(int)
[inline]
pub fn set_window_monitor(monitor int) {
	C.SetWindowMonitor(monitor)
}

fn C.SetWindowMinSize(int, int)
[inline]
pub fn set_window_min_size(width int, height int) {
	C.SetWindowMinSize(width, height)
}

fn C.SetWindowSize(int, int)
[inline]
pub fn set_window_size(width int, height int) {
	C.SetWindowSize(width, height)
}

fn C.GetWindowHandle() voidptr
[inline]
pub fn get_window_handle() voidptr {
	return C.GetWindowHandle()
}

fn C.GetScreenWidth() int
[inline]
pub fn get_screen_width() int {
	return C.GetScreenWidth()
}

fn C.GetScreenHeight() int
[inline]
pub fn get_screen_height() int {
	return C.GetScreenHeight()
}

fn C.GetMonitorCount() int
[inline]
pub fn get_monitor_count() int {
	return C.GetMonitorCount()
}

fn C.GetCurrentMonitor() int
[inline]
pub fn get_current_monitor() int {
	return C.GetCurrentMonitor()
}

fn C.GetMonitorPosition(int) Vector2
[inline]
pub fn get_monitor_position(monitor int) Vector2 {
	return C.GetMonitorPosition(monitor)
}

fn C.GetMonitorWidth(int) int
[inline]
pub fn get_monitor_width(monitor int) int {
	return C.GetMonitorWidth(monitor)
}

fn C.GetMonitorHeight(int) int
[inline]
pub fn get_monitor_height(monitor int) int {
	return C.GetMonitorHeight(monitor)
}

fn C.GetMonitorPhysicalWidth(int) int
[inline]
pub fn get_monitor_physical_width(monitor int) int {
	return C.GetMonitorPhysicalWidth(monitor)
}

fn C.GetMonitorPhysicalHeight(int) int
[inline]
pub fn get_monitor_physical_height(monitor int) int {
	return C.GetMonitorPhysicalHeight(monitor)
}

fn C.GetMonitorRefreshRate(int) int
[inline]
pub fn get_monitor_refresh_rate(monitor int) int {
	return C.GetMonitorRefreshRate(monitor)
}

fn C.GetWindowPosition() Vector2
[inline]
pub fn get_window_position() Vector2 {
	return C.GetWindowPosition()
}

fn C.GetWindowScaleDPI() Vector2
[inline]
pub fn get_window_scale_dpi() Vector2 {
	return C.GetWindowScaleDPI()
}

fn C.GetMonitorName(int) &i8
[inline]
pub fn get_monitor_name(monitor int) &i8 {
	return C.GetMonitorName(monitor)
}

fn C.SetClipboardText(&i8)
[inline]
pub fn set_clipboard_text(text &i8) {
	C.SetClipboardText(text)
}

fn C.GetClipboardText() &i8
[inline]
pub fn get_clipboard_text() &i8 {
	return C.GetClipboardText()
}

fn C.SwapScreenBuffer()
[inline]
pub fn swap_screen_buffer() {
	C.SwapScreenBuffer()
}

fn C.PollInputEvents()
[inline]
pub fn poll_input_events() {
	C.PollInputEvents()
}

fn C.WaitTime(f32)
[inline]
pub fn wait_time(ms f32) {
	C.WaitTime(ms)
}

fn C.ShowCursor()
[inline]
pub fn show_cursor() {
	C.ShowCursor()
}

fn C.HideCursor()
[inline]
pub fn hide_cursor() {
	C.HideCursor()
}

fn C.IsCursorHidden() bool
[inline]
pub fn is_cursor_hidden() bool {
	return C.IsCursorHidden()
}

fn C.EnableCursor()
[inline]
pub fn enable_cursor() {
	C.EnableCursor()
}

fn C.DisableCursor()
[inline]
pub fn disable_cursor() {
	C.DisableCursor()
}

fn C.IsCursorOnScreen() bool
[inline]
pub fn is_cursor_on_screen() bool {
	return C.IsCursorOnScreen()
}

fn C.ClearBackground(Color)
[inline]
pub fn clear_background(color Color) {
	C.ClearBackground(color)
}

fn C.BeginDrawing()
[inline]
pub fn begin_drawing() {
	C.BeginDrawing()
}

fn C.EndDrawing()
[inline]
pub fn end_drawing() {
	C.EndDrawing()
}

fn C.BeginMode2D(Camera2D)
[inline]
pub fn begin_mode2_d(camera Camera2D) {
	C.BeginMode2D(camera)
}

fn C.EndMode2D()
[inline]
pub fn end_mode2_d() {
	C.EndMode2D()
}

fn C.BeginMode3D(Camera3D)
[inline]
pub fn begin_mode3_d(camera Camera3D) {
	C.BeginMode3D(camera)
}

fn C.EndMode3D()
[inline]
pub fn end_mode3_d() {
	C.EndMode3D()
}

fn C.BeginTextureMode(RenderTexture2D)
[inline]
pub fn begin_texture_mode(target RenderTexture2D) {
	C.BeginTextureMode(target)
}

fn C.EndTextureMode()
[inline]
pub fn end_texture_mode() {
	C.EndTextureMode()
}

fn C.BeginShaderMode(Shader)
[inline]
pub fn begin_shader_mode(shader Shader) {
	C.BeginShaderMode(shader)
}

fn C.EndShaderMode()
[inline]
pub fn end_shader_mode() {
	C.EndShaderMode()
}

fn C.BeginBlendMode(int)
[inline]
pub fn begin_blend_mode(mode int) {
	C.BeginBlendMode(mode)
}

fn C.EndBlendMode()
[inline]
pub fn end_blend_mode() {
	C.EndBlendMode()
}

fn C.BeginScissorMode(int, int, int, int)
[inline]
pub fn begin_scissor_mode(x int, y int, width int, height int) {
	C.BeginScissorMode(x, y, width, height)
}

fn C.EndScissorMode()
[inline]
pub fn end_scissor_mode() {
	C.EndScissorMode()
}

fn C.BeginVrStereoMode(VrStereoConfig)
[inline]
pub fn begin_vr_stereo_mode(config VrStereoConfig) {
	C.BeginVrStereoMode(config)
}

fn C.EndVrStereoMode()
[inline]
pub fn end_vr_stereo_mode() {
	C.EndVrStereoMode()
}

fn C.LoadVrStereoConfig(VrDeviceInfo) VrStereoConfig
[inline]
pub fn load_vr_stereo_config(device VrDeviceInfo) VrStereoConfig {
	return C.LoadVrStereoConfig(device)
}

fn C.UnloadVrStereoConfig(VrStereoConfig)
[inline]
pub fn unload_vr_stereo_config(config VrStereoConfig) {
	C.UnloadVrStereoConfig(config)
}

fn C.LoadShader(&i8, &i8) Shader
[inline]
pub fn load_shader(vsFileName &i8, fsFileName &i8) Shader {
	return C.LoadShader(vsFileName, fsFileName)
}

fn C.LoadShaderFromMemory(&i8, &i8) Shader
[inline]
pub fn load_shader_from_memory(vsCode &i8, fsCode &i8) Shader {
	return C.LoadShaderFromMemory(vsCode, fsCode)
}

fn C.GetShaderLocation(Shader, &i8) int
[inline]
pub fn get_shader_location(shader Shader, uniformName &i8) int {
	return C.GetShaderLocation(shader, uniformName)
}

fn C.GetShaderLocationAttrib(Shader, &i8) int
[inline]
pub fn get_shader_location_attrib(shader Shader, attribName &i8) int {
	return C.GetShaderLocationAttrib(shader, attribName)
}

fn C.SetShaderValue(Shader, int, voidptr, int)
[inline]
pub fn set_shader_value(shader Shader, locIndex int, value voidptr, uniformType int) {
	C.SetShaderValue(shader, locIndex, value, uniformType)
}

fn C.SetShaderValueV(Shader, int, voidptr, int, int)
[inline]
pub fn set_shader_value_v(shader Shader, locIndex int, value voidptr, uniformType int, count int) {
	C.SetShaderValueV(shader, locIndex, value, uniformType, count)
}

fn C.SetShaderValueMatrix(Shader, int, Matrix)
[inline]
pub fn set_shader_value_matrix(shader Shader, locIndex int, mat Matrix) {
	C.SetShaderValueMatrix(shader, locIndex, mat)
}

fn C.SetShaderValueTexture(Shader, int, Texture2D)
[inline]
pub fn set_shader_value_texture(shader Shader, locIndex int, texture Texture2D) {
	C.SetShaderValueTexture(shader, locIndex, texture)
}

fn C.UnloadShader(Shader)
[inline]
pub fn unload_shader(shader Shader) {
	C.UnloadShader(shader)
}

fn C.GetMouseRay(Vector2, Camera) Ray
[inline]
pub fn get_mouse_ray(mousePosition Vector2, camera Camera) Ray {
	return C.GetMouseRay(mousePosition, camera)
}

fn C.GetCameraMatrix(Camera) Matrix
[inline]
pub fn get_camera_matrix(camera Camera) Matrix {
	return C.GetCameraMatrix(camera)
}

fn C.GetCameraMatrix2D(Camera2D) Matrix
[inline]
pub fn get_camera_matrix2_d(camera Camera2D) Matrix {
	return C.GetCameraMatrix2D(camera)
}

fn C.GetWorldToScreen(Vector3, Camera) Vector2
[inline]
pub fn get_world_to_screen(position Vector3, camera Camera) Vector2 {
	return C.GetWorldToScreen(position, camera)
}

fn C.GetWorldToScreenEx(Vector3, Camera, int, int) Vector2
[inline]
pub fn get_world_to_screen_ex(position Vector3, camera Camera, width int, height int) Vector2 {
	return C.GetWorldToScreenEx(position, camera, width, height)
}

fn C.GetWorldToScreen2D(Vector2, Camera2D) Vector2
[inline]
pub fn get_world_to_screen2_d(position Vector2, camera Camera2D) Vector2 {
	return C.GetWorldToScreen2D(position, camera)
}

fn C.GetScreenToWorld2D(Vector2, Camera2D) Vector2
[inline]
pub fn get_screen_to_world2_d(position Vector2, camera Camera2D) Vector2 {
	return C.GetScreenToWorld2D(position, camera)
}

fn C.SetTargetFPS(int)
[inline]
pub fn set_target_fps(fps int) {
	C.SetTargetFPS(fps)
}

fn C.GetFPS() int
[inline]
pub fn get_fps() int {
	return C.GetFPS()
}

fn C.GetFrameTime() f32
[inline]
pub fn get_frame_time() f32 {
	return C.GetFrameTime()
}

fn C.GetTime() f64
[inline]
pub fn get_time() f64 {
	return C.GetTime()
}

fn C.GetRandomValue(int, int) int
[inline]
pub fn get_random_value(min int, max int) int {
	return C.GetRandomValue(min, max)
}

fn C.SetRandomSeed(u32)
[inline]
pub fn set_random_seed(seed u32) {
	C.SetRandomSeed(seed)
}

fn C.TakeScreenshot(&i8)
[inline]
pub fn take_screenshot(fileName &i8) {
	C.TakeScreenshot(fileName)
}

fn C.SetConfigFlags(u32)
[inline]
pub fn set_config_flags(flags u32) {
	C.SetConfigFlags(flags)
}

fn C.SetTraceLogLevel(int)
[inline]
pub fn set_trace_log_level(logLevel int) {
	C.SetTraceLogLevel(logLevel)
}

fn C.MemAlloc(int) voidptr
[inline]
pub fn mem_alloc(size int) voidptr {
	return C.MemAlloc(size)
}

fn C.MemRealloc(voidptr, int) voidptr
[inline]
pub fn mem_realloc(ptr voidptr, size int) voidptr {
	return C.MemRealloc(ptr, size)
}

fn C.MemFree(voidptr)
[inline]
pub fn mem_free(ptr voidptr) {
	C.MemFree(ptr)
}

fn C.LoadFileData(&i8, &u32) &byte
[inline]
pub fn load_file_data(fileName &i8, bytesRead &u32) &byte {
	return C.LoadFileData(fileName, bytesRead)
}

fn C.UnloadFileData(&byte)
[inline]
pub fn unload_file_data(data &byte) {
	C.UnloadFileData(data)
}

fn C.SaveFileData(&i8, voidptr, u32) bool
[inline]
pub fn save_file_data(fileName &i8, data voidptr, bytesToWrite u32) bool {
	return C.SaveFileData(fileName, data, bytesToWrite)
}

fn C.LoadFileText(&i8) &i8
[inline]
pub fn load_file_text(fileName &i8) &i8 {
	return C.LoadFileText(fileName)
}

fn C.UnloadFileText(&i8)
[inline]
pub fn unload_file_text(text &i8) {
	C.UnloadFileText(text)
}

fn C.SaveFileText(&i8, &i8) bool
[inline]
pub fn save_file_text(fileName &i8, text &i8) bool {
	return C.SaveFileText(fileName, text)
}

fn C.FileExists(&i8) bool
[inline]
pub fn file_exists(fileName &i8) bool {
	return C.FileExists(fileName)
}

fn C.DirectoryExists(&i8) bool
[inline]
pub fn directory_exists(dirPath &i8) bool {
	return C.DirectoryExists(dirPath)
}

fn C.IsFileExtension(&i8, &i8) bool
[inline]
pub fn is_file_extension(fileName &i8, ext &i8) bool {
	return C.IsFileExtension(fileName, ext)
}

fn C.GetFileExtension(&i8) &i8
[inline]
pub fn get_file_extension(fileName &i8) &i8 {
	return C.GetFileExtension(fileName)
}

fn C.GetFileName(&i8) &i8
[inline]
pub fn get_file_name(filePath &i8) &i8 {
	return C.GetFileName(filePath)
}

fn C.GetFileNameWithoutExt(&i8) &i8
[inline]
pub fn get_file_name_without_ext(filePath &i8) &i8 {
	return C.GetFileNameWithoutExt(filePath)
}

fn C.GetDirectoryPath(&i8) &i8
[inline]
pub fn get_directory_path(filePath &i8) &i8 {
	return C.GetDirectoryPath(filePath)
}

fn C.GetPrevDirectoryPath(&i8) &i8
[inline]
pub fn get_prev_directory_path(dirPath &i8) &i8 {
	return C.GetPrevDirectoryPath(dirPath)
}

fn C.GetWorkingDirectory() &i8
[inline]
pub fn get_working_directory() &i8 {
	return C.GetWorkingDirectory()
}

fn C.GetDirectoryFiles(&i8, &int) &&i8
[inline]
pub fn get_directory_files(dirPath &i8, count &int) &&i8 {
	return C.GetDirectoryFiles(dirPath, count)
}

fn C.ClearDirectoryFiles()
[inline]
pub fn clear_directory_files() {
	C.ClearDirectoryFiles()
}

fn C.ChangeDirectory(&i8) bool
[inline]
pub fn change_directory(dir &i8) bool {
	return C.ChangeDirectory(dir)
}

fn C.IsFileDropped() bool
[inline]
pub fn is_file_dropped() bool {
	return C.IsFileDropped()
}

fn C.GetDroppedFiles(&int) &&i8
[inline]
pub fn get_dropped_files(count &int) &&i8 {
	return C.GetDroppedFiles(count)
}

fn C.ClearDroppedFiles()
[inline]
pub fn clear_dropped_files() {
	C.ClearDroppedFiles()
}

fn C.GetFileModTime(&i8) i64
[inline]
pub fn get_file_mod_time(fileName &i8) i64 {
	return C.GetFileModTime(fileName)
}

fn C.CompressData(&byte, int, &int) &byte
[inline]
pub fn compress_data(data &byte, dataLength int, compDataLength &int) &byte {
	return C.CompressData(data, dataLength, compDataLength)
}

fn C.DecompressData(&byte, int, &int) &byte
[inline]
pub fn decompress_data(compData &byte, compDataLength int, dataLength &int) &byte {
	return C.DecompressData(compData, compDataLength, dataLength)
}

fn C.EncodeDataBase64(&byte, int, &int) &i8
[inline]
pub fn encode_data_base64(data &byte, dataLength int, outputLength &int) &i8 {
	return C.EncodeDataBase64(data, dataLength, outputLength)
}

fn C.DecodeDataBase64(&byte, &int) &byte
[inline]
pub fn decode_data_base64(data &byte, outputLength &int) &byte {
	return C.DecodeDataBase64(data, outputLength)
}

fn C.SaveStorageValue(u32, int) bool
[inline]
pub fn save_storage_value(position u32, value int) bool {
	return C.SaveStorageValue(position, value)
}

fn C.LoadStorageValue(u32) int
[inline]
pub fn load_storage_value(position u32) int {
	return C.LoadStorageValue(position)
}

fn C.OpenURL(&i8)
[inline]
pub fn open_url(url &i8) {
	C.OpenURL(url)
}

fn C.IsKeyPressed(int) bool
[inline]
pub fn is_key_pressed(key int) bool {
	return C.IsKeyPressed(key)
}

fn C.IsKeyDown(int) bool
[inline]
pub fn is_key_down(key int) bool {
	return C.IsKeyDown(key)
}

fn C.IsKeyReleased(int) bool
[inline]
pub fn is_key_released(key int) bool {
	return C.IsKeyReleased(key)
}

fn C.IsKeyUp(int) bool
[inline]
pub fn is_key_up(key int) bool {
	return C.IsKeyUp(key)
}

fn C.SetExitKey(int)
[inline]
pub fn set_exit_key(key int) {
	C.SetExitKey(key)
}

fn C.GetKeyPressed() int
[inline]
pub fn get_key_pressed() int {
	return C.GetKeyPressed()
}

fn C.GetCharPressed() int
[inline]
pub fn get_char_pressed() int {
	return C.GetCharPressed()
}

fn C.IsGamepadAvailable(int) bool
[inline]
pub fn is_gamepad_available(gamepad int) bool {
	return C.IsGamepadAvailable(gamepad)
}

fn C.GetGamepadName(int) &i8
[inline]
pub fn get_gamepad_name(gamepad int) &i8 {
	return C.GetGamepadName(gamepad)
}

fn C.IsGamepadButtonPressed(int, int) bool
[inline]
pub fn is_gamepad_button_pressed(gamepad int, button int) bool {
	return C.IsGamepadButtonPressed(gamepad, button)
}

fn C.IsGamepadButtonDown(int, int) bool
[inline]
pub fn is_gamepad_button_down(gamepad int, button int) bool {
	return C.IsGamepadButtonDown(gamepad, button)
}

fn C.IsGamepadButtonReleased(int, int) bool
[inline]
pub fn is_gamepad_button_released(gamepad int, button int) bool {
	return C.IsGamepadButtonReleased(gamepad, button)
}

fn C.IsGamepadButtonUp(int, int) bool
[inline]
pub fn is_gamepad_button_up(gamepad int, button int) bool {
	return C.IsGamepadButtonUp(gamepad, button)
}

fn C.GetGamepadButtonPressed() int
[inline]
pub fn get_gamepad_button_pressed() int {
	return C.GetGamepadButtonPressed()
}

fn C.GetGamepadAxisCount(int) int
[inline]
pub fn get_gamepad_axis_count(gamepad int) int {
	return C.GetGamepadAxisCount(gamepad)
}

fn C.GetGamepadAxisMovement(int, int) f32
[inline]
pub fn get_gamepad_axis_movement(gamepad int, axis int) f32 {
	return C.GetGamepadAxisMovement(gamepad, axis)
}

fn C.SetGamepadMappings(&i8) int
[inline]
pub fn set_gamepad_mappings(mappings &i8) int {
	return C.SetGamepadMappings(mappings)
}

fn C.IsMouseButtonPressed(int) bool
[inline]
pub fn is_mouse_button_pressed(button int) bool {
	return C.IsMouseButtonPressed(button)
}

fn C.IsMouseButtonDown(int) bool
[inline]
pub fn is_mouse_button_down(button int) bool {
	return C.IsMouseButtonDown(button)
}

fn C.IsMouseButtonReleased(int) bool
[inline]
pub fn is_mouse_button_released(button int) bool {
	return C.IsMouseButtonReleased(button)
}

fn C.IsMouseButtonUp(int) bool
[inline]
pub fn is_mouse_button_up(button int) bool {
	return C.IsMouseButtonUp(button)
}

fn C.GetMouseX() int
[inline]
pub fn get_mouse_x() int {
	return C.GetMouseX()
}

fn C.GetMouseY() int
[inline]
pub fn get_mouse_y() int {
	return C.GetMouseY()
}

fn C.GetMousePosition() Vector2
[inline]
pub fn get_mouse_position() Vector2 {
	return C.GetMousePosition()
}

fn C.GetMouseDelta() Vector2
[inline]
pub fn get_mouse_delta() Vector2 {
	return C.GetMouseDelta()
}

fn C.SetMousePosition(int, int)
[inline]
pub fn set_mouse_position(x int, y int) {
	C.SetMousePosition(x, y)
}

fn C.SetMouseOffset(int, int)
[inline]
pub fn set_mouse_offset(offsetX int, offsetY int) {
	C.SetMouseOffset(offsetX, offsetY)
}

fn C.SetMouseScale(f32, f32)
[inline]
pub fn set_mouse_scale(scaleX f32, scaleY f32) {
	C.SetMouseScale(scaleX, scaleY)
}

fn C.GetMouseWheelMove() f32
[inline]
pub fn get_mouse_wheel_move() f32 {
	return C.GetMouseWheelMove()
}

fn C.SetMouseCursor(int)
[inline]
pub fn set_mouse_cursor(cursor int) {
	C.SetMouseCursor(cursor)
}

fn C.GetTouchX() int
[inline]
pub fn get_touch_x() int {
	return C.GetTouchX()
}

fn C.GetTouchY() int
[inline]
pub fn get_touch_y() int {
	return C.GetTouchY()
}

fn C.GetTouchPosition(int) Vector2
[inline]
pub fn get_touch_position(index int) Vector2 {
	return C.GetTouchPosition(index)
}

fn C.GetTouchPointId(int) int
[inline]
pub fn get_touch_point_id(index int) int {
	return C.GetTouchPointId(index)
}

fn C.GetTouchPointCount() int
[inline]
pub fn get_touch_point_count() int {
	return C.GetTouchPointCount()
}

fn C.SetGesturesEnabled(u32)
[inline]
pub fn set_gestures_enabled(flags u32) {
	C.SetGesturesEnabled(flags)
}

fn C.IsGestureDetected(int) bool
[inline]
pub fn is_gesture_detected(gesture int) bool {
	return C.IsGestureDetected(gesture)
}

fn C.GetGestureDetected() int
[inline]
pub fn get_gesture_detected() int {
	return C.GetGestureDetected()
}

fn C.GetGestureHoldDuration() f32
[inline]
pub fn get_gesture_hold_duration() f32 {
	return C.GetGestureHoldDuration()
}

fn C.GetGestureDragVector() Vector2
[inline]
pub fn get_gesture_drag_vector() Vector2 {
	return C.GetGestureDragVector()
}

fn C.GetGestureDragAngle() f32
[inline]
pub fn get_gesture_drag_angle() f32 {
	return C.GetGestureDragAngle()
}

fn C.GetGesturePinchVector() Vector2
[inline]
pub fn get_gesture_pinch_vector() Vector2 {
	return C.GetGesturePinchVector()
}

fn C.GetGesturePinchAngle() f32
[inline]
pub fn get_gesture_pinch_angle() f32 {
	return C.GetGesturePinchAngle()
}

fn C.SetCameraMode(Camera, int)
[inline]
pub fn set_camera_mode(camera Camera, mode int) {
	C.SetCameraMode(camera, mode)
}

fn C.UpdateCamera(&Camera)
[inline]
pub fn update_camera(camera &Camera) {
	C.UpdateCamera(camera)
}

fn C.SetCameraPanControl(int)
[inline]
pub fn set_camera_pan_control(keyPan int) {
	C.SetCameraPanControl(keyPan)
}

fn C.SetCameraAltControl(int)
[inline]
pub fn set_camera_alt_control(keyAlt int) {
	C.SetCameraAltControl(keyAlt)
}

fn C.SetCameraSmoothZoomControl(int)
[inline]
pub fn set_camera_smooth_zoom_control(keySmoothZoom int) {
	C.SetCameraSmoothZoomControl(keySmoothZoom)
}

fn C.SetCameraMoveControls(int, int, int, int, int, int)
[inline]
pub fn set_camera_move_controls(keyFront int, keyBack int, keyRight int, keyLeft int, keyUp int, keyDown int) {
	C.SetCameraMoveControls(keyFront, keyBack, keyRight, keyLeft, keyUp, keyDown)
}

fn C.SetShapesTexture(Texture2D, Rectangle)
[inline]
pub fn set_shapes_texture(texture Texture2D, source Rectangle) {
	C.SetShapesTexture(texture, source)
}

fn C.DrawPixel(int, int, Color)
[inline]
pub fn draw_pixel(posX int, posY int, color Color) {
	C.DrawPixel(posX, posY, color)
}

fn C.DrawPixelV(Vector2, Color)
[inline]
pub fn draw_pixel_v(position Vector2, color Color) {
	C.DrawPixelV(position, color)
}

fn C.DrawLine(int, int, int, int, Color)
[inline]
pub fn draw_line(startPosX int, startPosY int, endPosX int, endPosY int, color Color) {
	C.DrawLine(startPosX, startPosY, endPosX, endPosY, color)
}

fn C.DrawLineV(Vector2, Vector2, Color)
[inline]
pub fn draw_line_v(startPos Vector2, endPos Vector2, color Color) {
	C.DrawLineV(startPos, endPos, color)
}

fn C.DrawLineEx(Vector2, Vector2, f32, Color)
[inline]
pub fn draw_line_ex(startPos Vector2, endPos Vector2, thick f32, color Color) {
	C.DrawLineEx(startPos, endPos, thick, color)
}

fn C.DrawLineBezier(Vector2, Vector2, f32, Color)
[inline]
pub fn draw_line_bezier(startPos Vector2, endPos Vector2, thick f32, color Color) {
	C.DrawLineBezier(startPos, endPos, thick, color)
}

fn C.DrawLineBezierQuad(Vector2, Vector2, Vector2, f32, Color)
[inline]
pub fn draw_line_bezier_quad(startPos Vector2, endPos Vector2, controlPos Vector2, thick f32, color Color) {
	C.DrawLineBezierQuad(startPos, endPos, controlPos, thick, color)
}

fn C.DrawLineBezierCubic(Vector2, Vector2, Vector2, Vector2, f32, Color)
[inline]
pub fn draw_line_bezier_cubic(startPos Vector2, endPos Vector2, startControlPos Vector2, endControlPos Vector2, thick f32, color Color) {
	C.DrawLineBezierCubic(startPos, endPos, startControlPos, endControlPos, thick, color)
}

fn C.DrawLineStrip(&Vector2, int, Color)
[inline]
pub fn draw_line_strip(points &Vector2, pointCount int, color Color) {
	C.DrawLineStrip(points, pointCount, color)
}

fn C.DrawCircle(int, int, f32, Color)
[inline]
pub fn draw_circle(centerX int, centerY int, radius f32, color Color) {
	C.DrawCircle(centerX, centerY, radius, color)
}

fn C.DrawCircleSector(Vector2, f32, f32, f32, int, Color)
[inline]
pub fn draw_circle_sector(center Vector2, radius f32, startAngle f32, endAngle f32, segments int, color Color) {
	C.DrawCircleSector(center, radius, startAngle, endAngle, segments, color)
}

fn C.DrawCircleSectorLines(Vector2, f32, f32, f32, int, Color)
[inline]
pub fn draw_circle_sector_lines(center Vector2, radius f32, startAngle f32, endAngle f32, segments int, color Color) {
	C.DrawCircleSectorLines(center, radius, startAngle, endAngle, segments, color)
}

fn C.DrawCircleGradient(int, int, f32, Color, Color)
[inline]
pub fn draw_circle_gradient(centerX int, centerY int, radius f32, color1 Color, color2 Color) {
	C.DrawCircleGradient(centerX, centerY, radius, color1, color2)
}

fn C.DrawCircleV(Vector2, f32, Color)
[inline]
pub fn draw_circle_v(center Vector2, radius f32, color Color) {
	C.DrawCircleV(center, radius, color)
}

fn C.DrawCircleLines(int, int, f32, Color)
[inline]
pub fn draw_circle_lines(centerX int, centerY int, radius f32, color Color) {
	C.DrawCircleLines(centerX, centerY, radius, color)
}

fn C.DrawEllipse(int, int, f32, f32, Color)
[inline]
pub fn draw_ellipse(centerX int, centerY int, radiusH f32, radiusV f32, color Color) {
	C.DrawEllipse(centerX, centerY, radiusH, radiusV, color)
}

fn C.DrawEllipseLines(int, int, f32, f32, Color)
[inline]
pub fn draw_ellipse_lines(centerX int, centerY int, radiusH f32, radiusV f32, color Color) {
	C.DrawEllipseLines(centerX, centerY, radiusH, radiusV, color)
}

fn C.DrawRing(Vector2, f32, f32, f32, f32, int, Color)
[inline]
pub fn draw_ring(center Vector2, innerRadius f32, outerRadius f32, startAngle f32, endAngle f32, segments int, color Color) {
	C.DrawRing(center, innerRadius, outerRadius, startAngle, endAngle, segments, color)
}

fn C.DrawRingLines(Vector2, f32, f32, f32, f32, int, Color)
[inline]
pub fn draw_ring_lines(center Vector2, innerRadius f32, outerRadius f32, startAngle f32, endAngle f32, segments int, color Color) {
	C.DrawRingLines(center, innerRadius, outerRadius, startAngle, endAngle, segments,
		color)
}

fn C.DrawRectangle(int, int, int, int, Color)
[inline]
pub fn draw_rectangle(posX int, posY int, width int, height int, color Color) {
	C.DrawRectangle(posX, posY, width, height, color)
}

fn C.DrawRectangleV(Vector2, Vector2, Color)
[inline]
pub fn draw_rectangle_v(position Vector2, size Vector2, color Color) {
	C.DrawRectangleV(position, size, color)
}

fn C.DrawRectangleRec(Rectangle, Color)
[inline]
pub fn draw_rectangle_rec(rec Rectangle, color Color) {
	C.DrawRectangleRec(rec, color)
}

fn C.DrawRectanglePro(Rectangle, Vector2, f32, Color)
[inline]
pub fn draw_rectangle_pro(rec Rectangle, origin Vector2, rotation f32, color Color) {
	C.DrawRectanglePro(rec, origin, rotation, color)
}

fn C.DrawRectangleGradientV(int, int, int, int, Color, Color)
[inline]
pub fn draw_rectangle_gradient_v(posX int, posY int, width int, height int, color1 Color, color2 Color) {
	C.DrawRectangleGradientV(posX, posY, width, height, color1, color2)
}

fn C.DrawRectangleGradientH(int, int, int, int, Color, Color)
[inline]
pub fn draw_rectangle_gradient_h(posX int, posY int, width int, height int, color1 Color, color2 Color) {
	C.DrawRectangleGradientH(posX, posY, width, height, color1, color2)
}

fn C.DrawRectangleGradientEx(Rectangle, Color, Color, Color, Color)
[inline]
pub fn draw_rectangle_gradient_ex(rec Rectangle, col1 Color, col2 Color, col3 Color, col4 Color) {
	C.DrawRectangleGradientEx(rec, col1, col2, col3, col4)
}

fn C.DrawRectangleLines(int, int, int, int, Color)
[inline]
pub fn draw_rectangle_lines(posX int, posY int, width int, height int, color Color) {
	C.DrawRectangleLines(posX, posY, width, height, color)
}

fn C.DrawRectangleLinesEx(Rectangle, f32, Color)
[inline]
pub fn draw_rectangle_lines_ex(rec Rectangle, lineThick f32, color Color) {
	C.DrawRectangleLinesEx(rec, lineThick, color)
}

fn C.DrawRectangleRounded(Rectangle, f32, int, Color)
[inline]
pub fn draw_rectangle_rounded(rec Rectangle, roundness f32, segments int, color Color) {
	C.DrawRectangleRounded(rec, roundness, segments, color)
}

fn C.DrawRectangleRoundedLines(Rectangle, f32, int, f32, Color)
[inline]
pub fn draw_rectangle_rounded_lines(rec Rectangle, roundness f32, segments int, lineThick f32, color Color) {
	C.DrawRectangleRoundedLines(rec, roundness, segments, lineThick, color)
}

fn C.DrawTriangle(Vector2, Vector2, Vector2, Color)
[inline]
pub fn draw_triangle(v1 Vector2, v2 Vector2, v3 Vector2, color Color) {
	C.DrawTriangle(v1, v2, v3, color)
}

fn C.DrawTriangleLines(Vector2, Vector2, Vector2, Color)
[inline]
pub fn draw_triangle_lines(v1 Vector2, v2 Vector2, v3 Vector2, color Color) {
	C.DrawTriangleLines(v1, v2, v3, color)
}

fn C.DrawTriangleFan(&Vector2, int, Color)
[inline]
pub fn draw_triangle_fan(points &Vector2, pointCount int, color Color) {
	C.DrawTriangleFan(points, pointCount, color)
}

fn C.DrawTriangleStrip(&Vector2, int, Color)
[inline]
pub fn draw_triangle_strip(points &Vector2, pointCount int, color Color) {
	C.DrawTriangleStrip(points, pointCount, color)
}

fn C.DrawPoly(Vector2, int, f32, f32, Color)
[inline]
pub fn draw_poly(center Vector2, sides int, radius f32, rotation f32, color Color) {
	C.DrawPoly(center, sides, radius, rotation, color)
}

fn C.DrawPolyLines(Vector2, int, f32, f32, Color)
[inline]
pub fn draw_poly_lines(center Vector2, sides int, radius f32, rotation f32, color Color) {
	C.DrawPolyLines(center, sides, radius, rotation, color)
}

fn C.DrawPolyLinesEx(Vector2, int, f32, f32, f32, Color)
[inline]
pub fn draw_poly_lines_ex(center Vector2, sides int, radius f32, rotation f32, lineThick f32, color Color) {
	C.DrawPolyLinesEx(center, sides, radius, rotation, lineThick, color)
}

fn C.CheckCollisionRecs(Rectangle, Rectangle) bool
[inline]
pub fn check_collision_recs(rec1 Rectangle, rec2 Rectangle) bool {
	return C.CheckCollisionRecs(rec1, rec2)
}

fn C.CheckCollisionCircles(Vector2, f32, Vector2, f32) bool
[inline]
pub fn check_collision_circles(center1 Vector2, radius1 f32, center2 Vector2, radius2 f32) bool {
	return C.CheckCollisionCircles(center1, radius1, center2, radius2)
}

fn C.CheckCollisionCircleRec(Vector2, f32, Rectangle) bool
[inline]
pub fn check_collision_circle_rec(center Vector2, radius f32, rec Rectangle) bool {
	return C.CheckCollisionCircleRec(center, radius, rec)
}

fn C.CheckCollisionPointRec(Vector2, Rectangle) bool
[inline]
pub fn check_collision_point_rec(point Vector2, rec Rectangle) bool {
	return C.CheckCollisionPointRec(point, rec)
}

fn C.CheckCollisionPointCircle(Vector2, Vector2, f32) bool
[inline]
pub fn check_collision_point_circle(point Vector2, center Vector2, radius f32) bool {
	return C.CheckCollisionPointCircle(point, center, radius)
}

fn C.CheckCollisionPointTriangle(Vector2, Vector2, Vector2, Vector2) bool
[inline]
pub fn check_collision_point_triangle(point Vector2, p1 Vector2, p2 Vector2, p3 Vector2) bool {
	return C.CheckCollisionPointTriangle(point, p1, p2, p3)
}

fn C.CheckCollisionLines(Vector2, Vector2, Vector2, Vector2, &Vector2) bool
[inline]
pub fn check_collision_lines(startPos1 Vector2, endPos1 Vector2, startPos2 Vector2, endPos2 Vector2, collisionPoint &Vector2) bool {
	return C.CheckCollisionLines(startPos1, endPos1, startPos2, endPos2, collisionPoint)
}

fn C.CheckCollisionPointLine(Vector2, Vector2, Vector2, int) bool
[inline]
pub fn check_collision_point_line(point Vector2, p1 Vector2, p2 Vector2, threshold int) bool {
	return C.CheckCollisionPointLine(point, p1, p2, threshold)
}

fn C.GetCollisionRec(Rectangle, Rectangle) Rectangle
[inline]
pub fn get_collision_rec(rec1 Rectangle, rec2 Rectangle) Rectangle {
	return C.GetCollisionRec(rec1, rec2)
}

fn C.LoadImage(&i8) Image
[inline]
pub fn load_image(fileName &i8) Image {
	return C.LoadImage(fileName)
}

fn C.LoadImageRaw(&i8, int, int, int, int) Image
[inline]
pub fn load_image_raw(fileName &i8, width int, height int, format int, headerSize int) Image {
	return C.LoadImageRaw(fileName, width, height, format, headerSize)
}

fn C.LoadImageAnim(&i8, &int) Image
[inline]
pub fn load_image_anim(fileName &i8, frames &int) Image {
	return C.LoadImageAnim(fileName, frames)
}

fn C.LoadImageFromMemory(&i8, &byte, int) Image
[inline]
pub fn load_image_from_memory(fileType &i8, fileData &byte, dataSize int) Image {
	return C.LoadImageFromMemory(fileType, fileData, dataSize)
}

fn C.LoadImageFromTexture(Texture2D) Image
[inline]
pub fn load_image_from_texture(texture Texture2D) Image {
	return C.LoadImageFromTexture(texture)
}

fn C.LoadImageFromScreen() Image
[inline]
pub fn load_image_from_screen() Image {
	return C.LoadImageFromScreen()
}

fn C.UnloadImage(Image)
[inline]
pub fn unload_image(image Image) {
	C.UnloadImage(image)
}

fn C.ExportImage(Image, &i8) bool
[inline]
pub fn export_image(image Image, fileName &i8) bool {
	return C.ExportImage(image, fileName)
}

fn C.ExportImageAsCode(Image, &i8) bool
[inline]
pub fn export_image_as_code(image Image, fileName &i8) bool {
	return C.ExportImageAsCode(image, fileName)
}

fn C.GenImageColor(int, int, Color) Image
[inline]
pub fn gen_image_color(width int, height int, color Color) Image {
	return C.GenImageColor(width, height, color)
}

fn C.GenImageGradientV(int, int, Color, Color) Image
[inline]
pub fn gen_image_gradient_v(width int, height int, top Color, bottom Color) Image {
	return C.GenImageGradientV(width, height, top, bottom)
}

fn C.GenImageGradientH(int, int, Color, Color) Image
[inline]
pub fn gen_image_gradient_h(width int, height int, left Color, right Color) Image {
	return C.GenImageGradientH(width, height, left, right)
}

fn C.GenImageGradientRadial(int, int, f32, Color, Color) Image
[inline]
pub fn gen_image_gradient_radial(width int, height int, density f32, inner Color, outer Color) Image {
	return C.GenImageGradientRadial(width, height, density, inner, outer)
}

fn C.GenImageChecked(int, int, int, int, Color, Color) Image
[inline]
pub fn gen_image_checked(width int, height int, checksX int, checksY int, col1 Color, col2 Color) Image {
	return C.GenImageChecked(width, height, checksX, checksY, col1, col2)
}

fn C.GenImageWhiteNoise(int, int, f32) Image
[inline]
pub fn gen_image_white_noise(width int, height int, factor f32) Image {
	return C.GenImageWhiteNoise(width, height, factor)
}

fn C.GenImageCellular(int, int, int) Image
[inline]
pub fn gen_image_cellular(width int, height int, tileSize int) Image {
	return C.GenImageCellular(width, height, tileSize)
}

fn C.ImageCopy(Image) Image
[inline]
pub fn image_copy(image Image) Image {
	return C.ImageCopy(image)
}

fn C.ImageFromImage(Image, Rectangle) Image
[inline]
pub fn image_from_image(image Image, rec Rectangle) Image {
	return C.ImageFromImage(image, rec)
}

fn C.ImageText(&i8, int, Color) Image
[inline]
pub fn image_text(text &i8, fontSize int, color Color) Image {
	return C.ImageText(text, fontSize, color)
}

fn C.ImageTextEx(Font, &i8, f32, f32, Color) Image
[inline]
pub fn image_text_ex(font Font, text &i8, fontSize f32, spacing f32, tint Color) Image {
	return C.ImageTextEx(font, text, fontSize, spacing, tint)
}

fn C.ImageFormat(&Image, int)
[inline]
pub fn image_format(image &Image, newFormat int) {
	C.ImageFormat(image, newFormat)
}

fn C.ImageToPOT(&Image, Color)
[inline]
pub fn image_to_pot(image &Image, fill Color) {
	C.ImageToPOT(image, fill)
}

fn C.ImageCrop(&Image, Rectangle)
[inline]
pub fn image_crop(image &Image, crop Rectangle) {
	C.ImageCrop(image, crop)
}

fn C.ImageAlphaCrop(&Image, f32)
[inline]
pub fn image_alpha_crop(image &Image, threshold f32) {
	C.ImageAlphaCrop(image, threshold)
}

fn C.ImageAlphaClear(&Image, Color, f32)
[inline]
pub fn image_alpha_clear(image &Image, color Color, threshold f32) {
	C.ImageAlphaClear(image, color, threshold)
}

fn C.ImageAlphaMask(&Image, Image)
[inline]
pub fn image_alpha_mask(image &Image, alphaMask Image) {
	C.ImageAlphaMask(image, alphaMask)
}

fn C.ImageAlphaPremultiply(&Image)
[inline]
pub fn image_alpha_premultiply(image &Image) {
	C.ImageAlphaPremultiply(image)
}

fn C.ImageResize(&Image, int, int)
[inline]
pub fn image_resize(image &Image, newWidth int, newHeight int) {
	C.ImageResize(image, newWidth, newHeight)
}

fn C.ImageResizeNN(&Image, int, int)
[inline]
pub fn image_resize_nn(image &Image, newWidth int, newHeight int) {
	C.ImageResizeNN(image, newWidth, newHeight)
}

fn C.ImageResizeCanvas(&Image, int, int, int, int, Color)
[inline]
pub fn image_resize_canvas(image &Image, newWidth int, newHeight int, offsetX int, offsetY int, fill Color) {
	C.ImageResizeCanvas(image, newWidth, newHeight, offsetX, offsetY, fill)
}

fn C.ImageMipmaps(&Image)
[inline]
pub fn image_mipmaps(image &Image) {
	C.ImageMipmaps(image)
}

fn C.ImageDither(&Image, int, int, int, int)
[inline]
pub fn image_dither(image &Image, rBpp int, gBpp int, bBpp int, aBpp int) {
	C.ImageDither(image, rBpp, gBpp, bBpp, aBpp)
}

fn C.ImageFlipVertical(&Image)
[inline]
pub fn image_flip_vertical(image &Image) {
	C.ImageFlipVertical(image)
}

fn C.ImageFlipHorizontal(&Image)
[inline]
pub fn image_flip_horizontal(image &Image) {
	C.ImageFlipHorizontal(image)
}

fn C.ImageRotateCW(&Image)
[inline]
pub fn image_rotate_cw(image &Image) {
	C.ImageRotateCW(image)
}

fn C.ImageRotateCCW(&Image)
[inline]
pub fn image_rotate_ccw(image &Image) {
	C.ImageRotateCCW(image)
}

fn C.ImageColorTint(&Image, Color)
[inline]
pub fn image_color_tint(image &Image, color Color) {
	C.ImageColorTint(image, color)
}

fn C.ImageColorInvert(&Image)
[inline]
pub fn image_color_invert(image &Image) {
	C.ImageColorInvert(image)
}

fn C.ImageColorGrayscale(&Image)
[inline]
pub fn image_color_grayscale(image &Image) {
	C.ImageColorGrayscale(image)
}

fn C.ImageColorContrast(&Image, f32)
[inline]
pub fn image_color_contrast(image &Image, contrast f32) {
	C.ImageColorContrast(image, contrast)
}

fn C.ImageColorBrightness(&Image, int)
[inline]
pub fn image_color_brightness(image &Image, brightness int) {
	C.ImageColorBrightness(image, brightness)
}

fn C.ImageColorReplace(&Image, Color, Color)
[inline]
pub fn image_color_replace(image &Image, color Color, replace Color) {
	C.ImageColorReplace(image, color, replace)
}

fn C.LoadImageColors(Image) &Color
[inline]
pub fn load_image_colors(image Image) &Color {
	return C.LoadImageColors(image)
}

fn C.LoadImagePalette(Image, int, &int) &Color
[inline]
pub fn load_image_palette(image Image, maxPaletteSize int, colorCount &int) &Color {
	return C.LoadImagePalette(image, maxPaletteSize, colorCount)
}

fn C.UnloadImageColors(&Color)
[inline]
pub fn unload_image_colors(colors &Color) {
	C.UnloadImageColors(colors)
}

fn C.UnloadImagePalette(&Color)
[inline]
pub fn unload_image_palette(colors &Color) {
	C.UnloadImagePalette(colors)
}

fn C.GetImageAlphaBorder(Image, f32) Rectangle
[inline]
pub fn get_image_alpha_border(image Image, threshold f32) Rectangle {
	return C.GetImageAlphaBorder(image, threshold)
}

fn C.GetImageColor(Image, int, int) Color
[inline]
pub fn get_image_color(image Image, x int, y int) Color {
	return C.GetImageColor(image, x, y)
}

fn C.ImageClearBackground(&Image, Color)
[inline]
pub fn image_clear_background(dst &Image, color Color) {
	C.ImageClearBackground(dst, color)
}

fn C.ImageDrawPixel(&Image, int, int, Color)
[inline]
pub fn image_draw_pixel(dst &Image, posX int, posY int, color Color) {
	C.ImageDrawPixel(dst, posX, posY, color)
}

fn C.ImageDrawPixelV(&Image, Vector2, Color)
[inline]
pub fn image_draw_pixel_v(dst &Image, position Vector2, color Color) {
	C.ImageDrawPixelV(dst, position, color)
}

fn C.ImageDrawLine(&Image, int, int, int, int, Color)
[inline]
pub fn image_draw_line(dst &Image, startPosX int, startPosY int, endPosX int, endPosY int, color Color) {
	C.ImageDrawLine(dst, startPosX, startPosY, endPosX, endPosY, color)
}

fn C.ImageDrawLineV(&Image, Vector2, Vector2, Color)
[inline]
pub fn image_draw_line_v(dst &Image, start Vector2, end Vector2, color Color) {
	C.ImageDrawLineV(dst, start, end, color)
}

fn C.ImageDrawCircle(&Image, int, int, int, Color)
[inline]
pub fn image_draw_circle(dst &Image, centerX int, centerY int, radius int, color Color) {
	C.ImageDrawCircle(dst, centerX, centerY, radius, color)
}

fn C.ImageDrawCircleV(&Image, Vector2, int, Color)
[inline]
pub fn image_draw_circle_v(dst &Image, center Vector2, radius int, color Color) {
	C.ImageDrawCircleV(dst, center, radius, color)
}

fn C.ImageDrawRectangle(&Image, int, int, int, int, Color)
[inline]
pub fn image_draw_rectangle(dst &Image, posX int, posY int, width int, height int, color Color) {
	C.ImageDrawRectangle(dst, posX, posY, width, height, color)
}

fn C.ImageDrawRectangleV(&Image, Vector2, Vector2, Color)
[inline]
pub fn image_draw_rectangle_v(dst &Image, position Vector2, size Vector2, color Color) {
	C.ImageDrawRectangleV(dst, position, size, color)
}

fn C.ImageDrawRectangleRec(&Image, Rectangle, Color)
[inline]
pub fn image_draw_rectangle_rec(dst &Image, rec Rectangle, color Color) {
	C.ImageDrawRectangleRec(dst, rec, color)
}

fn C.ImageDrawRectangleLines(&Image, Rectangle, int, Color)
[inline]
pub fn image_draw_rectangle_lines(dst &Image, rec Rectangle, thick int, color Color) {
	C.ImageDrawRectangleLines(dst, rec, thick, color)
}

fn C.ImageDraw(&Image, Image, Rectangle, Rectangle, Color)
[inline]
pub fn image_draw(dst &Image, src Image, srcRec Rectangle, dstRec Rectangle, tint Color) {
	C.ImageDraw(dst, src, srcRec, dstRec, tint)
}

fn C.ImageDrawText(&Image, &i8, int, int, int, Color)
[inline]
pub fn image_draw_text(dst &Image, text &i8, posX int, posY int, fontSize int, color Color) {
	C.ImageDrawText(dst, text, posX, posY, fontSize, color)
}

fn C.ImageDrawTextEx(&Image, Font, &i8, Vector2, f32, f32, Color)
[inline]
pub fn image_draw_text_ex(dst &Image, font Font, text &i8, position Vector2, fontSize f32, spacing f32, tint Color) {
	C.ImageDrawTextEx(dst, font, text, position, fontSize, spacing, tint)
}

fn C.LoadTexture(&i8) Texture2D
[inline]
pub fn load_texture(fileName &i8) Texture2D {
	return C.LoadTexture(fileName)
}

fn C.LoadTextureFromImage(Image) Texture2D
[inline]
pub fn load_texture_from_image(image Image) Texture2D {
	return C.LoadTextureFromImage(image)
}

fn C.LoadTextureCubemap(Image, int) TextureCubemap
[inline]
pub fn load_texture_cubemap(image Image, layout int) TextureCubemap {
	return C.LoadTextureCubemap(image, layout)
}

fn C.LoadRenderTexture(int, int) RenderTexture2D
[inline]
pub fn load_render_texture(width int, height int) RenderTexture2D {
	return C.LoadRenderTexture(width, height)
}

fn C.UnloadTexture(Texture2D)
[inline]
pub fn unload_texture(texture Texture2D) {
	C.UnloadTexture(texture)
}

fn C.UnloadRenderTexture(RenderTexture2D)
[inline]
pub fn unload_render_texture(target RenderTexture2D) {
	C.UnloadRenderTexture(target)
}

fn C.UpdateTexture(Texture2D, voidptr)
[inline]
pub fn update_texture(texture Texture2D, pixels voidptr) {
	C.UpdateTexture(texture, pixels)
}

fn C.UpdateTextureRec(Texture2D, Rectangle, voidptr)
[inline]
pub fn update_texture_rec(texture Texture2D, rec Rectangle, pixels voidptr) {
	C.UpdateTextureRec(texture, rec, pixels)
}

fn C.GenTextureMipmaps(&Texture2D)
[inline]
pub fn gen_texture_mipmaps(texture &Texture2D) {
	C.GenTextureMipmaps(texture)
}

fn C.SetTextureFilter(Texture2D, int)
[inline]
pub fn set_texture_filter(texture Texture2D, filter int) {
	C.SetTextureFilter(texture, filter)
}

fn C.SetTextureWrap(Texture2D, int)
[inline]
pub fn set_texture_wrap(texture Texture2D, wrap int) {
	C.SetTextureWrap(texture, wrap)
}

fn C.DrawTexture(Texture2D, int, int, Color)
[inline]
pub fn draw_texture(texture Texture2D, posX int, posY int, tint Color) {
	C.DrawTexture(texture, posX, posY, tint)
}

fn C.DrawTextureV(Texture2D, Vector2, Color)
[inline]
pub fn draw_texture_v(texture Texture2D, position Vector2, tint Color) {
	C.DrawTextureV(texture, position, tint)
}

fn C.DrawTextureEx(Texture2D, Vector2, f32, f32, Color)
[inline]
pub fn draw_texture_ex(texture Texture2D, position Vector2, rotation f32, scale f32, tint Color) {
	C.DrawTextureEx(texture, position, rotation, scale, tint)
}

fn C.DrawTextureRec(Texture2D, Rectangle, Vector2, Color)
[inline]
pub fn draw_texture_rec(texture Texture2D, source Rectangle, position Vector2, tint Color) {
	C.DrawTextureRec(texture, source, position, tint)
}

fn C.DrawTextureQuad(Texture2D, Vector2, Vector2, Rectangle, Color)
[inline]
pub fn draw_texture_quad(texture Texture2D, tiling Vector2, offset Vector2, quad Rectangle, tint Color) {
	C.DrawTextureQuad(texture, tiling, offset, quad, tint)
}

fn C.DrawTextureTiled(Texture2D, Rectangle, Rectangle, Vector2, f32, f32, Color)
[inline]
pub fn draw_texture_tiled(texture Texture2D, source Rectangle, dest Rectangle, origin Vector2, rotation f32, scale f32, tint Color) {
	C.DrawTextureTiled(texture, source, dest, origin, rotation, scale, tint)
}

fn C.DrawTexturePro(Texture2D, Rectangle, Rectangle, Vector2, f32, Color)
[inline]
pub fn draw_texture_pro(texture Texture2D, source Rectangle, dest Rectangle, origin Vector2, rotation f32, tint Color) {
	C.DrawTexturePro(texture, source, dest, origin, rotation, tint)
}

fn C.DrawTextureNPatch(Texture2D, NPatchInfo, Rectangle, Vector2, f32, Color)
[inline]
pub fn draw_texture_n_patch(texture Texture2D, nPatchInfo NPatchInfo, dest Rectangle, origin Vector2, rotation f32, tint Color) {
	C.DrawTextureNPatch(texture, nPatchInfo, dest, origin, rotation, tint)
}

fn C.DrawTexturePoly(Texture2D, Vector2, &Vector2, &Vector2, int, Color)
[inline]
pub fn draw_texture_poly(texture Texture2D, center Vector2, points &Vector2, texcoords &Vector2, pointCount int, tint Color) {
	C.DrawTexturePoly(texture, center, points, texcoords, pointCount, tint)
}

fn C.Fade(Color, f32) Color
[inline]
pub fn fade(color Color, alpha f32) Color {
	return C.Fade(color, alpha)
}

fn C.ColorToInt(Color) int
[inline]
pub fn color_to_int(color Color) int {
	return C.ColorToInt(color)
}

fn C.ColorNormalize(Color) Vector4
[inline]
pub fn color_normalize(color Color) Vector4 {
	return C.ColorNormalize(color)
}

fn C.ColorFromNormalized(Vector4) Color
[inline]
pub fn color_from_normalized(normalized Vector4) Color {
	return C.ColorFromNormalized(normalized)
}

fn C.ColorToHSV(Color) Vector3
[inline]
pub fn color_to_hsv(color Color) Vector3 {
	return C.ColorToHSV(color)
}

fn C.ColorFromHSV(f32, f32, f32) Color
[inline]
pub fn color_from_hsv(hue f32, saturation f32, value f32) Color {
	return C.ColorFromHSV(hue, saturation, value)
}

fn C.ColorAlpha(Color, f32) Color
[inline]
pub fn color_alpha(color Color, alpha f32) Color {
	return C.ColorAlpha(color, alpha)
}

fn C.ColorAlphaBlend(Color, Color, Color) Color
[inline]
pub fn color_alpha_blend(dst Color, src Color, tint Color) Color {
	return C.ColorAlphaBlend(dst, src, tint)
}

fn C.GetColor(u32) Color
[inline]
pub fn get_color(hexValue u32) Color {
	return C.GetColor(hexValue)
}

fn C.GetPixelColor(voidptr, int) Color
[inline]
pub fn get_pixel_color(srcPtr voidptr, format int) Color {
	return C.GetPixelColor(srcPtr, format)
}

fn C.SetPixelColor(voidptr, Color, int)
[inline]
pub fn set_pixel_color(dstPtr voidptr, color Color, format int) {
	C.SetPixelColor(dstPtr, color, format)
}

fn C.GetPixelDataSize(int, int, int) int
[inline]
pub fn get_pixel_data_size(width int, height int, format int) int {
	return C.GetPixelDataSize(width, height, format)
}

fn C.GetFontDefault() Font
[inline]
pub fn get_font_default() Font {
	return C.GetFontDefault()
}

fn C.LoadFont(&i8) Font
[inline]
pub fn load_font(fileName &i8) Font {
	return C.LoadFont(fileName)
}

fn C.LoadFontEx(&i8, int, &int, int) Font
[inline]
pub fn load_font_ex(fileName &i8, fontSize int, fontChars &int, glyphCount int) Font {
	return C.LoadFontEx(fileName, fontSize, fontChars, glyphCount)
}

fn C.LoadFontFromImage(Image, Color, int) Font
[inline]
pub fn load_font_from_image(image Image, key Color, firstChar int) Font {
	return C.LoadFontFromImage(image, key, firstChar)
}

fn C.LoadFontFromMemory(&i8, &byte, int, int, &int, int) Font
[inline]
pub fn load_font_from_memory(fileType &i8, fileData &byte, dataSize int, fontSize int, fontChars &int, glyphCount int) Font {
	return C.LoadFontFromMemory(fileType, fileData, dataSize, fontSize, fontChars, glyphCount)
}

fn C.LoadFontData(&byte, int, int, &int, int, int) &GlyphInfo
[inline]
pub fn load_font_data(fileData &byte, dataSize int, fontSize int, fontChars &int, glyphCount int, @type int) &GlyphInfo {
	return C.LoadFontData(fileData, dataSize, fontSize, fontChars, glyphCount, @type)
}

fn C.GenImageFontAtlas(&GlyphInfo, &&Rectangle, int, int, int, int) Image
[inline]
pub fn gen_image_font_atlas(chars &GlyphInfo, recs &&Rectangle, glyphCount int, fontSize int, padding int, packMethod int) Image {
	return C.GenImageFontAtlas(chars, recs, glyphCount, fontSize, padding, packMethod)
}

fn C.UnloadFontData(&GlyphInfo, int)
[inline]
pub fn unload_font_data(chars &GlyphInfo, glyphCount int) {
	C.UnloadFontData(chars, glyphCount)
}

fn C.UnloadFont(Font)
[inline]
pub fn unload_font(font Font) {
	C.UnloadFont(font)
}

fn C.DrawFPS(int, int)
[inline]
pub fn draw_fps(posX int, posY int) {
	C.DrawFPS(posX, posY)
}

fn C.DrawText(&i8, int, int, int, Color)
[inline]
pub fn draw_text(text &i8, posX int, posY int, fontSize int, color Color) {
	C.DrawText(text, posX, posY, fontSize, color)
}

fn C.DrawTextEx(Font, &i8, Vector2, f32, f32, Color)
[inline]
pub fn draw_text_ex(font Font, text &i8, position Vector2, fontSize f32, spacing f32, tint Color) {
	C.DrawTextEx(font, text, position, fontSize, spacing, tint)
}

fn C.DrawTextPro(Font, &i8, Vector2, Vector2, f32, f32, f32, Color)
[inline]
pub fn draw_text_pro(font Font, text &i8, position Vector2, origin Vector2, rotation f32, fontSize f32, spacing f32, tint Color) {
	C.DrawTextPro(font, text, position, origin, rotation, fontSize, spacing, tint)
}

fn C.DrawTextCodepoint(Font, int, Vector2, f32, Color)
[inline]
pub fn draw_text_codepoint(font Font, codepoint int, position Vector2, fontSize f32, tint Color) {
	C.DrawTextCodepoint(font, codepoint, position, fontSize, tint)
}

fn C.MeasureText(&i8, int) int
[inline]
pub fn measure_text(text &i8, fontSize int) int {
	return C.MeasureText(text, fontSize)
}

fn C.MeasureTextEx(Font, &i8, f32, f32) Vector2
[inline]
pub fn measure_text_ex(font Font, text &i8, fontSize f32, spacing f32) Vector2 {
	return C.MeasureTextEx(font, text, fontSize, spacing)
}

fn C.GetGlyphIndex(Font, int) int
[inline]
pub fn get_glyph_index(font Font, codepoint int) int {
	return C.GetGlyphIndex(font, codepoint)
}

fn C.GetGlyphInfo(Font, int) GlyphInfo
[inline]
pub fn get_glyph_info(font Font, codepoint int) GlyphInfo {
	return C.GetGlyphInfo(font, codepoint)
}

fn C.GetGlyphAtlasRec(Font, int) Rectangle
[inline]
pub fn get_glyph_atlas_rec(font Font, codepoint int) Rectangle {
	return C.GetGlyphAtlasRec(font, codepoint)
}

fn C.LoadCodepoints(&i8, &int) &int
[inline]
pub fn load_codepoints(text &i8, count &int) &int {
	return C.LoadCodepoints(text, count)
}

fn C.UnloadCodepoints(&int)
[inline]
pub fn unload_codepoints(codepoints &int) {
	C.UnloadCodepoints(codepoints)
}

fn C.GetCodepointCount(&i8) int
[inline]
pub fn get_codepoint_count(text &i8) int {
	return C.GetCodepointCount(text)
}

fn C.GetCodepoint(&i8, &int) int
[inline]
pub fn get_codepoint(text &i8, bytesProcessed &int) int {
	return C.GetCodepoint(text, bytesProcessed)
}

fn C.CodepointToUTF8(int, &int) &i8
[inline]
pub fn codepoint_to_utf8(codepoint int, byteSize &int) &i8 {
	return C.CodepointToUTF8(codepoint, byteSize)
}

fn C.TextCodepointsToUTF8(&int, int) &i8
[inline]
pub fn text_codepoints_to_utf8(codepoints &int, length int) &i8 {
	return C.TextCodepointsToUTF8(codepoints, length)
}

fn C.TextCopy(&i8, &i8) int
[inline]
pub fn text_copy(dst &i8, src &i8) int {
	return C.TextCopy(dst, src)
}

fn C.TextIsEqual(&i8, &i8) bool
[inline]
pub fn text_is_equal(text1 &i8, text2 &i8) bool {
	return C.TextIsEqual(text1, text2)
}

fn C.TextLength(&i8) u32
[inline]
pub fn text_length(text &i8) u32 {
	return C.TextLength(text)
}

fn C.TextSubtext(&i8, int, int) &i8
[inline]
pub fn text_subtext(text &i8, position int, length int) &i8 {
	return C.TextSubtext(text, position, length)
}

fn C.TextReplace(&i8, &i8, &i8) &i8
[inline]
pub fn text_replace(text &i8, replace &i8, by &i8) &i8 {
	return C.TextReplace(text, replace, by)
}

fn C.TextInsert(&i8, &i8, int) &i8
[inline]
pub fn text_insert(text &i8, insert &i8, position int) &i8 {
	return C.TextInsert(text, insert, position)
}

fn C.TextJoin(&&i8, int, &i8) &i8
[inline]
pub fn text_join(textList &&i8, count int, delimiter &i8) &i8 {
	return C.TextJoin(textList, count, delimiter)
}

fn C.TextSplit(&i8, i8, &int) &&i8
[inline]
pub fn text_split(text &i8, delimiter i8, count &int) &&i8 {
	return C.TextSplit(text, delimiter, count)
}

fn C.TextAppend(&i8, &i8, &int)
[inline]
pub fn text_append(text &i8, append &i8, position &int) {
	C.TextAppend(text, append, position)
}

fn C.TextFindIndex(&i8, &i8) int
[inline]
pub fn text_find_index(text &i8, find &i8) int {
	return C.TextFindIndex(text, find)
}

fn C.TextToUpper(&i8) &i8
[inline]
pub fn text_to_upper(text &i8) &i8 {
	return C.TextToUpper(text)
}

fn C.TextToLower(&i8) &i8
[inline]
pub fn text_to_lower(text &i8) &i8 {
	return C.TextToLower(text)
}

fn C.TextToPascal(&i8) &i8
[inline]
pub fn text_to_pascal(text &i8) &i8 {
	return C.TextToPascal(text)
}

fn C.TextToInteger(&i8) int
[inline]
pub fn text_to_integer(text &i8) int {
	return C.TextToInteger(text)
}

fn C.DrawLine3D(Vector3, Vector3, Color)
[inline]
pub fn draw_line3_d(startPos Vector3, endPos Vector3, color Color) {
	C.DrawLine3D(startPos, endPos, color)
}

fn C.DrawPoint3D(Vector3, Color)
[inline]
pub fn draw_point3_d(position Vector3, color Color) {
	C.DrawPoint3D(position, color)
}

fn C.DrawCircle3D(Vector3, f32, Vector3, f32, Color)
[inline]
pub fn draw_circle3_d(center Vector3, radius f32, rotationAxis Vector3, rotationAngle f32, color Color) {
	C.DrawCircle3D(center, radius, rotationAxis, rotationAngle, color)
}

fn C.DrawTriangle3D(Vector3, Vector3, Vector3, Color)
[inline]
pub fn draw_triangle3_d(v1 Vector3, v2 Vector3, v3 Vector3, color Color) {
	C.DrawTriangle3D(v1, v2, v3, color)
}

fn C.DrawTriangleStrip3D(&Vector3, int, Color)
[inline]
pub fn draw_triangle_strip3_d(points &Vector3, pointCount int, color Color) {
	C.DrawTriangleStrip3D(points, pointCount, color)
}

fn C.DrawCube(Vector3, f32, f32, f32, Color)
[inline]
pub fn draw_cube(position Vector3, width f32, height f32, length f32, color Color) {
	C.DrawCube(position, width, height, length, color)
}

fn C.DrawCubeV(Vector3, Vector3, Color)
[inline]
pub fn draw_cube_v(position Vector3, size Vector3, color Color) {
	C.DrawCubeV(position, size, color)
}

fn C.DrawCubeWires(Vector3, f32, f32, f32, Color)
[inline]
pub fn draw_cube_wires(position Vector3, width f32, height f32, length f32, color Color) {
	C.DrawCubeWires(position, width, height, length, color)
}

fn C.DrawCubeWiresV(Vector3, Vector3, Color)
[inline]
pub fn draw_cube_wires_v(position Vector3, size Vector3, color Color) {
	C.DrawCubeWiresV(position, size, color)
}

fn C.DrawCubeTexture(Texture2D, Vector3, f32, f32, f32, Color)
[inline]
pub fn draw_cube_texture(texture Texture2D, position Vector3, width f32, height f32, length f32, color Color) {
	C.DrawCubeTexture(texture, position, width, height, length, color)
}

fn C.DrawCubeTextureRec(Texture2D, Rectangle, Vector3, f32, f32, f32, Color)
[inline]
pub fn draw_cube_texture_rec(texture Texture2D, source Rectangle, position Vector3, width f32, height f32, length f32, color Color) {
	C.DrawCubeTextureRec(texture, source, position, width, height, length, color)
}

fn C.DrawSphere(Vector3, f32, Color)
[inline]
pub fn draw_sphere(centerPos Vector3, radius f32, color Color) {
	C.DrawSphere(centerPos, radius, color)
}

fn C.DrawSphereEx(Vector3, f32, int, int, Color)
[inline]
pub fn draw_sphere_ex(centerPos Vector3, radius f32, rings int, slices int, color Color) {
	C.DrawSphereEx(centerPos, radius, rings, slices, color)
}

fn C.DrawSphereWires(Vector3, f32, int, int, Color)
[inline]
pub fn draw_sphere_wires(centerPos Vector3, radius f32, rings int, slices int, color Color) {
	C.DrawSphereWires(centerPos, radius, rings, slices, color)
}

fn C.DrawCylinder(Vector3, f32, f32, f32, int, Color)
[inline]
pub fn draw_cylinder(position Vector3, radiusTop f32, radiusBottom f32, height f32, slices int, color Color) {
	C.DrawCylinder(position, radiusTop, radiusBottom, height, slices, color)
}

fn C.DrawCylinderEx(Vector3, Vector3, f32, f32, int, Color)
[inline]
pub fn draw_cylinder_ex(startPos Vector3, endPos Vector3, startRadius f32, endRadius f32, sides int, color Color) {
	C.DrawCylinderEx(startPos, endPos, startRadius, endRadius, sides, color)
}

fn C.DrawCylinderWires(Vector3, f32, f32, f32, int, Color)
[inline]
pub fn draw_cylinder_wires(position Vector3, radiusTop f32, radiusBottom f32, height f32, slices int, color Color) {
	C.DrawCylinderWires(position, radiusTop, radiusBottom, height, slices, color)
}

fn C.DrawCylinderWiresEx(Vector3, Vector3, f32, f32, int, Color)
[inline]
pub fn draw_cylinder_wires_ex(startPos Vector3, endPos Vector3, startRadius f32, endRadius f32, sides int, color Color) {
	C.DrawCylinderWiresEx(startPos, endPos, startRadius, endRadius, sides, color)
}

fn C.DrawPlane(Vector3, Vector2, Color)
[inline]
pub fn draw_plane(centerPos Vector3, size Vector2, color Color) {
	C.DrawPlane(centerPos, size, color)
}

fn C.DrawRay(Ray, Color)
[inline]
pub fn draw_ray(ray Ray, color Color) {
	C.DrawRay(ray, color)
}

fn C.DrawGrid(int, f32)
[inline]
pub fn draw_grid(slices int, spacing f32) {
	C.DrawGrid(slices, spacing)
}

fn C.LoadModel(&i8) Model
[inline]
pub fn load_model(fileName &i8) Model {
	return C.LoadModel(fileName)
}

fn C.LoadModelFromMesh(Mesh) Model
[inline]
pub fn load_model_from_mesh(mesh Mesh) Model {
	return C.LoadModelFromMesh(mesh)
}

fn C.UnloadModel(Model)
[inline]
pub fn unload_model(model Model) {
	C.UnloadModel(model)
}

fn C.UnloadModelKeepMeshes(Model)
[inline]
pub fn unload_model_keep_meshes(model Model) {
	C.UnloadModelKeepMeshes(model)
}

fn C.GetModelBoundingBox(Model) BoundingBox
[inline]
pub fn get_model_bounding_box(model Model) BoundingBox {
	return C.GetModelBoundingBox(model)
}

fn C.DrawModel(Model, Vector3, f32, Color)
[inline]
pub fn draw_model(model Model, position Vector3, scale f32, tint Color) {
	C.DrawModel(model, position, scale, tint)
}

fn C.DrawModelEx(Model, Vector3, Vector3, f32, Vector3, Color)
[inline]
pub fn draw_model_ex(model Model, position Vector3, rotationAxis Vector3, rotationAngle f32, scale Vector3, tint Color) {
	C.DrawModelEx(model, position, rotationAxis, rotationAngle, scale, tint)
}

fn C.DrawModelWires(Model, Vector3, f32, Color)
[inline]
pub fn draw_model_wires(model Model, position Vector3, scale f32, tint Color) {
	C.DrawModelWires(model, position, scale, tint)
}

fn C.DrawModelWiresEx(Model, Vector3, Vector3, f32, Vector3, Color)
[inline]
pub fn draw_model_wires_ex(model Model, position Vector3, rotationAxis Vector3, rotationAngle f32, scale Vector3, tint Color) {
	C.DrawModelWiresEx(model, position, rotationAxis, rotationAngle, scale, tint)
}

fn C.DrawBoundingBox(BoundingBox, Color)
[inline]
pub fn draw_bounding_box(box BoundingBox, color Color) {
	C.DrawBoundingBox(box, color)
}

fn C.DrawBillboard(Camera, Texture2D, Vector3, f32, Color)
[inline]
pub fn draw_billboard(camera Camera, texture Texture2D, position Vector3, size f32, tint Color) {
	C.DrawBillboard(camera, texture, position, size, tint)
}

fn C.DrawBillboardRec(Camera, Texture2D, Rectangle, Vector3, Vector2, Color)
[inline]
pub fn draw_billboard_rec(camera Camera, texture Texture2D, source Rectangle, position Vector3, size Vector2, tint Color) {
	C.DrawBillboardRec(camera, texture, source, position, size, tint)
}

fn C.DrawBillboardPro(Camera, Texture2D, Rectangle, Vector3, Vector3, Vector2, Vector2, f32, Color)
[inline]
pub fn draw_billboard_pro(camera Camera, texture Texture2D, source Rectangle, position Vector3, up Vector3, size Vector2, origin Vector2, rotation f32, tint Color) {
	C.DrawBillboardPro(camera, texture, source, position, up, size, origin, rotation,
		tint)
}

fn C.UploadMesh(&Mesh, bool)
[inline]
pub fn upload_mesh(mesh &Mesh, dynamic bool) {
	C.UploadMesh(mesh, dynamic)
}

fn C.UpdateMeshBuffer(Mesh, int, voidptr, int, int)
[inline]
pub fn update_mesh_buffer(mesh Mesh, index int, data voidptr, dataSize int, offset int) {
	C.UpdateMeshBuffer(mesh, index, data, dataSize, offset)
}

fn C.UnloadMesh(Mesh)
[inline]
pub fn unload_mesh(mesh Mesh) {
	C.UnloadMesh(mesh)
}

fn C.DrawMesh(Mesh, Material, Matrix)
[inline]
pub fn draw_mesh(mesh Mesh, material Material, transform Matrix) {
	C.DrawMesh(mesh, material, transform)
}

fn C.DrawMeshInstanced(Mesh, Material, &Matrix, int)
[inline]
pub fn draw_mesh_instanced(mesh Mesh, material Material, transforms &Matrix, instances int) {
	C.DrawMeshInstanced(mesh, material, transforms, instances)
}

fn C.ExportMesh(Mesh, &i8) bool
[inline]
pub fn export_mesh(mesh Mesh, fileName &i8) bool {
	return C.ExportMesh(mesh, fileName)
}

fn C.GetMeshBoundingBox(Mesh) BoundingBox
[inline]
pub fn get_mesh_bounding_box(mesh Mesh) BoundingBox {
	return C.GetMeshBoundingBox(mesh)
}

fn C.GenMeshTangents(&Mesh)
[inline]
pub fn gen_mesh_tangents(mesh &Mesh) {
	C.GenMeshTangents(mesh)
}

fn C.GenMeshBinormals(&Mesh)
[inline]
pub fn gen_mesh_binormals(mesh &Mesh) {
	C.GenMeshBinormals(mesh)
}

fn C.GenMeshPoly(int, f32) Mesh
[inline]
pub fn gen_mesh_poly(sides int, radius f32) Mesh {
	return C.GenMeshPoly(sides, radius)
}

fn C.GenMeshPlane(f32, f32, int, int) Mesh
[inline]
pub fn gen_mesh_plane(width f32, length f32, resX int, resZ int) Mesh {
	return C.GenMeshPlane(width, length, resX, resZ)
}

fn C.GenMeshCube(f32, f32, f32) Mesh
[inline]
pub fn gen_mesh_cube(width f32, height f32, length f32) Mesh {
	return C.GenMeshCube(width, height, length)
}

fn C.GenMeshSphere(f32, int, int) Mesh
[inline]
pub fn gen_mesh_sphere(radius f32, rings int, slices int) Mesh {
	return C.GenMeshSphere(radius, rings, slices)
}

fn C.GenMeshHemiSphere(f32, int, int) Mesh
[inline]
pub fn gen_mesh_hemi_sphere(radius f32, rings int, slices int) Mesh {
	return C.GenMeshHemiSphere(radius, rings, slices)
}

fn C.GenMeshCylinder(f32, f32, int) Mesh
[inline]
pub fn gen_mesh_cylinder(radius f32, height f32, slices int) Mesh {
	return C.GenMeshCylinder(radius, height, slices)
}

fn C.GenMeshCone(f32, f32, int) Mesh
[inline]
pub fn gen_mesh_cone(radius f32, height f32, slices int) Mesh {
	return C.GenMeshCone(radius, height, slices)
}

fn C.GenMeshTorus(f32, f32, int, int) Mesh
[inline]
pub fn gen_mesh_torus(radius f32, size f32, radSeg int, sides int) Mesh {
	return C.GenMeshTorus(radius, size, radSeg, sides)
}

fn C.GenMeshKnot(f32, f32, int, int) Mesh
[inline]
pub fn gen_mesh_knot(radius f32, size f32, radSeg int, sides int) Mesh {
	return C.GenMeshKnot(radius, size, radSeg, sides)
}

fn C.GenMeshHeightmap(Image, Vector3) Mesh
[inline]
pub fn gen_mesh_heightmap(heightmap Image, size Vector3) Mesh {
	return C.GenMeshHeightmap(heightmap, size)
}

fn C.GenMeshCubicmap(Image, Vector3) Mesh
[inline]
pub fn gen_mesh_cubicmap(cubicmap Image, cubeSize Vector3) Mesh {
	return C.GenMeshCubicmap(cubicmap, cubeSize)
}

fn C.LoadMaterials(&i8, &int) &Material
[inline]
pub fn load_materials(fileName &i8, materialCount &int) &Material {
	return C.LoadMaterials(fileName, materialCount)
}

fn C.LoadMaterialDefault() Material
[inline]
pub fn load_material_default() Material {
	return C.LoadMaterialDefault()
}

fn C.UnloadMaterial(Material)
[inline]
pub fn unload_material(material Material) {
	C.UnloadMaterial(material)
}

fn C.SetMaterialTexture(&Material, int, Texture2D)
[inline]
pub fn set_material_texture(material &Material, mapType int, texture Texture2D) {
	C.SetMaterialTexture(material, mapType, texture)
}

fn C.SetModelMeshMaterial(&Model, int, int)
[inline]
pub fn set_model_mesh_material(model &Model, meshId int, materialId int) {
	C.SetModelMeshMaterial(model, meshId, materialId)
}

fn C.LoadModelAnimations(&i8, &u32) &ModelAnimation
[inline]
pub fn load_model_animations(fileName &i8, animCount &u32) &ModelAnimation {
	return C.LoadModelAnimations(fileName, animCount)
}

fn C.UpdateModelAnimation(Model, ModelAnimation, int)
[inline]
pub fn update_model_animation(model Model, anim ModelAnimation, frame int) {
	C.UpdateModelAnimation(model, anim, frame)
}

fn C.UnloadModelAnimation(ModelAnimation)
[inline]
pub fn unload_model_animation(anim ModelAnimation) {
	C.UnloadModelAnimation(anim)
}

fn C.UnloadModelAnimations(&ModelAnimation, u32)
[inline]
pub fn unload_model_animations(animations &ModelAnimation, count u32) {
	C.UnloadModelAnimations(animations, count)
}

fn C.IsModelAnimationValid(Model, ModelAnimation) bool
[inline]
pub fn is_model_animation_valid(model Model, anim ModelAnimation) bool {
	return C.IsModelAnimationValid(model, anim)
}

fn C.CheckCollisionSpheres(Vector3, f32, Vector3, f32) bool
[inline]
pub fn check_collision_spheres(center1 Vector3, radius1 f32, center2 Vector3, radius2 f32) bool {
	return C.CheckCollisionSpheres(center1, radius1, center2, radius2)
}

fn C.CheckCollisionBoxes(BoundingBox, BoundingBox) bool
[inline]
pub fn check_collision_boxes(box1 BoundingBox, box2 BoundingBox) bool {
	return C.CheckCollisionBoxes(box1, box2)
}

fn C.CheckCollisionBoxSphere(BoundingBox, Vector3, f32) bool
[inline]
pub fn check_collision_box_sphere(box BoundingBox, center Vector3, radius f32) bool {
	return C.CheckCollisionBoxSphere(box, center, radius)
}

fn C.GetRayCollisionSphere(Ray, Vector3, f32) RayCollision
[inline]
pub fn get_ray_collision_sphere(ray Ray, center Vector3, radius f32) RayCollision {
	return C.GetRayCollisionSphere(ray, center, radius)
}

fn C.GetRayCollisionBox(Ray, BoundingBox) RayCollision
[inline]
pub fn get_ray_collision_box(ray Ray, box BoundingBox) RayCollision {
	return C.GetRayCollisionBox(ray, box)
}

fn C.GetRayCollisionModel(Ray, Model) RayCollision
[inline]
pub fn get_ray_collision_model(ray Ray, model Model) RayCollision {
	return C.GetRayCollisionModel(ray, model)
}

fn C.GetRayCollisionMesh(Ray, Mesh, Matrix) RayCollision
[inline]
pub fn get_ray_collision_mesh(ray Ray, mesh Mesh, transform Matrix) RayCollision {
	return C.GetRayCollisionMesh(ray, mesh, transform)
}

fn C.GetRayCollisionTriangle(Ray, Vector3, Vector3, Vector3) RayCollision
[inline]
pub fn get_ray_collision_triangle(ray Ray, p1 Vector3, p2 Vector3, p3 Vector3) RayCollision {
	return C.GetRayCollisionTriangle(ray, p1, p2, p3)
}

fn C.GetRayCollisionQuad(Ray, Vector3, Vector3, Vector3, Vector3) RayCollision
[inline]
pub fn get_ray_collision_quad(ray Ray, p1 Vector3, p2 Vector3, p3 Vector3, p4 Vector3) RayCollision {
	return C.GetRayCollisionQuad(ray, p1, p2, p3, p4)
}

fn C.InitAudioDevice()
[inline]
pub fn init_audio_device() {
	C.InitAudioDevice()
}

fn C.CloseAudioDevice()
[inline]
pub fn close_audio_device() {
	C.CloseAudioDevice()
}

fn C.IsAudioDeviceReady() bool
[inline]
pub fn is_audio_device_ready() bool {
	return C.IsAudioDeviceReady()
}

fn C.SetMasterVolume(f32)
[inline]
pub fn set_master_volume(volume f32) {
	C.SetMasterVolume(volume)
}

fn C.LoadWave(&i8) Wave
[inline]
pub fn load_wave(fileName &i8) Wave {
	return C.LoadWave(fileName)
}

fn C.LoadWaveFromMemory(&i8, &byte, int) Wave
[inline]
pub fn load_wave_from_memory(fileType &i8, fileData &byte, dataSize int) Wave {
	return C.LoadWaveFromMemory(fileType, fileData, dataSize)
}

fn C.LoadSound(&i8) Sound
[inline]
pub fn load_sound(fileName &i8) Sound {
	return C.LoadSound(fileName)
}

fn C.LoadSoundFromWave(Wave) Sound
[inline]
pub fn load_sound_from_wave(wave Wave) Sound {
	return C.LoadSoundFromWave(wave)
}

fn C.UpdateSound(Sound, voidptr, int)
[inline]
pub fn update_sound(sound Sound, data voidptr, sampleCount int) {
	C.UpdateSound(sound, data, sampleCount)
}

fn C.UnloadWave(Wave)
[inline]
pub fn unload_wave(wave Wave) {
	C.UnloadWave(wave)
}

fn C.UnloadSound(Sound)
[inline]
pub fn unload_sound(sound Sound) {
	C.UnloadSound(sound)
}

fn C.ExportWave(Wave, &i8) bool
[inline]
pub fn export_wave(wave Wave, fileName &i8) bool {
	return C.ExportWave(wave, fileName)
}

fn C.ExportWaveAsCode(Wave, &i8) bool
[inline]
pub fn export_wave_as_code(wave Wave, fileName &i8) bool {
	return C.ExportWaveAsCode(wave, fileName)
}

fn C.PlaySound(Sound)
[inline]
pub fn play_sound(sound Sound) {
	C.PlaySound(sound)
}

fn C.StopSound(Sound)
[inline]
pub fn stop_sound(sound Sound) {
	C.StopSound(sound)
}

fn C.PauseSound(Sound)
[inline]
pub fn pause_sound(sound Sound) {
	C.PauseSound(sound)
}

fn C.ResumeSound(Sound)
[inline]
pub fn resume_sound(sound Sound) {
	C.ResumeSound(sound)
}

fn C.PlaySoundMulti(Sound)
[inline]
pub fn play_sound_multi(sound Sound) {
	C.PlaySoundMulti(sound)
}

fn C.StopSoundMulti()
[inline]
pub fn stop_sound_multi() {
	C.StopSoundMulti()
}

fn C.GetSoundsPlaying() int
[inline]
pub fn get_sounds_playing() int {
	return C.GetSoundsPlaying()
}

fn C.IsSoundPlaying(Sound) bool
[inline]
pub fn is_sound_playing(sound Sound) bool {
	return C.IsSoundPlaying(sound)
}

fn C.SetSoundVolume(Sound, f32)
[inline]
pub fn set_sound_volume(sound Sound, volume f32) {
	C.SetSoundVolume(sound, volume)
}

fn C.SetSoundPitch(Sound, f32)
[inline]
pub fn set_sound_pitch(sound Sound, pitch f32) {
	C.SetSoundPitch(sound, pitch)
}

fn C.WaveFormat(&Wave, int, int, int)
[inline]
pub fn wave_format(wave &Wave, sampleRate int, sampleSize int, channels int) {
	C.WaveFormat(wave, sampleRate, sampleSize, channels)
}

fn C.WaveCopy(Wave) Wave
[inline]
pub fn wave_copy(wave Wave) Wave {
	return C.WaveCopy(wave)
}

fn C.WaveCrop(&Wave, int, int)
[inline]
pub fn wave_crop(wave &Wave, initSample int, finalSample int) {
	C.WaveCrop(wave, initSample, finalSample)
}

fn C.LoadWaveSamples(Wave) &f32
[inline]
pub fn load_wave_samples(wave Wave) &f32 {
	return C.LoadWaveSamples(wave)
}

fn C.UnloadWaveSamples(&f32)
[inline]
pub fn unload_wave_samples(samples &f32) {
	C.UnloadWaveSamples(samples)
}

fn C.LoadMusicStream(&i8) Music
[inline]
pub fn load_music_stream(fileName &i8) Music {
	return C.LoadMusicStream(fileName)
}

fn C.LoadMusicStreamFromMemory(&i8, &byte, int) Music
[inline]
pub fn load_music_stream_from_memory(fileType &i8, data &byte, dataSize int) Music {
	return C.LoadMusicStreamFromMemory(fileType, data, dataSize)
}

fn C.UnloadMusicStream(Music)
[inline]
pub fn unload_music_stream(music Music) {
	C.UnloadMusicStream(music)
}

fn C.PlayMusicStream(Music)
[inline]
pub fn play_music_stream(music Music) {
	C.PlayMusicStream(music)
}

fn C.IsMusicStreamPlaying(Music) bool
[inline]
pub fn is_music_stream_playing(music Music) bool {
	return C.IsMusicStreamPlaying(music)
}

fn C.UpdateMusicStream(Music)
[inline]
pub fn update_music_stream(music Music) {
	C.UpdateMusicStream(music)
}

fn C.StopMusicStream(Music)
[inline]
pub fn stop_music_stream(music Music) {
	C.StopMusicStream(music)
}

fn C.PauseMusicStream(Music)
[inline]
pub fn pause_music_stream(music Music) {
	C.PauseMusicStream(music)
}

fn C.ResumeMusicStream(Music)
[inline]
pub fn resume_music_stream(music Music) {
	C.ResumeMusicStream(music)
}

fn C.SeekMusicStream(Music, f32)
[inline]
pub fn seek_music_stream(music Music, position f32) {
	C.SeekMusicStream(music, position)
}

fn C.SetMusicVolume(Music, f32)
[inline]
pub fn set_music_volume(music Music, volume f32) {
	C.SetMusicVolume(music, volume)
}

fn C.SetMusicPitch(Music, f32)
[inline]
pub fn set_music_pitch(music Music, pitch f32) {
	C.SetMusicPitch(music, pitch)
}

fn C.GetMusicTimeLength(Music) f32
[inline]
pub fn get_music_time_length(music Music) f32 {
	return C.GetMusicTimeLength(music)
}

fn C.GetMusicTimePlayed(Music) f32
[inline]
pub fn get_music_time_played(music Music) f32 {
	return C.GetMusicTimePlayed(music)
}

fn C.LoadAudioStream(u32, u32, u32) AudioStream
[inline]
pub fn load_audio_stream(sampleRate u32, sampleSize u32, channels u32) AudioStream {
	return C.LoadAudioStream(sampleRate, sampleSize, channels)
}

fn C.UnloadAudioStream(AudioStream)
[inline]
pub fn unload_audio_stream(stream AudioStream) {
	C.UnloadAudioStream(stream)
}

fn C.UpdateAudioStream(AudioStream, voidptr, int)
[inline]
pub fn update_audio_stream(stream AudioStream, data voidptr, frameCount int) {
	C.UpdateAudioStream(stream, data, frameCount)
}

fn C.IsAudioStreamProcessed(AudioStream) bool
[inline]
pub fn is_audio_stream_processed(stream AudioStream) bool {
	return C.IsAudioStreamProcessed(stream)
}

fn C.PlayAudioStream(AudioStream)
[inline]
pub fn play_audio_stream(stream AudioStream) {
	C.PlayAudioStream(stream)
}

fn C.PauseAudioStream(AudioStream)
[inline]
pub fn pause_audio_stream(stream AudioStream) {
	C.PauseAudioStream(stream)
}

fn C.ResumeAudioStream(AudioStream)
[inline]
pub fn resume_audio_stream(stream AudioStream) {
	C.ResumeAudioStream(stream)
}

fn C.IsAudioStreamPlaying(AudioStream) bool
[inline]
pub fn is_audio_stream_playing(stream AudioStream) bool {
	return C.IsAudioStreamPlaying(stream)
}

fn C.StopAudioStream(AudioStream)
[inline]
pub fn stop_audio_stream(stream AudioStream) {
	C.StopAudioStream(stream)
}

fn C.SetAudioStreamVolume(AudioStream, f32)
[inline]
pub fn set_audio_stream_volume(stream AudioStream, volume f32) {
	C.SetAudioStreamVolume(stream, volume)
}

fn C.SetAudioStreamPitch(AudioStream, f32)
[inline]
pub fn set_audio_stream_pitch(stream AudioStream, pitch f32) {
	C.SetAudioStreamPitch(stream, pitch)
}

fn C.SetAudioStreamBufferSizeDefault(int)
[inline]
pub fn set_audio_stream_buffer_size_default(size int) {
	C.SetAudioStreamBufferSizeDefault(size)
}
