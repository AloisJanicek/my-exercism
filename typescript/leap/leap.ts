function isLeapYear(year: number): boolean {
  return 0 == year % 4 && (!(0 == year % 100) || 0 == year % 400);
}

export default isLeapYear;
