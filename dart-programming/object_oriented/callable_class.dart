/// [CallableTestClass] is a class that implements the `call()` method to make it callable
class CallableTestClass {
  String? name;

  CallableTestClass(name) {
    this.name = name;
  }

  dynamic call() {
    /// Invokes at the time of instance call or access
    print('Calling $name');
    return {'status': true, 'first_name': name};
  }
}

main() {
  try {
    /// Class Instantiation
    var obj = CallableTestClass('Praveen');
    var result = obj();

    if (result['status'] == true) {
      print('Callable class called successful');
      print('First name is ${result['first_name']}');
    }
  } catch (error) {
    print('Error: $error');
  }
}
