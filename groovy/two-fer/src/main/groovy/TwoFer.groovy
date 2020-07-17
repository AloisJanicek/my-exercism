class TwoFer {

    static String twoFer(String name) {
        return "One for ${name != null && name != '' ? name : 'you'}, one for me."
    }

}
