import 'browser.dart';

main() {
  // String browserName = 'FireFox';
  // bool isAdsBlocked = false;
  // String callBackUrl = 'https://algofusion.org';

  /// Instantiation
  instances();
}

instances() {
  print("*************************");
  Browser user = Browser("https://www.google.com", "FireFox", true);
  print("*************************");
  Browser user2 = Browser("https://algofusion.org", "Chrome", false);
  print("*************************");
}
