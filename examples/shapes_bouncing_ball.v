import irishgreencitrus.raylibv as r

const screen_width = 800
const screen_height = 450

fn main() {
	r.init_window(screen_width, screen_height, 'raylib.v [shapes] example - bouncing ball'.str)

	mut ball_position := r.Vector2{f32(r.get_screen_width()) / 2.0, f32(r.get_screen_height()) / 2.0}
	mut ball_speed := r.Vector2{5.0, 4.0}
	ball_radius := 20
	mut paused := false
	mut frame_counter := 0

	r.set_target_fps(60)

	for !r.window_should_close() {
		if r.is_key_pressed(r.key_space) {
			paused = !paused
		}
		if !paused {
			ball_position.x += ball_speed.x
			ball_position.y += ball_speed.y
			if ball_position.x >= (r.get_screen_width() - ball_radius)
				|| ball_position.x <= ball_radius {
				ball_speed.x *= -1.0
			}
			if ball_position.y >= (r.get_screen_height() - ball_radius)
				|| ball_position.y <= ball_radius {
				ball_speed.y *= -1.0
			}
		} else {
			frame_counter++
		}

		r.begin_drawing()

		r.clear_background(r.raywhite)
		r.draw_circle_v(ball_position, f32(ball_radius), r.maroon)
		r.draw_text('Press SPACE to PAUSE BALL MOVEMENT'.str, 10, r.get_screen_height() - 25,
			20, r.lightgray)

		if paused && ((frame_counter / 30) % 2) == 1 {
			r.draw_text('PAUSED'.str, 350, 200, 30, r.gray)
		}
		r.draw_fps(10, 10)

		r.end_drawing()
	}
	r.close_window()
}
