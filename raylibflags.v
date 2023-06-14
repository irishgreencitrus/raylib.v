module raylibv

#preinclude "@VMODROOT/include/pre.h"
#include "@VMODROOT/raylib/src/raylib.h"
#include "@VMODROOT/raylib/src/rlgl.h"
#include "@VMODROOT/raylib/src/raymath.h"

#flag -DPLATFORM_DESKTOP

#flag -I @VMODROOT/raylib/src/external/glfw/include

#flag @VMODROOT/raylib/src/raudio.o
#flag @VMODROOT/raylib/src/rcore.o
#flag @VMODROOT/raylib/src/rmodels.o
#flag @VMODROOT/raylib/src/rshapes.o
#flag @VMODROOT/raylib/src/rtext.o
#flag @VMODROOT/raylib/src/rtextures.o
#flag @VMODROOT/raylib/src/utils.o
#flag @VMODROOT/raylib/src/rglfw.o
$if tinyc && !accept_broken? {
    $compile_error('
		TCC is unsupported.
		Please switch to GCC or Clang in order to compile programs for raylib.v
		If you can help with changing this, please go to https://github.com/irishgreencitrus/raylib.v

		If you wish to remove this error pass "-d accept_broken" to your V compiler.
		No support will be provided for those using "-d accept_broken".
	')
}
$if tinyc {
    #flag -I @VMODROOT/include/tcc
}

$if windows {
	#flag -I @VMODROOT/raylib/src/external/glfw/deps/mingw
	#flag -lwinmm
	#flag -lgdi32
	#flag -lopengl32
} $else $if linux {
	#flag -lGL
	#flag -lm
	#flag -lpthread
	#flag -ldl
	#flag -lrt
	$if wayland ? {
		#flag -lwayland-client
		#flag -lwayland-cursor
		#flag -lwayland-egl
		#flag -lxkbcommon
	} $else {
		#flag -lX11
	}
} $else $if	freebsd || openbsd || netbsd || dragonfly {
	#flag -lGL
	#flag -lrt
	#flag -ldl
	#flag -lm
	#flag -lX11
	#flag -lXrandr
	#flag -lXinerama
	#flag -lXi
	#flag -lXxf86vm
	#flag -lXcursor
} $else $if macos {
	#flag -DGL_SILENCE_DEPRECATION
	#flag -ObjC
	#flag -framework OpenGL
	#flag -framework Cocoa
	#flag -framework IOKit
} $else {
	$compile_error("Unsupported OS")
}

$if windows && prod && !debug {
	// Hide console
	#flag -mwindows
}
