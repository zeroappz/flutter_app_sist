/// Regular Expression for String validation
main() {
  var mobileNumber = '+919047048344';

  /// minimum count should be 10 | Num should starts with 6, 7, 8, 9
  if ((mobileNumber.length == 10) &&
      (mobileNumber[0] == '9' ||
          mobileNumber[0] == '8' ||
          mobileNumber[0] == '7' ||
          mobileNumber[0] == '6')) {
    print("Valid Mobile Number");
  } else {
    print("Invalid Mobile Number");
  }

  RegExp exp = RegExp(r'^(\+91[\-\s]?)?[0]?(91)?[6789]\d{9}$');
  // RegExp exp = RegExp('[6789][0-9]{9}');
  // [0-9]{9} - 9 digits -
  // [6|7|8|9] - starting with 6, 7, 8 or 9

  /// () - Capture group
  /// \? - Optional
  /// * - Zero or more times 0-n
  /// + - One or more times 1-n
  /// \d - Any digit [0-9]
  /// \s - Any whitespace character
  /// [] - Character class, [0-9] [A-Za-z0-9]{8, 16}
  /// {} - Quantifier - {m, n} - m to n times {8} - Exactly 8 times
  if (exp.hasMatch(mobileNumber)) {
    print("Valid Mobile Number");
  } else {
    print("Invalid Mobile Number");
  }

  /// Regex Validation for Email, Ip address, Password with 8-16 matching all special character except $%^&*()
}
