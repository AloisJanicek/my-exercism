unit module Leap;

sub is-leap-year ($year) is export {
    return ( 0 == $year % 4 ) && ( ( !( 0 == $year % 100 ) ) || ( 0 == $year % 400 ) );
}
