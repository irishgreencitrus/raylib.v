module raylibv

#preinclude "@VMODROOT/include/pre.h"

$if debug {
	$compile_warn('If you get errors refer to https://github.com/irishgreencitrus/raylib.v for instructions on how to setup the library')
}

$if x64 {
	#flag -lraylib
	$if !override_default_lib ? {
		#flag -L"@VMODROOT/include/"
		#include "@VMODROOT/include/raylib.h"
		#flag -I"@VMODROOT/include/"
	}
	$if prod {
		#flag -O2
		#flag -s
	}
	$if windows {
		#flag -lopengl32
		#flag -lgdi32
		#flag -lwinmm
		#flag -static
		#flag -lpthread
		#flag -DPLATFORM_DESKTOP
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
	}
	#flag -DPLATFORM_DESKTOP
} $else $if arm64 {
	#flag -lraylib
	#flag -DPLATFORM_RPI
	$if linux {
		#flag -lbrcmGLESv2
		#flag -lbrcmEGL
		#flag -lpthread
		#flag -lrt
		#flag -lm
		#flag -lvcm_host
		#flag -ldl
	}
}
