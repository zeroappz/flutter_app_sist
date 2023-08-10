/// Synchronous vs Asynchronous
/// Concurrency - Multi-threading

main() {
  evenDataNormal(10);
  evenDataNormal(10);
  // evenData(10).forEach(
  //   (element) => print(element),
  // );

  print("Asynchronous Function");
  asyncFunction(10).forEach(
    // 0-9
    (element) => print(element),
  );

  /// Holding the Information
  asyncFunction(10).listen((event) {
    // 0-9
    print(event);
  });

  // List obj = [1, 2, 3, 4]
  // print("Statement after function call");
}

evenDataNormal(int n) {
  for (int i = 0; i <= n; i++) {
    // if (i % 2 == 0) {
    print(i);
    // }
  }
}

// evenData(int n) async {
//   for (int i = 0; i <= n; i++) {
//     if (i % 2 == 0) {
//       print(i);
//     }
//   }
// }

Iterable<dynamic> evenData(int n) sync* {
  for (int i = 0; i <= n; i++) {
    if (i % 2 == 0) {
      yield i; // Generator object is returned
    }
  }
}

/// Stream Object
Stream<dynamic> asyncFunction(int n) async* {
  int obj = 0;
  while (obj < n) {
    yield obj++;
  }
}
