/********************************************************\

Example raylibv program.
Feel free to use this as a starting point for your game.

If you want to compile for the wayland windowing system,
pass -d wayland.

\********************************************************/
module main

import irishgreencitrus.raylibv as r

const (
	screen_width  = 800
	screen_height = 450
)

fn main() {
	r.init_window(screen_width, screen_height, 'raylib.v [core] example - basic window'.str)
	r.set_target_fps(60)
	for !r.window_should_close() {
		r.begin_drawing()
		r.clear_background(r.Color{ r: 245, g: 245, b: 245, a: 255 })
		r.draw_text('Congrats! You created your first window in V!'.str, 190, 200, 20, r.Color{
			r: 0
			g: 0
			b: 0
			a: 255
		})
		r.end_drawing()
	}
	r.close_window()
}
