module raylibv

enum MouseButton {
	mouse_button_left = 0
	mouse_button_right = 1
	mouse_button_middle = 2
	mouse_button_side = 3
	mouse_button_extra = 4
	mouse_button_forward = 5
	mouse_button_back = 6
}

enum MouseCursor {
	mouse_cursor_default = 0
	mouse_cursor_arrow = 1
	mouse_cursor_ibeam = 2
	mouse_cursor_crosshair = 3
	mouse_cursor_pointing_hand = 4
	mouse_cursor_resize_ew = 5
	mouse_cursor_resize_ns = 6
	mouse_cursor_resize_nwse = 7
	mouse_cursor_resize_nesw = 8
	mouse_cursor_resize_all = 9
	mouse_cursor_not_allowed = 10
}

enum GamepadButton {
	gamepad_button_unknown = 0
	gamepad_button_left_face_up
	gamepad_button_left_face_right
	gamepad_button_left_face_down
	gamepad_button_left_face_left
	gamepad_button_right_face_up
	gamepad_button_right_face_right
	gamepad_button_right_face_down
	gamepad_button_right_face_left
	gamepad_button_left_trigger_1
	gamepad_button_left_trigger_2
	gamepad_button_right_trigger_1
	gamepad_button_right_trigger_2
	gamepad_button_middle_left
	gamepad_button_middle
	gamepad_button_middle_right
	gamepad_button_left_thumb
	gamepad_button_right_thumb
}

enum GamepadAxis {
	gamepad_axis_left_x = 0
	gamepad_axis_left_y = 1
	gamepad_axis_right_x = 2
	gamepad_axis_right_y = 3
	gamepad_axis_left_trigger = 4
	gamepad_axis_right_trigger = 5
}

enum MaterialMapIndex {
	material_map_albedo = 0
	material_map_metalness
	material_map_normal
	material_map_roughness
	material_map_occlusion
	material_map_emission
	material_map_height
	material_map_cubemap
	material_map_irradiance
	material_map_prefilter
	material_map_brdf
}

enum ShaderLocationIndex {
	shader_loc_vertex_position = 0
	shader_loc_vertex_texcoord01
	shader_loc_vertex_texcoord02
	shader_loc_vertex_normal
	shader_loc_vertex_tangent
	shader_loc_vertex_color
	shader_loc_matrix_mvp
	shader_loc_matrix_view
	shader_loc_matrix_projection
	shader_loc_matrix_model
	shader_loc_matrix_normal
	shader_loc_vector_view
	shader_loc_color_diffuse
	shader_loc_color_specular
	shader_loc_color_ambient
	shader_loc_map_albedo
	shader_loc_map_metalness
	shader_loc_map_normal
	shader_loc_map_roughness
	shader_loc_map_occlusion
	shader_loc_map_emission
	shader_loc_map_height
	shader_loc_map_cubemap
	shader_loc_map_irradiance
	shader_loc_map_prefilter
	shader_loc_map_brdf
}

enum ShaderUniformDataType {
	shader_uniform_float = 0
	shader_uniform_vec2
	shader_uniform_vec3
	shader_uniform_vec4
	shader_uniform_int
	shader_uniform_ivec2
	shader_uniform_ivec3
	shader_uniform_ivec4
	shader_uniform_sampler2d
}

enum ShaderAttributeDataType {
	shader_attrib_float = 0
	shader_attrib_vec2
	shader_attrib_vec3
	shader_attrib_vec4
}

enum PixelFormat {
	pixelformat_uncompressed_grayscale = 1
	pixelformat_uncompressed_gray_alpha
	pixelformat_uncompressed_r5g6b5
	pixelformat_uncompressed_r8g8b8
	pixelformat_uncompressed_r5g5b5a1
	pixelformat_uncompressed_r4g4b4a4
	pixelformat_uncompressed_r8g8b8a8
	pixelformat_uncompressed_r32
	pixelformat_uncompressed_r32g32b32
	pixelformat_uncompressed_r32g32b32a32
	pixelformat_uncompressed_r16
	pixelformat_uncompressed_r16g16b16
	pixelformat_uncompressed_r16g16b16a16
	pixelformat_compressed_dxt1_rgb
	pixelformat_compressed_dxt1_rgba
	pixelformat_compressed_dxt3_rgba
	pixelformat_compressed_dxt5_rgba
	pixelformat_compressed_etc1_rgb
	pixelformat_compressed_etc2_rgb
	pixelformat_compressed_etc2_eac_rgba
	pixelformat_compressed_pvrt_rgb
	pixelformat_compressed_pvrt_rgba
	pixelformat_compressed_astc_4x4_rgba
	pixelformat_compressed_astc_8x8_rgba
}

