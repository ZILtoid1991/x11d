module test.app;

import x11.Xlib;
import x11.X;


import std.stdio;

Display* dpy;
int scr;
Window root;

static enum WIDTH   = 640;
static enum HEIGHT  = 480;
static enum BORDER  = 15;

int main() {
    Window win;
    XEvent ev;
    dpy = XOpenDisplay(null);
    if (dpy is null) {
        writeln("ERROR! Can't open display!");
        return -1;
    }
    scr = DefaultScreen(dpy);
    root = RootWindow(dpy, scr);

    win = XCreateSimpleWindow(dpy, root, 0, 0, WIDTH, HEIGHT, BORDER, BlackPixel(dpy, scr), WhitePixel(dpy, scr));
    XMapWindow(dpy, win);
    while (XNextEvent(dpy, &ev)) {

    }

    XUnmapWindow(dpy, win);

    XDestroyWindow(dpy, win);

    XCloseDisplay(dpy);

    return 0;
}