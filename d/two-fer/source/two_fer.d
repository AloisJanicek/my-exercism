module two_fer;
import std.string;
 
string twoFer(string name="you") {
    return "One for %s, one for me.".format(name);
}

unittest
{
    immutable int allTestsEnabled = 1;

    // No name given
    assert(twoFer() == "One for you, one for me.");

    static if (allTestsEnabled)
    {
        // A name given
        assert(twoFer("Alice") == "One for Alice, one for me.");

        // Another name given
        assert(twoFer("Bob") == "One for Bob, one for me.");
    }

}
