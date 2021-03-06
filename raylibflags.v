module raylibv

$if x64 {
	#flag -lraylib
	$if !override_default_lib ? {
		#include "@VMODROOT/include/raylib.h"
		#flag -I"@VMODROOT/include/"
		#flag -L"@VMODROOT/include/"
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
