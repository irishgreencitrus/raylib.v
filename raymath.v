module raylibv

// start structs
[typedef]
struct C.Float3 {
pub mut:
	v [3]f32
}

pub type Float3 = C.Float3

[typedef]
struct C.Float16 {
pub mut:
	v [16]f32
}

pub type Float16 = C.Float16

fn C.Clamp(value f32, min f32, max f32) f32
[inline]
pub fn clamp(value f32, min f32, max f32) f32 {
	return C.Clamp(value, min, max)
}

fn C.Lerp(start f32, end f32, amount f32) f32
[inline]
pub fn lerp(start f32, end f32, amount f32) f32 {
	return C.Lerp(start, end, amount)
}

fn C.Normalize(value f32, start f32, end f32) f32
[inline]
pub fn normalize(value f32, start f32, end f32) f32 {
	return C.Normalize(value, start, end)
}

fn C.Remap(value f32, inputstart f32, inputend f32, outputstart f32, outputend f32) f32
[inline]
pub fn remap(value f32, inputstart f32, inputend f32, outputstart f32, outputend f32) f32 {
	return C.Remap(value, inputstart, inputend, outputstart, outputend)
}

fn C.Wrap(value f32, min f32, max f32) f32
[inline]
pub fn wrap(value f32, min f32, max f32) f32 {
	return C.Wrap(value, min, max)
}

fn C.FloatEquals(x f32, y f32) int
[inline]
pub fn float_equals(x f32, y f32) int {
	return C.FloatEquals(x, y)
}

fn C.Vector2Zero() Vector2
[inline]
pub fn vector2_zero() Vector2 {
	return C.Vector2Zero()
}

fn C.Vector2One() Vector2
[inline]
pub fn vector2_one() Vector2 {
	return C.Vector2One()
}

fn C.Vector2Add(v1 Vector2, v2 Vector2) Vector2
[inline]
pub fn vector2_add(v1 Vector2, v2 Vector2) Vector2 {
	return C.Vector2Add(v1, v2)
}

fn C.Vector2AddValue(v Vector2, add f32) Vector2
[inline]
pub fn vector2_add_value(v Vector2, add f32) Vector2 {
	return C.Vector2AddValue(v, add)
}

fn C.Vector2Subtract(v1 Vector2, v2 Vector2) Vector2
[inline]
pub fn vector2_subtract(v1 Vector2, v2 Vector2) Vector2 {
	return C.Vector2Subtract(v1, v2)
}

fn C.Vector2SubtractValue(v Vector2, sub f32) Vector2
[inline]
pub fn vector2_subtract_value(v Vector2, sub f32) Vector2 {
	return C.Vector2SubtractValue(v, sub)
}

fn C.Vector2Length(v Vector2) f32
[inline]
pub fn vector2_length(v Vector2) f32 {
	return C.Vector2Length(v)
}

fn C.Vector2LengthSqr(v Vector2) f32
[inline]
pub fn vector2_length_sqr(v Vector2) f32 {
	return C.Vector2LengthSqr(v)
}

fn C.Vector2DotProduct(v1 Vector2, v2 Vector2) f32
[inline]
pub fn vector2_dot_product(v1 Vector2, v2 Vector2) f32 {
	return C.Vector2DotProduct(v1, v2)
}

fn C.Vector2Distance(v1 Vector2, v2 Vector2) f32
[inline]
pub fn vector2_distance(v1 Vector2, v2 Vector2) f32 {
	return C.Vector2Distance(v1, v2)
}

fn C.Vector2DistanceSqr(v1 Vector2, v2 Vector2) f32
[inline]
pub fn vector2_distance_sqr(v1 Vector2, v2 Vector2) f32 {
	return C.Vector2DistanceSqr(v1, v2)
}

fn C.Vector2Angle(v1 Vector2, v2 Vector2) f32
[inline]
pub fn vector2_angle(v1 Vector2, v2 Vector2) f32 {
	return C.Vector2Angle(v1, v2)
}

fn C.Vector2LineAngle(start Vector2, end Vector2) f32
[inline]
pub fn vector2_line_angle(start Vector2, end Vector2) f32 {
	return C.Vector2LineAngle(start, end)
}

