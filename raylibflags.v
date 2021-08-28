module raylibv

#flag -lraylib
$if x64 {
	#flag -DPLATFORM_DESKTOP
	$if !override_default_lib ? {
		#include "@VMODROOT/include/raylib.h"
		#flag -I@VMODROOT/include/libraylib.a
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
	}
	$if linux {
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
} $else $if arm64 {
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