enum TextureFilter {
	texture_filter_point = 0
	texture_filter_bilinear
	texture_filter_trilinear
	texture_filter_anisotropic_4x
	texture_filter_anisotropic_8x
	texture_filter_anisotropic_16x
}

enum TextureWrap {
	texture_wrap_repeat = 0
	texture_wrap_clamp
	texture_wrap_mirror_repeat
	texture_wrap_mirror_clamp
}

enum CubemapLayout {
	cubemap_layout_auto_detect = 0
	cubemap_layout_line_vertical
	cubemap_layout_line_horizontal
	cubemap_layout_cross_three_by_four
	cubemap_layout_cross_four_by_three
	cubemap_layout_panorama
}

enum FontType {
	font_default = 0
	font_bitmap
	font_sdf
}

enum BlendMode {
	blend_alpha = 0
	blend_additive
	blend_multiplied
	blend_add_colors
	blend_subtract_colors
	blend_alpha_premultiply
	blend_custom
	blend_custom_separate
}

enum Gesture {
	gesture_none = 0
	gesture_tap = 1
	gesture_doubletap = 2
	gesture_hold = 4
	gesture_drag = 8
	gesture_swipe_right = 16
	gesture_swipe_left = 32
	gesture_swipe_up = 64
	gesture_swipe_down = 128
	gesture_pinch_in = 256
	gesture_pinch_out = 512
}

enum CameraMode {
	camera_custom = 0
	camera_free
	camera_orbital
	camera_first_person
	camera_third_person
}

enum CameraProjection {
	camera_perspective = 0
	camera_orthographic
}

enum NPatchLayout {
	npatch_nine_patch = 0
	npatch_three_patch_vertical
	npatch_three_patch_horizontal
}

type LoadFileDataCallback = fn (&i8, &u32) &u8

type SaveFileDataCallback = fn (&i8, voidptr, u32) bool

type LoadFileTextCallback = fn (&i8) &i8

type SaveFileTextCallback = fn (&i8, &i8) bool

type AudioCallback = fn (voidptr, u32)

[typedef]
struct C.GuiStyleProp {
pub mut:	
	control_id     u16
	property_id    u16
	property_value u32
}

pub type GuiStyleProp = C.GuiStyleProp

enum GuiState {
	state_normal = 0
	state_focused
	state_pressed
	state_disabled
}

enum GuiTextAlignment {
	text_align_left = 0
	text_align_center
	text_align_right
}

enum GuiControl {
	default = 0
	label
	button
	toggle
	slider
	progressbar
	checkbox
	combobox
	dropdownbox
	textbox
	valuebox
	spinner
	listview
	colorpicker
	scrollbar
	statusbar
}

enum GuiControlProperty {
	border_color_normal = 0
	base_color_normal
	text_color_normal
	border_color_focused
	base_color_focused
	text_color_focused
	border_color_pressed
	base_color_pressed
	text_color_pressed
	border_color_disabled
	base_color_disabled
	text_color_disabled
	border_width
	text_padding
	text_alignment
	reserved
}

enum GuiDefaultProperty {
	text_size = 16
	text_spacing
	line_color
	background_color
}

enum GuiToggleProperty {
	group_padding = 16
}

enum GuiSliderProperty {
	slider_width = 16
	slider_padding
}

enum GuiProgressBarProperty {
	progress_padding = 16
}

enum GuiScrollBarProperty {
	arrows_size = 16
	arrows_visible
	scroll_slider_padding
	scroll_slider_size
	scroll_padding
	scroll_speed
}