fn C.Vector2Scale(v Vector2, scale f32) Vector2
[inline]
pub fn vector2_scale(v Vector2, scale f32) Vector2 {
	return C.Vector2Scale(v, scale)
}

fn C.Vector2Multiply(v1 Vector2, v2 Vector2) Vector2
[inline]
pub fn vector2_multiply(v1 Vector2, v2 Vector2) Vector2 {
	return C.Vector2Multiply(v1, v2)
}

fn C.Vector2Negate(v Vector2) Vector2
[inline]
pub fn vector2_negate(v Vector2) Vector2 {
	return C.Vector2Negate(v)
}

fn C.Vector2Divide(v1 Vector2, v2 Vector2) Vector2
[inline]
pub fn vector2_divide(v1 Vector2, v2 Vector2) Vector2 {
	return C.Vector2Divide(v1, v2)
}

fn C.Vector2Normalize(v Vector2) Vector2
[inline]
pub fn vector2_normalize(v Vector2) Vector2 {
	return C.Vector2Normalize(v)
}

fn C.Vector2Transform(v Vector2, mat Matrix) Vector2
[inline]
pub fn vector2_transform(v Vector2, mat Matrix) Vector2 {
	return C.Vector2Transform(v, mat)
}

fn C.Vector2Lerp(v1 Vector2, v2 Vector2, amount f32) Vector2
[inline]
pub fn vector2_lerp(v1 Vector2, v2 Vector2, amount f32) Vector2 {
	return C.Vector2Lerp(v1, v2, amount)
}

fn C.Vector2Reflect(v Vector2, normal Vector2) Vector2
[inline]
pub fn vector2_reflect(v Vector2, normal Vector2) Vector2 {
	return C.Vector2Reflect(v, normal)
}

fn C.Vector2Rotate(v Vector2, angle f32) Vector2
[inline]
pub fn vector2_rotate(v Vector2, angle f32) Vector2 {
	return C.Vector2Rotate(v, angle)
}

fn C.Vector2MoveTowards(v Vector2, target Vector2, maxdistance f32) Vector2
[inline]
pub fn vector2_move_towards(v Vector2, target Vector2, maxdistance f32) Vector2 {
	return C.Vector2MoveTowards(v, target, maxdistance)
}

fn C.Vector2Invert(v Vector2) Vector2
[inline]
pub fn vector2_invert(v Vector2) Vector2 {
	return C.Vector2Invert(v)
}

fn C.Vector2Clamp(v Vector2, min Vector2, max Vector2) Vector2
[inline]
pub fn vector2_clamp(v Vector2, min Vector2, max Vector2) Vector2 {
	return C.Vector2Clamp(v, min, max)
}

fn C.Vector2ClampValue(v Vector2, min f32, max f32) Vector2
[inline]
pub fn vector2_clamp_value(v Vector2, min f32, max f32) Vector2 {
	return C.Vector2ClampValue(v, min, max)
}

fn C.Vector2Equals(p Vector2, q Vector2) int
[inline]
pub fn vector2_equals(p Vector2, q Vector2) int {
	return C.Vector2Equals(p, q)
}

fn C.Vector3Zero() Vector3
[inline]
pub fn vector3_zero() Vector3 {
	return C.Vector3Zero()
}

fn C.Vector3One() Vector3
[inline]
pub fn vector3_one() Vector3 {
	return C.Vector3One()
}

fn C.Vector3Add(v1 Vector3, v2 Vector3) Vector3
[inline]
pub fn vector3_add(v1 Vector3, v2 Vector3) Vector3 {
	return C.Vector3Add(v1, v2)
}

fn C.Vector3AddValue(v Vector3, add f32) Vector3
[inline]
pub fn vector3_add_value(v Vector3, add f32) Vector3 {
	return C.Vector3AddValue(v, add)
}

fn C.Vector3Subtract(v1 Vector3, v2 Vector3) Vector3
[inline]
pub fn vector3_subtract(v1 Vector3, v2 Vector3) Vector3 {
	return C.Vector3Subtract(v1, v2)
}

