import irishgreencitrus.raylibv as r

const screen_width = 800
const screen_height = 450

fn main() {
	r.init_window(screen_width, screen_height, 'raylib.v [core] example - 3D camera free'.str)
	mut camera := r.Camera{
		position: r.Vector3{10.0, 10.0, 10.0}
		target: r.Vector3{0.0, 0.0, 0.0}
		up: r.Vector3{0.0, 1.0, 0.0}
		fovy: 45.0
		projection: r.camera_perspective
	}
	mut cube_position := r.Vector3{0.0, 0.0, 0.0}

	r.set_camera_mode(camera, r.camera_free)

	r.set_target_fps(60)

	for !r.window_should_close() {
		r.update_camera(&camera)

		if r.is_key_down(r.key_z) {
			camera.target = r.Vector3{0.0, 0.0, 0.0}
		}

		r.begin_drawing()
		r.clear_background(r.raywhite)

		r.begin_mode_3d(r.Camera3D(camera))
		r.draw_cube(cube_position, 2.0, 2.0, 2.0, r.red)
		r.draw_cube_wires(cube_position, 2.0, 2.0, 2.0, r.maroon)
		r.draw_grid(10, 1.0)
		r.end_mode_3d()

		r.draw_rectangle(10, 10, 320, 133, r.fade(r.skyblue, 0.5))
		r.draw_rectangle_lines(10, 10, 320, 133, r.blue)
		r.draw_text('Free camera controls:'.str, 20, 20, 10, r.black)
		r.draw_text('- Mouse Wheel to zoom'.str, 40, 40, 10, r.darkgray)
		r.draw_text('- Mouse Wheel Pressed to pan'.str, 40, 60, 10, r.darkgray)
		r.draw_text('- Alt+Mouse Wheel Pressed to rotate'.str, 40, 80, 10, r.darkgray)
		r.draw_text('- Ctrl+Alt+Mouse Wheel Pressed for smooth zoom'.str, 40, 100, 10,
			r.darkgray)
		r.draw_text('- Z to reset camera position'.str, 40, 120, 10, r.darkgray)

		r.end_drawing()
	}
}
