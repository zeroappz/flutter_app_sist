///
/// Function is used to reduce the code lines
/// Reusability
/// Improve Performance - Stack Chart
/// Debugging
/// Function Types - WR, WithoutRT, WP, WithoutP
import 'external_func.dart';

main() {
  var x = 10;
  var y = 10;
  var output = function(x, y); // Invoke the function named [function]
  if (output != null) {
    print("Process.....");
  }
  String themeMode = 'Light';
  if (themeMode == 'Dark') {
    changeDarkTheme('black', 'Pink', 'themeMode');
  } else if (themeMode == 'Light') {
    changeLightTheme('black', 'Pink', 'themeMode');
  } else {
    print('No option for changing the theme');
  }

  Map<String, dynamic> result = getAddress();
  print(result['status']); // null
  if (result['status'] != null && result['status'] == 200) {
    print(result['data']);
  } else {
    print("Data Not available");
  }
}