fn C.Vector3SubtractValue(v Vector3, sub f32) Vector3
[inline]
pub fn vector3_subtract_value(v Vector3, sub f32) Vector3 {
	return C.Vector3SubtractValue(v, sub)
}

fn C.Vector3Scale(v Vector3, scalar f32) Vector3
[inline]
pub fn vector3_scale(v Vector3, scalar f32) Vector3 {
	return C.Vector3Scale(v, scalar)
}

fn C.Vector3Multiply(v1 Vector3, v2 Vector3) Vector3
[inline]
pub fn vector3_multiply(v1 Vector3, v2 Vector3) Vector3 {
	return C.Vector3Multiply(v1, v2)
}

fn C.Vector3CrossProduct(v1 Vector3, v2 Vector3) Vector3
[inline]
pub fn vector3_cross_product(v1 Vector3, v2 Vector3) Vector3 {
	return C.Vector3CrossProduct(v1, v2)
}

fn C.Vector3Perpendicular(v Vector3) Vector3
[inline]
pub fn vector3_perpendicular(v Vector3) Vector3 {
	return C.Vector3Perpendicular(v)
}

fn C.Vector3Length(v Vector3) f32
[inline]
pub fn vector3_length(v Vector3) f32 {
	return C.Vector3Length(v)
}

fn C.Vector3LengthSqr(v Vector3) f32
[inline]
pub fn vector3_length_sqr(v Vector3) f32 {
	return C.Vector3LengthSqr(v)
}

fn C.Vector3DotProduct(v1 Vector3, v2 Vector3) f32
[inline]
pub fn vector3_dot_product(v1 Vector3, v2 Vector3) f32 {
	return C.Vector3DotProduct(v1, v2)
}

fn C.Vector3Distance(v1 Vector3, v2 Vector3) f32
[inline]
pub fn vector3_distance(v1 Vector3, v2 Vector3) f32 {
	return C.Vector3Distance(v1, v2)
}

fn C.Vector3DistanceSqr(v1 Vector3, v2 Vector3) f32
[inline]
pub fn vector3_distance_sqr(v1 Vector3, v2 Vector3) f32 {
	return C.Vector3DistanceSqr(v1, v2)
}

fn C.Vector3Angle(v1 Vector3, v2 Vector3) f32
[inline]
pub fn vector3_angle(v1 Vector3, v2 Vector3) f32 {
	return C.Vector3Angle(v1, v2)
}

fn C.Vector3Negate(v Vector3) Vector3
[inline]
pub fn vector3_negate(v Vector3) Vector3 {
	return C.Vector3Negate(v)
}

fn C.Vector3Divide(v1 Vector3, v2 Vector3) Vector3
[inline]
pub fn vector3_divide(v1 Vector3, v2 Vector3) Vector3 {
	return C.Vector3Divide(v1, v2)
}

fn C.Vector3Normalize(v Vector3) Vector3
[inline]
pub fn vector3_normalize(v Vector3) Vector3 {
	return C.Vector3Normalize(v)
}

fn C.Vector3OrthoNormalize(v1 &Vector3, v2 &Vector3)
[inline]
pub fn vector3_ortho_normalize(v1 &Vector3, v2 &Vector3) {
	C.Vector3OrthoNormalize(v1, v2)
}

fn C.Vector3Transform(v Vector3, mat Matrix) Vector3
[inline]
pub fn vector3_transform(v Vector3, mat Matrix) Vector3 {
	return C.Vector3Transform(v, mat)
}

fn C.Vector3RotateByQuaternion(v Vector3, q Quaternion) Vector3
[inline]
pub fn vector3_rotate_by_quaternion(v Vector3, q Quaternion) Vector3 {
	return C.Vector3RotateByQuaternion(v, q)
}

fn C.Vector3RotateByAxisAngle(v Vector3, axis Vector3, angle f32) Vector3
[inline]
pub fn vector3_rotate_by_axis_angle(v Vector3, axis Vector3, angle f32) Vector3 {
	return C.Vector3RotateByAxisAngle(v, axis, angle)
}

fn C.Vector3Lerp(v1 Vector3, v2 Vector3, amount f32) Vector3
[inline]
pub fn vector3_lerp(v1 Vector3, v2 Vector3, amount f32) Vector3 {
	return C.Vector3Lerp(v1, v2, amount)
}

