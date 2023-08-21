/// Class & Objects - Blue Print
/// Design Pattern - Strategy
/// Smart Watch - an unique design pattern - specific components
/// Same pattern will be reused
/// Factory Pattern -
/// Color, Strap Material is going to be dynamic

/// [ClassNameForLearning] class is going to be used as a blue print
class ClassNameForLearning {
  /// Upper camel case
  /// Fields, Attributes, Methods, Getters & Setters
  static String watchType = 'Smart Watch';
  var brand;

  /// Constructors
  ClassNameForLearning(bd) {
    print("Constructor Loads First");
    brand = bd; // Instance Object
    _getData();
    print("Constructor: My $watchType is of $brand");
  }
  static _getData() {
    print("Watch Type: ${ClassNameForLearning.watchType}");
  }
}

instances() {
  print("*********");
  var praveen = ClassNameForLearning("FireBoltt Ninja");
  print("*********");
  var ramu = ClassNameForLearning("Samsung Galaxy");
  print("*********");
  var marshal = ClassNameForLearning("Apple Watch");
}
