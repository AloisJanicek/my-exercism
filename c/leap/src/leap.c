#include "leap.h"

bool is_leap_year(int year) {
  if ((0 == year % 4) && ((!(0 == year % 100)) || (0 == year % 400))) {
    return true;
  } else {
    return false;
  }
}
