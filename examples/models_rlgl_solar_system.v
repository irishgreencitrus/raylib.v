import irishgreencitrus.raylibv as r
import math { cosf, sinf }

const (
	screen_width       = 800
	screen_height      = 450
	sun_radius         = 4.0
	earth_radius       = 0.6
	earth_orbit_radius = 8.0
	moon_radius        = 0.16
	moon_orbit_radius  = 1.5
	deg2rad            = math.pi / 180
)

fn main() {
	r.init_window(screen_width, screen_height, c'raylib [models] example - rlgl module usage with push/pop matrix transformations')

	mut camera := r.Camera{
		position: r.Vector3{16.0, 16.0, 16.0}
		target: r.Vector3{0.0, 0.0, 0.0}
		up: r.Vector3{0.0, 1.0, 0.0}
		fovy: 45.0
		projection: r.camera_perspective
	}

	rotation_speed := f32(0.2)

	mut earth_rotation := f32(0.0)
	mut earth_orbit_rotation := f32(0.0)
	mut moon_rotation := f32(0.0)
	mut moon_orbit_rotation := f32(0.0)

	r.set_target_fps(60)

	for !r.window_should_close() {
		r.update_camera(&camera, r.camera_orbital)

		earth_rotation += 5.0 * rotation_speed
		earth_orbit_rotation += 365 / 360.0 * (5.0 * rotation_speed) * rotation_speed
		moon_rotation += 2.0 * rotation_speed
		moon_orbit_rotation += 8.0 * rotation_speed

		r.begin_drawing()
		{
			r.clear_background(r.raywhite)

			r.begin_mode_3d(r.Camera3D(camera))
			{
				r.rl_push_matrix()
				{
					r.rl_scalef(sun_radius, sun_radius, sun_radius)
					draw_sphere_basic(r.gold)
				}
				r.rl_pop_matrix()

				r.rl_push_matrix()
				{
					r.rl_rotatef(earth_orbit_rotation, 0.0, 1.0, 0.0)
					r.rl_translatef(earth_orbit_radius, 0.0, 0.0)

					r.rl_push_matrix()
					{
						r.rl_rotatef(earth_rotation, 0.25, 1.0, 0.0)
						r.rl_scalef(earth_radius, earth_radius, earth_radius)

						draw_sphere_basic(r.blue)
					}
					r.rl_pop_matrix()

					r.rl_rotatef(moon_orbit_rotation, 0.0, 1.0, 0.0)
					r.rl_translatef(moon_orbit_radius, 0.0, 0.0)
					r.rl_rotatef(moon_rotation, 0.0, 1.0, 0.0)
					r.rl_scalef(moon_radius, moon_radius, moon_radius)

					draw_sphere_basic(r.lightgray)
				}
				r.rl_pop_matrix()

				r.draw_circle_3d(r.Vector3{0.0, 0.0, 0.0}, earth_orbit_radius, r.Vector3{1, 0, 0},
					90.0, r.fade(r.red, 0.5))
				r.draw_grid(20, 1.0)
			}
			r.end_mode_3d()

			r.draw_text(c'EARTH ORBITING AROUND THE SUN!', 400, 10, 20, r.maroon)
			r.draw_fps(10, 10)
		}
		r.end_drawing()
	}

	r.close_window()
}

fn draw_sphere_basic(color r.Color) {
	rings := 16
	slices := 16

	r.rl_check_render_batch_limit((rings + 2)*slices*6)

	r.rl_begin(r.rl_triangles)
	r.rl_color4ub(color.r, color.g, color.b, color.a)

	for i := 0; i < (rings + 2); i++ {
		for j := 0; j < slices; j++ {
			r.rl_vertex3f(cosf(deg2rad * (270 + (180 / (f32(rings) + 1)) * i)) * sinf(deg2rad * (f32(j) * 360 / slices)),
				sinf(deg2rad * (270 + (180 / (f32(rings) + 1)) * i)), cosf(deg2rad * (270 +
				(180 / (f32(rings) + 1)) * i)) * cosf(deg2rad * (f32(j) * 360 / slices)))
			r.rl_vertex3f(cosf(deg2rad * (270 + (180 / (f32(rings) + 1)) * (f32(i) + 1))) * sinf(deg2rad * ((
				f32(j) + 1) * 360 / slices)), sinf(deg2rad * (270 + (180 / (f32(rings) +
				1)) * (f32(i) + 1))), cosf(deg2rad * (270 + (180 / (f32(rings) + 1)) * (f32(i) + 1))) * cosf(deg2rad * ((
				f32(j) + 1) * 360 / slices)))
			r.rl_vertex3f(cosf(deg2rad * (270 + (180 / (f32(rings) + 1)) * (f32(i) + 1))) * sinf(deg2rad * (f32(j) * 360 / slices)),
				sinf(deg2rad * (270 + (180 / (f32(rings) + 1)) * (f32(i) + 1))), cosf(deg2rad * (
				270 + (180 / (f32(rings) + 1)) * (f32(i) + 1))) * cosf(deg2rad * (f32(j) * 360 / slices)))

			r.rl_vertex3f(cosf(deg2rad * (270 + (180 / (f32(rings) + 1)) * i)) * sinf(deg2rad * (f32(j) * 360 / slices)),
				sinf(deg2rad * (270 + (180 / (f32(rings) + 1)) * i)), cosf(deg2rad * (270 +
				(180 / (f32(rings) + 1)) * i)) * cosf(deg2rad * (f32(j) * 360 / slices)))
			r.rl_vertex3f(cosf(deg2rad * (270 + (180 / (f32(rings) + 1)) * i)) * sinf(deg2rad * ((
				f32(j) + 1) * 360 / slices)), sinf(deg2rad * (270 + (180 / (f32(rings) + 1)) * i)),
				cosf(deg2rad * (270 + (180 / (f32(rings) + 1)) * i)) * cosf(deg2rad * ((f32(j) + 1) * 360 / slices)))
			r.rl_vertex3f(cosf(deg2rad * (270 + (180 / (f32(rings) + 1)) * (i + 1))) * sinf(deg2rad * ((
				f32(j) + 1) * 360 / slices)), sinf(deg2rad * (270 + (180 / (f32(rings) + 1)) * (i +
				1))), cosf(deg2rad * (270 + (180 / (f32(rings) + 1)) * (i + 1))) * cosf(deg2rad * ((
				f32(j) + 1) * 360 / slices)))
		}
	}
	r.rl_end()
}
