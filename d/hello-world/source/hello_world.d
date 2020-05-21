module hello_world;

// Simply return the string "Hello, World!"

string hello()
{
    return "Hello, World!";
}

unittest
{
    assert(hello() == "Hello, World!");
}
