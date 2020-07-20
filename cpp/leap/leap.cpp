#include "leap.h"

namespace leap {
bool is_leap_year(int year) {
  return ((0 == year % 4) && ((!(0 == year % 100)) || (0 == year % 400)));
}
} // namespace leap
