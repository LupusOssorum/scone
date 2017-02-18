module scone.core;

import scone.window;
import scone.os;
import scone.logger;
import std.stdio : File, writefln;
import std.datetime;

static this()
{
    //init the logfile
    logfile = File("scone.log", "w+");
    logfile.writefln("scone: %s", Clock.currTime().toISOExtString());

    //get current width and height
    OS.init();
    auto w = OS.size[0];
    auto h = OS.size[1];

    //init window
    window = Window(w,h);
}

static ~this()
{
    OS.deinit();
}

///global window (aka console/terminal)
static Window window;