enum GuiCheckBoxProperty {
	check_padding = 16
}

enum GuiComboBoxProperty {
	combo_button_width = 16
	combo_button_spacing
}

enum GuiDropdownBoxProperty {
	arrow_padding = 16
	dropdown_items_spacing
}

enum GuiTextBoxProperty {
	text_inner_padding = 16
	text_lines_spacing
	text_alignment_vertical
	text_multiline
	text_wrap_mode
}

enum GuiSpinnerProperty {
	spin_button_width = 16
	spin_button_spacing
}

enum GuiListViewProperty {
	list_items_height = 16
	list_items_spacing
	scrollbar_width
	scrollbar_side
}

enum GuiColorPickerProperty {
	color_selector_size = 16
	huebar_width
	huebar_padding
	huebar_selector_height
	huebar_selector_overflow
}

fn C.GuiEnable()
[inline]
pub fn gui_enable() {
	C.GuiEnable()
}

fn C.GuiDisable()
[inline]
pub fn gui_disable() {
	C.GuiDisable()
}

fn C.GuiLock()
[inline]
pub fn gui_lock() {
	C.GuiLock()
}

fn C.GuiUnlock()
[inline]
pub fn gui_unlock() {
	C.GuiUnlock()
}

fn C.GuiFade(alpha f32)
[inline]
pub fn gui_fade(alpha f32) {
	C.GuiFade(alpha)
}

fn C.GuiSetState(state int)
[inline]
pub fn gui_set_state(state int) {
	C.GuiSetState(state)
}

fn C.GuiGetState() int
[inline]
pub fn gui_get_state() int {
	return C.GuiGetState()
}

fn C.GuiSetFont(font Font)
[inline]
pub fn gui_set_font(font Font) {
	C.GuiSetFont(font)
}

fn C.GuiGetFont() Font
[inline]
pub fn gui_get_font() Font {
	return C.GuiGetFont()
}

fn C.GuiSetStyle(control int, property int, value int)
[inline]
pub fn gui_set_style(control int, property int, value int){
	C.GuiSetStyle(control, property, value)
}

fn C.GuiGetStyle(control int, property int) int
[inline]
pub fn gui_get_style(control int, property int) int {
	return C.GuiGetStyle(control, property)
}

fn C.GuiWindowBox(bounds Rectangle, title &i8) bool
[inline]
pub fn gui_window_box(bounds Rectangle, title &i8) bool {
	return C.GuiWindowBox(bounds, title)
}

fn C.GuiGroupBox(bounds Rectangle, text &i8)
[inline]
pub fn gui_group_box(bounds Rectangle, text &i8) {
	C.GuiGroupBox(bounds, text)
}

fn C.GuiLine(bounds Rectangle, text &i8)
[inline]
pub fn gui_line(bounds Rectangle, text &i8) {
	C.GuiLine(bounds, text)
}

fn C.GuiPanel(bounds Rectangle, text &i8)
[inline]
pub fn gui_panel(bounds Rectangle, text &i8) {
	C.GuiPanel(bounds, text)
}

fn C.GuiTabBar(bounds Rectangle, text &&u8, count int, active &int) int
[inline]
pub fn gui_tab_bar(bounds Rectangle, text &&u8, count int, active &int) int {
	return C.GuiTabBar(bounds, text, count, active)
}

fn C.GuiScrollPanel(bounds Rectangle, text &i8, content Rectangle, scroll &Vector2) Rectangle
[inline]
pub fn gui_scroll_panel(bounds Rectangle, text &i8, content Rectangle, scroll &Vector2) Rectangle {
	return C.GuiScrollPanel(bounds, text, content, scroll)
}

fn C.GuiLabel(bounds Rectangle, text &i8)
[inline]
pub fn gui_label(bounds Rectangle, text &i8) {
	C.GuiLabel(bounds, text)
}

fn C.GuiButton(bounds Rectangle, text &i8) bool 
[inline]
pub fn gui_button(bounds Rectangle, text &i8) bool {
        return C.GuiButton(bounds, text)
}

