# X11-D

**Bindings to X11 for the D programming language**

Resurrected from the previous library to fix some compatibility issues, mainly with ARM

## Supported platforms
These bindings have been developed with the latest DMD compiler. Other compilers have not been tested but should build fine.

### Linux
Tested, builds fine. Both Intel and ARM CPUs will build fine.

### Mac OSX
Untested, due to lack of hardware. XQuartz should make it working.

### Windows
Automatically excludes itself under Windows. Cygwin/X supposedly should enable it to work under Windows, but I chose to not bother with it.