fn C.Vector3Reflect(v Vector3, normal Vector3) Vector3
[inline]
pub fn vector3_reflect(v Vector3, normal Vector3) Vector3 {
	return C.Vector3Reflect(v, normal)
}

fn C.Vector3Min(v1 Vector3, v2 Vector3) Vector3
[inline]
pub fn vector3_min(v1 Vector3, v2 Vector3) Vector3 {
	return C.Vector3Min(v1, v2)
}

fn C.Vector3Max(v1 Vector3, v2 Vector3) Vector3
[inline]
pub fn vector3_max(v1 Vector3, v2 Vector3) Vector3 {
	return C.Vector3Max(v1, v2)
}

fn C.Vector3Barycenter(p Vector3, a Vector3, b Vector3, c Vector3) Vector3
[inline]
pub fn vector3_barycenter(p Vector3, a Vector3, b Vector3, c Vector3) Vector3 {
	return C.Vector3Barycenter(p, a, b, c)
}

fn C.Vector3Unproject(source Vector3, projection Matrix, view Matrix) Vector3
[inline]
pub fn vector3_unproject(source Vector3, projection Matrix, view Matrix) Vector3 {
	return C.Vector3Unproject(source, projection, view)
}

fn C.Vector3ToFloatV(v Vector3) Float3
[inline]
pub fn vector3_to_floatv(v Vector3) Float3 {
	return C.Vector3ToFloatV(v)
}

fn C.Vector3Invert(v Vector3) Vector3
[inline]
pub fn vector3_invert(v Vector3) Vector3 {
	return C.Vector3Invert(v)
}

fn C.Vector3Clamp(v Vector3, min Vector3, max Vector3) Vector3
[inline]
pub fn vector3_clamp(v Vector3, min Vector3, max Vector3) Vector3 {
	return C.Vector3Clamp(v, min, max)
}

fn C.Vector3ClampValue(v Vector3, min f32, max f32) Vector3
[inline]
pub fn vector3_clamp_value(v Vector3, min f32, max f32) Vector3 {
	return C.Vector3ClampValue(v, min, max)
}

fn C.Vector3Equals(p Vector3, q Vector3) int
[inline]
pub fn vector3_equals(p Vector3, q Vector3) int {
	return C.Vector3Equals(p, q)
}

fn C.Vector3Refract(v Vector3, n Vector3, r f32) Vector3
[inline]
pub fn vector3_refract(v Vector3, n Vector3, r f32) Vector3 {
	return C.Vector3Refract(v, n, r)
}

fn C.MatrixDeterminant(mat Matrix) f32
[inline]
pub fn matrix_determinant(mat Matrix) f32 {
	return C.MatrixDeterminant(mat)
}

fn C.MatrixTrace(mat Matrix) f32
[inline]
pub fn matrix_trace(mat Matrix) f32 {
	return C.MatrixTrace(mat)
}

fn C.MatrixTranspose(mat Matrix) Matrix
[inline]
pub fn matrix_transpose(mat Matrix) Matrix {
	return C.MatrixTranspose(mat)
}

fn C.MatrixInvert(mat Matrix) Matrix
[inline]
pub fn matrix_invert(mat Matrix) Matrix {
	return C.MatrixInvert(mat)
}

fn C.MatrixIdentity() Matrix
[inline]
pub fn matrix_identity() Matrix {
	return C.MatrixIdentity()
}

fn C.MatrixAdd(left Matrix, right Matrix) Matrix
[inline]
pub fn matrix_add(left Matrix, right Matrix) Matrix {
	return C.MatrixAdd(left, right)
}

fn C.MatrixSubtract(left Matrix, right Matrix) Matrix
[inline]
pub fn matrix_subtract(left Matrix, right Matrix) Matrix {
	return C.MatrixSubtract(left, right)
}

fn C.MatrixMultiply(left Matrix, right Matrix) Matrix
[inline]
pub fn matrix_multiply(left Matrix, right Matrix) Matrix {
	return C.MatrixMultiply(left, right)
}

