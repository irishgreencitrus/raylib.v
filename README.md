# raylib.v for raylib v4.2.0
![raylib.v icon](icon.png)

Have a problem? raylib.v currently requires the `master` branch of V, so please run `v up` before filing any issues.

Not a fork! This isn't a fork of vraylib but a wrapper built from the ground up with cross compatibility in mind.
raylib.v is a binding for raylib in V with an aim for 100% parity with the C library.
This probably suffices most uses for raylib at the moment, however some more advanced functionality is currently missing.

Any issues? Open a discussion.

## Installation
Do `v install irishgreencitrus.raylibv`

## Examples
See the `examples/` folder for some examples.

TinyCC support is still in the works!
You may need to switch to a different compiler to compile examples.
> For example, to run the `core_basic_window.v` example, you will need to use the command:
> 
> `v -cc gcc run core_basic_window.v`
> 
> to run using gcc, or:
> 
> `v -cc clang run core_basic_window.v`
> 
> to run using clang

## Roadmap
### Priorities
- [x] Support most common raylib.h functions
- [ ] Support all raylib.h functions https://github.com/irishgreencitrus/raylib.v/issues/3
- [x] Support all raylib.h types
- [x] Support all raylib.h enums
- [x] Add in #defines
- [ ] Fully complete raylib.h wrapper -> v1.0.0
### Extra tasks
- [ ] More examples for how to use the library https://github.com/irishgreencitrus/raylib.v/issues/4
- [ ] raymath support
- [ ] rlgl support
- [ ] raudio support
- [ ] physac support


