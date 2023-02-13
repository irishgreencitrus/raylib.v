module main

import irishgreencitrus.raylibv as r

const (
	max_colors_count = 23
	screen_width     = 800
	screen_height    = 450
)

fn main() {
	r.init_window(screen_width, screen_height, 'raylib.v [textures] example - mouse painting'.str)

	colors := [r.raywhite, r.yellow, r.gold, r.orange, r.pink, r.red, r.maroon, r.green, r.lime,
		r.darkgreen, r.skyblue, r.blue, r.darkblue, r.purple, r.violet, r.darkpurple, r.beige,
		r.brown, r.darkbrown, r.lightgray, r.gray, r.darkgray, r.black]

	mut color_recs := []r.Rectangle{len: max_colors_count}
	for i in 0 .. max_colors_count {
		color_recs[i] = r.Rectangle{
			x: 10.0 + 30.0 * i + 2.0 * i
			y: 10.0
			width: 30.0
			height: 30.0
		}
	}
	mut color_selected := 0
	mut previous_color_selected := color_selected
	mut color_mouse_hover := 0
	mut brush_size := 20.0
	mut mouse_was_pressed := false
	mut btn_save_rect := r.Rectangle{750.0, 10.0, 40.0, 30.0}
	btn_save_mouse_hover := false
	show_save_message := false
	save_message_counter := 0

	target := r.load_render_texture(screen_width, screen_height)

	r.begin_texture_mode(target)
	r.clear_background(colors[0])
	r.end_texture_mode()
	r.set_target_fps(120)

	for !r.window_should_close() {
		mousepos := r.get_mouse_position()
		r.begin_drawing()
		r.clear_background(colors[0])
		r.end_drawing()

		if r.is_key_pressed(r.key_right) {
			color_selected++
		} else if r.is_key_pressed(r.key_left) {
			color_selected--
		}

		if color_selected >= max_colors_count {
			color_selected = max_colors_count - 1
		} else if color_selected < 0 {
			color_selected = 0
		}
		for i in 0 .. max_colors_count {
			if r.check_collision_point_rec(mousepos, color_recs[i]) {
				color_mouse_hover = i
				break
			} else {
				color_mouse_hover = -1
			}
		}
		if (color_mouse_hover >= 0) && r.is_mouse_button_pressed(r.mouse_button_left) {
			color_selected = color_mouse_hover
			previous_color_selected = color_selected
		}

		brush_size += r.get_mouse_wheel_move() * 5.0
		if brush_size < 2.0 {
			brush_size = 2.0
		}
		if brush_size > 50.0 {
			brush_size = 50.0
		}

		if r.is_key_pressed(r.key_c) {
			r.begin_texture_mode(target)
			r.clear_background(colors[0])
			r.end_texture_mode()
		}

		if r.is_mouse_button_down(r.mouse_button_left)
			|| (r.get_gesture_detected() == r.gesture_drag) {
			r.begin_texture_mode(target)
			if mousepos.y > 50.0 {
				r.draw_circle(int(mousepos.x), int(mousepos.y), f32(brush_size), colors[color_selected])
			}
			r.end_texture_mode()
		}

		if r.is_mouse_button_down(r.mouse_button_right) {
			if !mouse_was_pressed {
				previous_color_selected = color_selected
				color_selected = 0
			}
			mouse_was_pressed = true
			r.begin_texture_mode(target)
			if mousepos.y > 50.0 {
				r.draw_circle(int(mousepos.x), int(mousepos.y), f32(brush_size), colors[0])
			}
			r.end_texture_mode()
		} else if r.is_mouse_button_released(r.mouse_button_right) && mouse_was_pressed {
			color_selected = previous_color_selected
			mouse_was_pressed = false
		}

		r.begin_drawing()
		r.clear_background(r.raywhite)

		r.draw_texture_rec(r.Texture2D(target.texture), r.Rectangle{0.0, 0.0, f32(target.texture.width), f32(-target.texture.height)},
			r.Vector2{0.0, 0.0}, r.white)
        if mousepos.y > 50.0 {
            if r.is_mouse_button_down(r.mouse_button_right) {
                r.draw_circle_lines(
                    int(mousepos.x),
                    int(mousepos.y),
                    f32(brush_size),
                    r.gray
                )
            } else {
                r.draw_circle(r.get_mouse_x(), r.get_mouse_y(), f32(brush_size), colors[color_selected])
            }
        }
        r.draw_rectangle(0,0,r.get_screen_width(),50,r.raywhite)
        r.draw_line(0,50,r.get_screen_width(),50, r.lightgray)
        for i in 0..max_colors_count {
            r.draw_rectangle_rec(color_recs[i], colors[i])
        }
        r.draw_rectangle_lines(10,10,30,30,r.lightgray)
		r.end_drawing()
	}
    r.unload_render_texture(target)
    r.close_window()
}
