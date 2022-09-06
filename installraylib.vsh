import os
import rand

const prebuilt_tcc_name = "V's tcc"

const libraylib_a = '${@VMODROOT}/include/libraylib.a'

const cc = getenv_opt('CC') or { prebuilt_tcc_name }

const is_verbose = getenv('VERBOSE') != ''

const raylibdir = '$temp_dir()/raylib_$rand.ulid()'

fn verbose_execute(cmd string) os.Result {
	if is_verbose {
		println('> command: $cmd')
	}
	res := execute(cmd)
	if is_verbose {
		println('> result: $res.output')
	}
	return res
}

println('Cloning Raylib v4.2.0 to $raylibdir ...')
println('This may take a few minutes depending on the speed of your internet connection.')

rout := verbose_execute('git clone --branch 4.2.0 --depth 1 --single-branch https://github.com/raysan5/raylib.git ${quoted_path(raylibdir)}')
if rout.exit_code != 0 {
	eprintln(rout.output)
	eprintln('Exit code: $rout.exit_code')
	panic('An error has occurred, please report it to irishgreencitrus/raylib.v on github')
}
println('Cloning completed.')

println('Compiling Raylib with ${cc}...')
mut ccpath := find_abs_path_of_executable(cc) or { '' }
mut ccinclude := ''
if cc == prebuilt_tcc_name {
	ccpath = '${@VEXEROOT}/thirdparty/tcc/tcc.exe'
	ccinclude = '${@VEXEROOT}/thirdparty/tcc/lib/tcc/include'
	$if windows {
		ccpath = ccpath.replace('/', '\\')
		ccinclude = ccinclude.replace('/', '\\')
	}
}
if ccinclude != '' {
	ccinclude = '-I${quoted_path(ccinclude)}'
}

chdir('$raylibdir/src')?
for file in ['raudio', 'rcore', 'rmodels', 'rshapes', 'rtext', 'rtextures', 'rglfw', 'utils'] {
	println('Building ${file}...')
	compile_command := '${quoted_path(ccpath)} -Wall -D_DEFAULT_SOURCE -DPLATFORM_DESKTOP -DGRAPHICS_API_OPENGL_33 -Wno-missing-braces -Werror=pointer-arith -fno-strict-aliasing  -std=c99 -fPIC -O1 -Werror=implicit-function-declaration -I. -Iexternal/glfw/include -Iexternal/glfw/deps/mingw $ccinclude -c ${file}.c'
	comp_out := verbose_execute(compile_command)
	if comp_out.exit_code != 0 {
		eprintln(comp_out.output)
		panic('Building $file failed.\nCommand:\n$compile_command')
	}
}
println('Compilation completed.')

println('Creating an archive library file...')
rm(libraylib_a) or {}
archive_options := '${quoted_path(libraylib_a)} rcore.o rshapes.o rtextures.o rtext.o utils.o rglfw.o rmodels.o raudio.o'
archive_command := if cc == prebuilt_tcc_name {
	'${quoted_path(ccpath)} -ar $archive_options'
} else {
	'ar rcs $archive_options'
}
ar_out := verbose_execute(archive_command)
if ar_out.exit_code != 0 {
	eprintln(ar_out.output)
	panic('Creating the archive file failed.\nArchive command:\n$archive_command')
}
println('Archiving completed.')

println('Cleaning up...')
rmdir_all(raylibdir)?
