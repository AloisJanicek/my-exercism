class Leap {
    Integer year

    Leap(Integer year) {
        this.year = year
    }

    def isLeapYear() {
        (0 == this.year % 4) && ((!(0 == this.year % 100)) || (0 == this.year % 400))
    }

}
