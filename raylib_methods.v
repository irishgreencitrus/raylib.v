module raylibv
import math

pub fn fposmod(x f64, y f64) f64 {
		if x >= 0 {
				return math.fmod(x,y)
		} else {
				return y-math.fmod(-x,y)
		}
}

/*
https://github.com/godotengine/godot/blob/3.3.3-stable/core/math/vector2.cpp#L137
Vector2 Methods.
This implements the full set of functions found in Godot 3.3, not raymath
although most overlap. More functions can be found here than raymath
*/
pub fn (v Vector2) angle() f64 {
		return math.atan2(v.y,v.x)
}
pub fn (v Vector2) length() f64 {
		return math.sqrt(v.x*v.x+v.y*v.y)
}
pub fn (v Vector2) length_squared() f64{
		return v.x*v.x + v.y*v.y
}
pub fn (v Vector2) normalize() Vector2 {
		mut x := v.x
		mut y := v.y
		mut l := x*x + y*y
		if l != 0 {
				l = math.sqrt(l)
				x /= l
				y /= l
		}
		return Vector2{x,y}
}
pub fn (v Vector2) is_normalized() bool {
		return v.length_squared().eq_epsilon(1.0)
}
pub fn (v Vector2) dot(v2 Vector2) f64 {
		return v.x * v2.x + v.y * v2.y
}
pub fn (v Vector2) cross(v2 Vector2) f64 {
		return v.x * v2.x - v.y * v2.y
}
pub fn (v Vector2) distance_to(v2 Vector2) f64 {
		return math.sqrt((v.x - v2.x) * (v.x - v2.x) + (v.y - v2.y) * (y - v2.y))
}
pub fn (v Vector2) distance_squared_to(v2 Vector2) f64 {
		return (v.x - v2.x) * (v.x - v2.x) + (v.y - v2.y) * (y - v2.y)
}
pub fn (v Vector2) angle_to(v2 Vector2) f64 {
		return math.atan2(v.cross(v2),v.dot(v2))
} 
pub fn (v Vector2) angle_to_point(v2 Vector2) f64 {
		return math.atan2(v.y - v2.y, v.x - v2.x)
}
pub fn (v Vector2) sign() Vector2 {
		return Vector2{f32(math.sign(v.x)), f32(math.sign(v.y))}
}
pub fn (v Vector2) floor() Vector2 {
		return Vector2{f32(math.floor(v.x)),f32(math.floor(v.y))}
}
pub fn (v Vector2) ceil() Vector2 {
		return Vector2{f32(math.ceil(v.x)), f32(math.ceil(v.y))}
}
pub fn (v Vector2) round() Vector2 {
		return Vector2{f32(math.round(v.x)),f32(math.round(v.y))}
}
pub fn (v Vector2) set_rotation(radians f64) Vector2 {
		return Vector2{math.cos(radians),math.sin(radians)}
}
pub fn (v Vector2) rotated(by f64) Vector2 {
		mut x := Vector2{}
		x.set_rotation(v.angle()+p_by)
		x *= v.length()
		return v
}
pub fn (v Vector2) posmod(mod f64) Vector2 {
		return Vector2{f32(fposmod(x,mod)),f32(fposmod(y,p_mod))}
}
pub fn (v Vector2) posmodv(mod Vector2) Vector2 {
		return Vector2{f32(fposmod(x,mod.x)),f32(fposmod(y,mod.y))}
}
pub fn (v Vector2) project(to Vector2) Vector2 {}
