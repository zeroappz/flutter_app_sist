main() {
  /// Date & Time
  var now = DateTime.now();

  /// Class.method()
  /// 2023-08-02 18:36:35.963619
  print(now);

  /// 1970-02-04 19:12:43.619
  var obj = DateTime.fromMillisecondsSinceEpoch(2986963619);
  print(obj);

  /// Multiple Languages - UTF codes
  /// UTF - '\u00e1'
  print('\u2665'); // ♥
  print('\u0B85'); // அ
  print('\u0C05'); // అ
}