fn C.MatrixTranslate(x f32, y f32, z f32) Matrix
[inline]
pub fn matrix_translate(x f32, y f32, z f32) Matrix {
	return C.MatrixTranslate(x, y, z)
}

fn C.MatrixRotate(axis Vector3, angle f32) Matrix
[inline]
pub fn matrix_rotate(axis Vector3, angle f32) Matrix {
	return C.MatrixRotate(axis, angle)
}

fn C.MatrixRotateX(angle f32) Matrix
[inline]
pub fn matrix_rotate_x(angle f32) Matrix {
	return C.MatrixRotateX(angle)
}

fn C.MatrixRotateY(angle f32) Matrix
[inline]
pub fn matrix_rotate_y(angle f32) Matrix {
	return C.MatrixRotateY(angle)
}

fn C.MatrixRotateZ(angle f32) Matrix
[inline]
pub fn matrix_rotate_z(angle f32) Matrix {
	return C.MatrixRotateZ(angle)
}

fn C.MatrixRotateXYZ(angle Vector3) Matrix
[inline]
pub fn matrix_rotate_xyz(angle Vector3) Matrix {
	return C.MatrixRotateXYZ(angle)
}

fn C.MatrixRotateZYX(angle Vector3) Matrix
[inline]
pub fn matrix_rotate_zyx(angle Vector3) Matrix {
	return C.MatrixRotateZYX(angle)
}

fn C.MatrixScale(x f32, y f32, z f32) Matrix
[inline]
pub fn matrix_scale(x f32, y f32, z f32) Matrix {
	return C.MatrixScale(x, y, z)
}

fn C.MatrixFrustum(left f64, right f64, bottom f64, top f64, near f64, far f64) Matrix
[inline]
pub fn matrix_frustum(left f64, right f64, bottom f64, top f64, near f64, far f64) Matrix {
	return C.MatrixFrustum(left, right, bottom, top, near, far)
}

fn C.MatrixPerspective(fovy f64, aspect f64, near f64, far f64) Matrix
[inline]
pub fn matrix_perspective(fovy f64, aspect f64, near f64, far f64) Matrix {
	return C.MatrixPerspective(fovy, aspect, near, far)
}

fn C.MatrixOrtho(left f64, right f64, bottom f64, top f64, near f64, far f64) Matrix
[inline]
pub fn matrix_ortho(left f64, right f64, bottom f64, top f64, near f64, far f64) Matrix {
	return C.MatrixOrtho(left, right, bottom, top, near, far)
}

fn C.MatrixLookAt(eye Vector3, target Vector3, up Vector3) Matrix
[inline]
pub fn matrix_look_at(eye Vector3, target Vector3, up Vector3) Matrix {
	return C.MatrixLookAt(eye, target, up)
}

fn C.MatrixToFloatV(mat Matrix) Float16
[inline]
pub fn matrix_to_float_v(mat Matrix) Float16 {
	return C.MatrixToFloatV(mat)
}

fn C.QuaternionAdd(q1 Quaternion, q2 Quaternion) Quaternion
[inline]
pub fn quaternion_add(q1 Quaternion, q2 Quaternion) Quaternion {
	return C.QuaternionAdd(q1, q2)
}

fn C.QuaternionAddValue(q Quaternion, add f32) Quaternion
[inline]
pub fn quaternion_add_value(q Quaternion, add f32) Quaternion {
	return C.QuaternionAddValue(q, add)
}

fn C.QuaternionSubtract(q1 Quaternion, q2 Quaternion) Quaternion
[inline]
pub fn quaternion_subtract(q1 Quaternion, q2 Quaternion) Quaternion {
	return C.QuaternionSubtract(q1, q2)
}

fn C.QuaternionSubtractValue(q Quaternion, sub f32) Quaternion
[inline]
pub fn quaternion_subtract_value(q Quaternion, sub f32) Quaternion {
	return C.QuaternionSubtractValue(q, sub)
}

fn C.QuaternionIdentity() Quaternion
[inline]
pub fn quaternion_identity() Quaternion {
	return C.QuaternionIdentity()
}

fn C.QuaternionLength(q Quaternion) f32
[inline]
pub fn quaternion_length(q Quaternion) f32 {
	return C.QuaternionLength(q)
}

