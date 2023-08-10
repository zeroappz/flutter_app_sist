import "dart:io";

/// Advertisements class
class Advertisements {
  String adCategory = 'Education';
  String adTitle = 'Algoxfusion';

  static const loadTime = 5;

  Advertisements(dynamic company1, dynamic company2, bool isAdsBlocked) {
    if (isAdsBlocked) {
      print("Ads are blocked! Please remove the ads for better experience");
    } else {
      print("Advertisements class");
      print(
          "$company1 is loading $adTitle before opening the actual browse URL");
      print(
          "$company2 is loading $adTitle before opening the actual browse URL");
      sleep(const Duration(seconds: loadTime));
      print("All Ads are loaded successfully");
    }
  }

  getData() {
    print("Ads are based on $adCategory : $adTitle");
  }
}
