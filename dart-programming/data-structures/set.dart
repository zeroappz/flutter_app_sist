/// Set Object - Works with Hashing Technique
/// Unordered objects
/// Non-Duplicate
main() {
  Set<String> setObj = <String>{'Flutter', 'Python', 'Java', 'Android'};
  // var setObj = <dynamic>{'Flutter', 'Python', 'Java', 'Android'};
  print(setObj);
  setObj.add('ReactJs');
  setObj.add('Flutter');
  setObj.addAll(['Data Science', 'AI & ML']);
  print(setObj);

  /// ElementAt
  print(setObj.elementAt(2));

  /// Hashing - Sorted Out by default
  // late var setCount;
  dynamic setCount;
  if (setCount != null) {
    print("Set has a value name ${setObj.elementAt(0)}");
  } else {
    /// Type Casting
    /// Anything to String;
    /// setCount.toString();

    /// String to int Conversion
    /// int.parse(),
    var obj = int.parse('1');
    print(obj.runtimeType);

    /// String to int Conversion
    /// int.parse(),
    var objDouble = double.parse('1');
    print(objDouble.runtimeType);

    Set result;
    List objList = ['Praveen', 'Ramu', 'Tanya', 'Vamsi'];
    result = objList.toSet();
    print(result.runtimeType);

    print("Set has a value name ${setObj.elementAt(0)}");
  }
}
