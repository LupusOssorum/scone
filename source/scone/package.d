module scone;

public import scone.window;
public import color;

ref Window window() @property
{
    return _window;
}

shared static this()
{
    version(Windows)
    {
        _window = Window(80,24);
    }

    version(Posix)
    {
        _window = Window(80,24);
    }
}

private Window _window;
