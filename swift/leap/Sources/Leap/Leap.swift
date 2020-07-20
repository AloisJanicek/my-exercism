class Year {
    var year: Int

    init(calendarYear: Int) {
        year = calendarYear
    }

    var isLeapYear: Bool {
        return (0 == year % 4) && ((!(0 == year % 100)) || (0 == year % 400));
    }

}

