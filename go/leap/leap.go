package leap

func IsLeapYear(year int) bool {
	return (0 == year%4) && ((!(0 == year%100)) || (0 == year%400))
}
