/// try, catch, Finally, Throw
/// Exceptions - Null Pointer Exception, OutOfBoundExceptions
/// Assert Exceptions
///
main() {
  try {
    var listObj = [1, 'Dart'];

    /// RangeError (index): Invalid value: Not in inclusive range 0..1: 2
    print(listObj[1]); // Program Terminates abruptly

    var a = 10;
    var b = 0;
    var z = a / b;
    print(z); // infinity

    /// Object Misbehave
    dynamic obj = true;
    print(obj);
  } on RangeError catch (obj) {
    print(obj);
    print("After Error handling");
  } on Exception catch (obj) {
    /// Generic Exception
    print("Global Exception: $obj");
  } catch (obj) {
    /// Generic Exception
    print("Generic Catch: $obj");
  } finally {
    /// Finally block - is executed whether exception occurs or not
    /// Database Connections, Network COnnections, File Handlers etc
    /// databaseConnection.close()
    /// networkConnection.close()
    /// file.close()
    print("I am just closing the connection after or if no error occurred");
  }

  print("After Error handling out of the scope");

  String password = 'abcd@1234';
  if (password.length <= 8) {
    // throw const FormatException('Password must be at least 8 characters');
    // throw PasswordValidation(); // return keyword
    throw 'Password length should be more than 12';
  } else {
    print('Valid Password');
  }
}

class PasswordValidation {
  PasswordValidation() {
    print('Your Password must be at least 8 characters');
  }
}

// void misbehave() {
//   try {
//     dynamic obj = true;
//     print(obj.length);
//   } catch (e) {
//     print(e.toString());
//   }
// }