fn C.GuiLabelButton(bounds Rectangle, text &i8) bool
[inline]
pub fn gui_label_button(bounds Rectangle, text &i8) bool {
	return C.GuiLabelButton(bounds, text) 
}

fn C.GuiToggle(bounds Rectangle, text &i8, active bool) bool
[inline]
pub fn gui_toggle(bounds Rectangle, text &i8, active bool) bool {
	return C.GuiToggle(bounds, text, active)
}

fn C.GuiToggleGroup(bounds Rectangle, text &i8, active int) int
[inline]
pub fn gui_toggle_group(bounds Rectangle, text &i8, active int) int {
	return C.GuiToggleGroup(bounds, text, active)
}

fn C.GuiCheckBox(bounds Rectangle, text &i8, checked bool) bool
[inline]
pub fn gui_check_box(bounds Rectangle, text &i8, checked bool) bool {
	return C.GuiCheckBox(bounds, text, checked) 
}

fn C.GuiComboBox(bounds Rectangle, text &i8, active int) int
[inline]
pub fn gui_combo_box(bounds Rectangle, text &i8, active int) int {
	return C.GuiComboBox(bounds, text, active)
}

fn C.GuiDropdownBox(bounds Rectangle, text &i8, active &i32, edit_mode bool) bool
[inline]
pub fn gui_dropdown_box(bounds Rectangle, text &i8, active &i32, edit_mode bool) bool {
	return C.GuiDropdownBox(bounds, text, active, edit_mode)
}

fn C.GuiSpinner(bounds Rectangle, text &i8, value &i32, minvalue i32, maxvalue i32, editmode bool) bool
[inline]
pub fn gui_spinner(bounds Rectangle, text &i8, value &i32, minvalue i32, maxvalue i32, editmode bool) bool {
	return C.GuiSpinner(bounds, text, value, minvalue, maxvalue, editmode) 
}

fn C.GuiValueBox(bounds Rectangle, text &i8, value &i32, minvalue i32, maxvalue i32, editmode bool) bool
[inline]
pub fn gui_value_box(bounds Rectangle, text &i8, value &i32, minvalue i32, maxvalue i32, editmode bool) bool {
	return C.GuiValueBox(bounds, text, value, minvalue, maxvalue, editmode)
}

fn C.GuiTextBox(bounds Rectangle, text &i8, textsize i32, editmode bool) bool
[inline]
pub fn gui_text_box(bounds Rectangle, text &i8, textsize i32, editmode bool) bool {
	return C.GuiTextBox(bounds, text, textsize, editmode)
}

fn C.GuiSlider(bounds Rectangle, textleft &i8, textright &i8, value f32, minvalue f32, maxvalue f32) f32
[inline]
pub fn gui_slider(bounds Rectangle, textleft &i8, textright &i8, value f32, minvalue f32, maxvalue f32) f32 {
	return C.GuiSlider(bounds, textleft, textright, value, minvalue, maxvalue)
}

fn C.GuiSliderBar(bounds Rectangle, textleft &i8, textright &i8, value f32, minvalue f32, maxvalue f32) f32
[inline]
pub fn gui_slider_bar(bounds Rectangle, textleft &i8, textright &i8, value f32, minvalue f32, maxvalue f32) f32 {
	return C.GuiSliderBar(bounds, textleft, textright, value, minvalue, maxvalue)
}

fn C.GuiProgressBar(bounds Rectangle, textleft &i8, textright &i8, value f32, minvalue f32, maxvalue f32) f32
[inline]
pub fn gui_progress_bar(bounds Rectangle, textleft &i8, textright &i8, value f32, minvalue f32, maxvalue f32) f32  {
	return C.GuiProgressBar(bounds, textleft, textright, value, minvalue, maxvalue)
}

fn C.GuiStatusBar(bounds Rectangle, text &i8)
[inline]
pub fn gui_status_bar(bounds Rectangle, text &i8) {
	C.GuiStatusBar(bounds, text)
}

fn C.GuiDummyRec(bounds Rectangle, text &i8)
[inline]
pub fn gui_dummy_rec(bounds Rectangle, text &i8) {
	C.GuiDummyRec(bounds, text)
}

