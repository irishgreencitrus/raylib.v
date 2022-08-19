import crypto.md5
import time.misc as time

rand_hash := md5.hexhash(time.random().clean())

raylibdir := temp_dir() + "/raylib_$rand_hash"
final_lib_location := @VMODROOT
println("Cloning Raylib v4.2.0 to $raylibdir (this may take a few minutes depending on the speed of your internet connection)")

rout := execute("git clone --branch 4.2.0 --depth 1 --single-branch https://github.com/raysan5/raylib.git $raylibdir")
println(rout.output)
if rout.exit_code != 0 {
	println(rout.exit_code)
	panic("An error has occurred, please report it to irishgreencitrus/raylib.v on github")
}
println("Completed!")
println("Compiling Raylib with tcc")

mut tccpath := ""
mut tccinclude := ""
$if windows {
	tccpath = @VEXEROOT + "\\thirdparty\\tcc\\tcc.exe"
	tccinclude = @VEXEROOT + "\\thirdparty\\tcc\\lib\\tcc\\include"
}
$else {
	tccpath = @VEXEROOT + "/thirdparty/tcc/tcc.exe"
	tccinclude = @VEXEROOT + "/thirdparty/tcc/lib/tcc/include"
}

chdir(raylibdir +"/src")?
for file in ["raudio", "rcore", "rmodels", "rshapes", "rtext", "rtextures", "rglfw", "utils"] {
	println("Building $file")
	
	compile_command := "${tccpath} -c ${file}.c -Wall -D_DEFAULT_SOURCE -DPLATFORM_DESKTOP -DGRAPHICS_API_OPENGL_33 -Wno-missing-braces -Werror=pointer-arith -fno-strict-aliasing  -std=c99 -fPIC -O1 -Werror=implicit-function-declaration -I. -Iexternal/glfw/include -Iexternal/glfw/deps/mingw -I${tccinclude}"
	comp_out := execute(compile_command)
	println(comp_out.output)
}
archive_command := "${tccpath} -ar $final_lib_location/include/libraylib.a rcore.o rshapes.o rtextures.o rtext.o utils.o rglfw.o rmodels.o raudio.o"
ar_out := execute(archive_command)
println(ar_out.output)
println("Compiliation completed! Cleaning up...")
rmdir_all(raylibdir)?

