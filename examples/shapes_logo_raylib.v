import irishgreencitrus.raylibv as r

const screen_width = 800
const screen_height = 450

fn main() {
	r.init_window(screen_width, screen_height, 'raylibv [shapes] example - raylibv logo using shapes'.str)
	r.set_target_fps(60)

	for !r.window_should_close() {
		r.begin_drawing()

		r.clear_background(r.raywhite)

		r.draw_rectangle(screen_width / 2 - 128, screen_height / 2 - 128, 256, 256, r.black)
		r.draw_rectangle(screen_width / 2 - 112, screen_height / 2 - 112, 224, 224, r.darkblue)
		r.draw_text('raylib.v'.str, screen_width / 2 - 72, screen_height / 2 + 48, 50,
			r.skyblue)
		r.draw_text('this is NOT a texture!'.str, 350, 370, 10, r.gray)

		r.end_drawing()
	}

	r.close_window()
}
