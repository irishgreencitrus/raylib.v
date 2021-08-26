# raylib.v
Not a fork! This isn't a fork of vraylib but a wrapper built from the ground up with cross compatibility in mind.
raylib.v is a binding for raylib in V with an aim for 100% parity with the C library.
This isn't a replacement for [vraylib](https://github.com/waotzi/vraylib) just yet, although it aims to go beyond it and provide a more usable library with clearer documentation for both Linux and Windows.

## Installation
Just do `v install irishgreencitrus.raylibv`
## Example Program
```v
module main

import irishgreencitrus.raylibv as r

// Replace these two lines if your header and library are in a different location
#include "/usr/local/include/raylib.h"
#flag -I/usr/local/lib/libraylib.a
//
#flag -lraylib
#flag -lGL
#flag -lm
#flag -lpthread
#flag -ldl
#flag -lrt
#flag -lX11
#flag -DPLATFORM_DESKTOP

const (
		screen_width = 800
		screen_height = 450
)

fn main(){
		r.init_window(screen_width,screen_height,"raylib.v [core] example - basic window".str)
		r.set_target_fps(60)
		for !r.window_should_close() {
				r.begin_drawing()
						r.clear_background(r.Color{r:245,g:245,b:245,a:255})
						r.draw_text("Congrats! You created your first window in V!".str,190,200,20,r.Color{r:0,g:0,b:0,a:255})
				r.end_drawing()
		}
		r.close_window()
}
```
## Roadmap
- [x] Support most common raylib.h functions
- [ ] Support all raylib.h functions
- [x] Support all raylib.h types
- [ ] Support all raylib.h enums
- [ ] Fully complete raylib.h wrapper
- [ ] raylib.v documentation
- [ ] All core examples
- [ ] Other examples
- [ ] raymath support
- [ ] rlgl support
- [ ] raudio support
- [ ] physac support


