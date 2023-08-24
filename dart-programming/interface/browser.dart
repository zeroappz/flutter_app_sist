import 'advertisements.dart';

class Browser extends Advertisements {
  /// Accessing Super class constructor super()
  Browser(dynamic url, dynamic browserName, bool isAdsBlocked)
      : super("Google", "Facebook", isAdsBlocked) {
    isAdsBlocked ? print("") : super.getData();
    print("Browser class opened the $url");
  }
}

// class Browser {
//   // void openUrl(String url) {
//   //   print(url);
//   // }
// }

// main() {
//   // Browser.openUrl("https://www.google.com"); // Accessing static class method
//   // var obj = Browser();
//   // obj.openUrl("https://www.google.com"); // Access any class method
// }
