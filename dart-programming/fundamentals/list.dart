main() {
  /// Operators in Dart
  // Ternary Operator
  // obj ? true: false
  var obj;
  // Null Check
  (obj != null) ? print(obj) : print("obj is null");

  /// List in Dart
  var myList = ["Object", 20]; // List<Object>
  myList.add(30.0);
  myList.addAll(["Name", "Age"]);
  print(myList);
  print(myList.length);

  /// Static <T> specified List
  List<Object> myListTypeSpecified = ["Object", 20]; // List<Object>
  myListTypeSpecified.add(30.0);
  myListTypeSpecified.addAll(["Name", "Age"]);
  print(myListTypeSpecified);
  print(myListTypeSpecified.length);

  /// Dynamic Type Specified List
  dynamic myListDynamicTypeSpecified = ["Object", 20]; // List<Object>
  myListDynamicTypeSpecified.add(30.0);
  myListDynamicTypeSpecified.addAll(["Name", "Age"]);
  print(myListDynamicTypeSpecified);
  print(myListDynamicTypeSpecified.length);

  /// Growable List in Dart - Tuple of Python
  var growableFixedList = List.filled(15, "SIST");

  /// growableList.add("Praveen");  Unsupported operation: Cannot add to a fixed-length list
  print(growableFixedList);

  /// Growable List in Dart - List of Python
  var growableList = List.filled(15, "SIST", growable: true);

  growableList.add("Praveen");
  print(growableList);

  /// Spread Operator (...)
  var list1 = [1, 2]; // Flutter Training List
  var list2 = [3, 4]; // React Training List
  var list = [5, 6]; // React Training List
  var list3 = [...list1, ...list2, ...list];
  // [1, 2, 3, 4]
  var list4 = list1 + list2 + list;

  var list5 = List.from(list1)
    ..addAll(list2)
    ..addAll(list);
  print("************");
  print(list3);
  print(list4);
  print(list5);
  print("************");
}