fn C.GuiGrid(bounds Rectangle, text &i8, spacing f32, subdivs int) Vector2
[inline]
pub fn gui_grid(bounds Rectangle, text &i8, spacing f32, subdivs int) Vector2 {
	return C.GuiGrid(bounds, text, spacing, subdivs)
}

fn C.GuiListView(bounds Rectangle, text &i8, scrollindex &int, active int) int
[inline]
pub fn gui_list_view(bounds Rectangle, text &i8, scrollindex &int, active int) int {
	return C.GuiListView(bounds, text, scrollindex, active)
}

fn C.GuiListViewEx(bounds Rectangle, text &&u8, count int, focus &int, scrollindex &int, active int) int
[inline]
pub fn gui_list_view_ex(bounds Rectangle, text &&u8, count int, focus &int, scrollindex &int, active int) int {
	return C.GuiListViewEx(bounds, text, count, focus, scrollindex, active)
}

fn C.GuiMessageBox(bounds Rectangle, title &i8, message &i8, buttons &i8) int
[inline]
pub fn gui_message_box(bounds Rectangle, title &i8, message &i8, buttons &i8) int {
	return C.GuiMessageBox(bounds, title, message, buttons)
}

fn C.GuiTextInputBox(bounds Rectangle, title &i8, message &i8, buttons &i8, text &i8, textmaxsize int, secretviewactive &int) int
[inline]
pub fn gui_text_input_box(bounds Rectangle, title &i8, message &i8, buttons &i8, text &i8, textmaxsize int, secretviewactive &int) int {
	return C.GuiTextInputBox(bounds, title, message, buttons, text, textmaxsize, secretviewactive)
}

fn C.GuiColorPicker(bounds Rectangle, text &i8, color Color) Color
[inline]
pub fn gui_color_picker(bounds Rectangle, text &i8, color Color) Color {
	return C.GuiColorPicker(bounds, text, color)
}

fn C.GuiColorPanel(bounds Rectangle, text &i8, color Color) Color
[inline]
pub fn gui_color_panel(bounds Rectangle, text &i8, color Color) Color {
	return C.GuiColorPanel(bounds, text, color)
}

fn C.GuiColorBarAlpha(bounds Rectangle, text &i8, alpha f32) f32
[inline]
pub fn gui_color_bar_alpha(bounds Rectangle, text &i8, alpha f32) f32 {
	return C.GuiColorBarAlpha(bounds, text, alpha)}

fn C.GuiColorBarHue(bounds Rectangle, text &i8, value f32) f32
[inline]
pub fn gui_color_bar_hue(bounds Rectangle, text &i8, value f32) f32 {
	return C.GuiColorBarHue(bounds, text, value)
}

fn C.GuiLoadStyle(filename &i8)
[inline]
pub fn gui_load_style(filename &i8) {
	C.GuiLoadStyle(filename)
}

fn C.GuiLoadStyleDefault()
[inline]
pub fn gui_load_style_default() {
	C.GuiLoadStyleDefault()
}

fn C.GuiEnableTooltip()
[inline]
pub fn gui_enable_tooltip() {
	C.GuiEnableTooltip()
}

fn C.GuiDisableTooltip()
[inline]
pub fn gui_disable_tooltip() {
	C.GuiDisableTooltip()
}

fn C.GuiSetTooltip(tooltip &i8)
[inline]
pub fn gui_set_tooltip(tooltip &i8) {
	C.GuiSetTooltip(tooltip)
}

fn C.GuiIconText(iconid int, text &i8) &i8
[inline]
pub fn gui_icon_text(iconid int, text &i8) &i8 {
	return C.GuiIconText(iconid, text)
}

fn C.GuiSetIconScale(scale int)
[inline]
pub fn gui_set_icon_scale(scale int) {
	C.GuiSetIconScale(scale)
}

fn C.GuiGetIcons() &u32
[inline]
pub fn gui_get_icons() &u32 {
	return C.GuiGetIcons()
}