fn C.QuaternionNormalize(q Quaternion) Quaternion
[inline]
pub fn quaternion_normalize(q Quaternion) Quaternion {
	return C.QuaternionNormalize(q)
}

fn C.QuaternionInvert(q Quaternion) Quaternion
[inline]
pub fn quaternion_invert(q Quaternion) Quaternion {
	return C.QuaternionInvert(q)
}

fn C.QuaternionMultiply(q1 Quaternion, q2 Quaternion) Quaternion
[inline]
pub fn quaternion_multiply(q1 Quaternion, q2 Quaternion) Quaternion {
	return C.QuaternionMultiply(q1, q2)
}

fn C.QuaternionScale(q Quaternion, mul f32) Quaternion
[inline]
pub fn quaternion_scale(q Quaternion, mul f32) Quaternion {
	return C.QuaternionScale(q, mul)
}

fn C.QuaternionDivide(q1 Quaternion, q2 Quaternion) Quaternion
[inline]
pub fn quaternion_divide(q1 Quaternion, q2 Quaternion) Quaternion {
	return C.QuaternionDivide(q1, q2)
}

fn C.QuaternionLerp(q1 Quaternion, q2 Quaternion, amount f32) Quaternion
[inline]
pub fn quaternion_lerp(q1 Quaternion, q2 Quaternion, amount f32) Quaternion {
	return C.QuaternionLerp(q1, q2, amount)
}

fn C.QuaternionNlerp(q1 Quaternion, q2 Quaternion, amount f32) Quaternion
[inline]
pub fn quaternion_n_lerp(q1 Quaternion, q2 Quaternion, amount f32) Quaternion {
	return C.QuaternionNlerp(q1, q2, amount)
}

fn C.QuaternionSlerp(q1 Quaternion, q2 Quaternion, amount f32) Quaternion
[inline]
pub fn quaternion_slerp(q1 Quaternion, q2 Quaternion, amount f32) Quaternion {
	return C.QuaternionSlerp(q1, q2, amount)
}

fn C.QuaternionFromVector3ToVector3(from Vector3, to Vector3) Quaternion
[inline]
pub fn quaternion_from_vector3_to_vector3(from Vector3, to Vector3) Quaternion {
	return C.QuaternionFromVector3ToVector3(from, to)
}

fn C.QuaternionFromMatrix(mat Matrix) Quaternion
[inline]
pub fn quaternion_from_matrix(mat Matrix) Quaternion {
	return C.QuaternionFromMatrix(mat)
}

fn C.QuaternionToMatrix(q Quaternion) Matrix
[inline]
pub fn quaternion_to_matrix(q Quaternion) Matrix {
	return C.QuaternionToMatrix(q)
}

fn C.QuaternionFromAxisAngle(axis Vector3, angle f32) Quaternion
[inline]
pub fn quaternion_from_axis_angle(axis Vector3, angle f32) Quaternion {
	return C.QuaternionFromAxisAngle(axis, angle)
}

fn C.QuaternionToAxisAngle(q Quaternion, outaxis &Vector3, outangle &f32)
[inline]
pub fn quaternion_to_axis_angle(q Quaternion, outaxis &Vector3, outangle &f32) {
	C.QuaternionToAxisAngle(q, outaxis, outangle)
}

fn C.QuaternionFromEuler(pitch f32, yaw f32, roll f32) Quaternion
[inline]
pub fn quaternion_from_euler(pitch f32, yaw f32, roll f32) Quaternion {
	return C.QuaternionFromEuler(pitch, yaw, roll)
}

fn C.QuaternionToEuler(q Quaternion) Vector3
[inline]
pub fn quaternion_to_euler(q Quaternion) Vector3 {
	return C.QuaternionToEuler(q)
}

fn C.QuaternionTransform(q Quaternion, mat Matrix) Quaternion
[inline]
pub fn quaternion_transform(q Quaternion, mat Matrix) Quaternion {
	return C.QuaternionTransform(q, mat)
}

fn C.QuaternionEquals(p Quaternion, q Quaternion) int
[inline]
pub fn quaternion_equals(p Quaternion, q Quaternion) int {
	return C.QuaternionEquals(p, q)
}
