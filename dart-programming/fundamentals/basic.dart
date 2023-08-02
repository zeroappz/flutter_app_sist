main() {
  /// Keywords & identifiers
  var myAge = 30; // Dynamic Allocation
  String name = "Praveen Kumar"; // Static Allocation
  var piVal = 3.14;

  /// Static Types
  int x = 10;
  double y = 20.0;

  /// num
  num salary = 50000;

  dynamic obj = "Any type of the object can be added";

  /// Ctrl + Alt + N
  print(obj);
  print(
    name +
        " " +
        myAge.toString() +
        " years old" +
        " Earning " +
        salary.toString(),
  );

  /// Interpolation can be done using $
  /// using ${variable}
  print(
      "$name ${myAge.toString()} years old Earning ${salary.toString()} I would like to be at my ${myAge / 2}'s");

  var quote =
      "We don't know that 'A person who never made a mistake never tried anything new.' \n- Albert Einstein";
  print(quote);
}
