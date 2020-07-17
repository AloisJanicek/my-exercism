unit module TwoFer;

sub two-fer ($name = "you") is export {
    return "One for $name, one for me."
}
