module wintest.app;

import x11.Xlib;

import std.stdio;

void main() {
    writeln("If you see this, then the library won't interfere with OSes that don't have x11!");
}