let isLeapYear = (year) => {
  let divisibleBy = (num) => 0 == year mod num;
  (divisibleBy(4) && (!divisibleBy(100) || divisibleBy(400)))
};
