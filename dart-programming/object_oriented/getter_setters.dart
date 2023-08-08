/// Getters & Setters
/// get() & set() - methods
/// set field_name
/// get field_name

class NormalClass {
  late int _fontSize;
  String? _fontColor;

  set fontColor(String fc) {
    _fontColor = fc;
  }

  set fontSize(int fs) {
    _fontSize = fs;
  }

  int get fontSize => _fontSize; // anonymous function
  // int get fontSize {
  //   return _fontSize;
  // }

  String get fontColor => _fontColor!;
}

main() {
  var user = NormalClass();
  user._fontSize = 20;
  print(user._fontSize);
  user._fontColor = 'Red';
  print(user._fontColor);
}