fn C.GuiLoadIcons(filename &i8, loadiconsname bool) &&u8
[inline]
pub fn gui_load_icons(filename &i8, loadiconsname bool) &&u8 {
	return C.GuiLoadIcons(filename, loadiconsname)
}

fn C.GuiDrawIcon(iconid int, posx int, posy int, pixelsize int, color Color)
[inline]
pub fn gui_draw_icon(iconid int, posx int, posy int, pixelsize int, color Color) {
	C.GuiDrawIcon(iconid, posx, posy, pixelsize, color)
}

enum GuiIconName {
	icon_none = 0
	icon_folder_file_open = 1
	icon_file_save_classic = 2
	icon_folder_open = 3
	icon_folder_save = 4
	icon_file_open = 5
	icon_file_save = 6
	icon_file_export = 7
	icon_file_add = 8
	icon_file_delete = 9
	icon_filetype_text = 10
	icon_filetype_audio = 11
	icon_filetype_image = 12
	icon_filetype_play = 13
	icon_filetype_video = 14
	icon_filetype_info = 15
	icon_file_copy = 16
	icon_file_cut = 17
	icon_file_paste = 18
	icon_cursor_hand = 19
	icon_cursor_pointer = 20
	icon_cursor_classic = 21
	icon_pencil = 22
	icon_pencil_big = 23
	icon_brush_classic = 24
	icon_brush_painter = 25
	icon_water_drop = 26
	icon_color_picker = 27
	icon_rubber = 28
	icon_color_bucket = 29
	icon_text_t = 30
	icon_text_a = 31
	icon_scale = 32
	icon_resize = 33
	icon_filter_point = 34
	icon_filter_bilinear = 35
	icon_crop = 36
	icon_crop_alpha = 37
	icon_square_toggle = 38
	icon_symmetry = 39
	icon_symmetry_horizontal = 40
	icon_symmetry_vertical = 41
	icon_lens = 42
	icon_lens_big = 43
	icon_eye_on = 44
	icon_eye_off = 45
	icon_filter_top = 46
	icon_filter = 47
	icon_target_point = 48
	icon_target_small = 49
	icon_target_big = 50
	icon_target_move = 51
	icon_cursor_move = 52
	icon_cursor_scale = 53
	icon_cursor_scale_right = 54
	icon_cursor_scale_left = 55
	icon_undo = 56
	icon_redo = 57
	icon_reredo = 58
	icon_mutate = 59
	icon_rotate = 60
	icon_repeat = 61
	icon_shuffle = 62
	icon_emptybox = 63
	icon_target = 64
	icon_target_small_fill = 65
	icon_target_big_fill = 66
	icon_target_move_fill = 67
	icon_cursor_move_fill = 68
	icon_cursor_scale_fill = 69
	icon_cursor_scale_right_fill = 70
	icon_cursor_scale_left_fill = 71
	icon_undo_fill = 72
	icon_redo_fill = 73
	icon_reredo_fill = 74
	icon_mutate_fill = 75
	icon_rotate_fill = 76
	icon_repeat_fill = 77
	icon_shuffle_fill = 78
	icon_emptybox_small = 79
	icon_box = 80
	icon_box_top = 81
	icon_box_top_right = 82
	icon_box_right = 83
	icon_box_bottom_right = 84
	icon_box_bottom = 85
	icon_box_bottom_left = 86
	icon_box_left = 87
	icon_box_top_left = 88
	icon_box_center = 89
	icon_box_circle_mask = 90
	icon_pot = 91
	icon_alpha_multiply = 92
	icon_alpha_clear = 93
	icon_dithering = 94
	icon_mipmaps = 95
	icon_box_grid = 96
	icon_grid = 97
	icon_box_corners_small = 98
	icon_box_corners_big = 99
	icon_four_boxes = 100
	icon_grid_fill = 101
	icon_box_multisize = 102
	icon_zoom_small = 103
	icon_zoom_medium = 104
	icon_zoom_big = 105
	icon_zoom_all = 106
	icon_zoom_center = 107
	icon_box_dots_small = 108
	icon_box_dots_big = 109
	icon_box_concentric = 110
	icon_box_grid_big = 111
	icon_ok_tick = 112
	icon_cross = 113
	icon_arrow_left = 114
	icon_arrow_right = 115
	icon_arrow_down = 116
	icon_arrow_up = 117
	icon_arrow_left_fill = 118
	icon_arrow_right_fill = 119
	icon_arrow_down_fill = 120
	icon_arrow_up_fill = 121
	icon_audio = 122
	icon_fx = 123
	icon_wave = 124
	icon_wave_sinus = 125
	icon_wave_square = 126
	icon_wave_triangular = 127
	icon_cross_small = 128
	icon_player_previous = 129
	icon_player_play_back = 130
	icon_player_play = 131
	icon_player_pause = 132
	icon_player_stop = 133
	icon_player_next = 134
	icon_player_record = 135
	icon_magnet = 136
	icon_lock_close = 137
	icon_lock_open = 138
	icon_clock = 139
	icon_tools = 140
	icon_gear = 141
	icon_gear_big = 142
	icon_bin = 143
	icon_hand_pointer = 144
	icon_laser = 145
	icon_coin = 146
	icon_explosion = 147
	icon_1up = 148
	icon_player = 149
	icon_player_jump = 150
	icon_key = 151
	icon_demon = 152
	icon_text_popup = 153
	icon_gear_ex = 154
	icon_crack = 155
	icon_crack_points = 156
	icon_star = 157
	icon_door = 158
	icon_exit = 159
	icon_mode_2d = 160
	icon_mode_3d = 161
	icon_cube = 162
	icon_cube_face_top = 163
	icon_cube_face_left = 164
	icon_cube_face_front = 165
	icon_cube_face_bottom = 166
	icon_cube_face_right = 167
	icon_cube_face_back = 168
	icon_camera = 169
	icon_special = 170
	icon_link_net = 171
	icon_link_boxes = 172
	icon_link_multi = 173
	icon_link = 174
	icon_link_broke = 175
	icon_text_notes = 176
	icon_notebook = 177
	icon_suitcase = 178
	icon_suitcase_zip = 179
	icon_mailbox = 180
	icon_monitor = 181
	icon_printer = 182
	icon_photo_camera = 183
	icon_photo_camera_flash = 184
	icon_house = 185
	icon_heart = 186
	icon_corner = 187
	icon_vertical_bars = 188
	icon_vertical_bars_fill = 189
	icon_life_bars = 190
	icon_info = 191
	icon_crossline = 192
	icon_help = 193
	icon_filetype_alpha = 194
	icon_filetype_home = 195
	icon_layers_visible = 196
	icon_layers = 197
	icon_window = 198
	icon_hidpi = 199
	icon_filetype_binary = 200
	icon_hex = 201
	icon_shield = 202
	icon_file_new = 203
	icon_folder_add = 204
	icon_alarm = 205
	icon_cpu = 206
	icon_rom = 207
	icon_step_over = 208
	icon_step_into = 209
	icon_step_out = 210
	icon_restart = 211
	icon_breakpoint_on = 212
	icon_breakpoint_off = 213
	icon_burger_menu = 214
	icon_case_sensitive = 215
	icon_reg_exp = 216
	icon_folder = 217
	icon_file = 218
	icon_sand_timer = 219
	icon_220 = 220
	icon_221 = 221
	icon_222 = 222
	icon_223 = 223
	icon_224 = 224
	icon_225 = 225
	icon_226 = 226
	icon_227 = 227
	icon_228 = 228
	icon_229 = 229
	icon_230 = 230
	icon_231 = 231
	icon_232 = 232
	icon_233 = 233
	icon_234 = 234
	icon_235 = 235
	icon_236 = 236
	icon_237 = 237
	icon_238 = 238
	icon_239 = 239
	icon_240 = 240
	icon_241 = 241
	icon_242 = 242
	icon_243 = 243
	icon_244 = 244
	icon_245 = 245
	icon_246 = 246
	icon_247 = 247
	icon_248 = 248
	icon_249 = 249
	icon_250 = 250
	icon_251 = 251
	icon_252 = 252
	icon_253 = 253
	icon_254 = 254
	icon_255 = 255
}
