import 'abstract_class.dart';

/// Concrete Class to access the abstract class
class ConcreteClassTwo extends AbstractClass {
  ConcreteClassTwo() {
    print("I am the second Kid");
  }

  @override // Override abstract method
  methodOfAbstract() {
    print(
        "I am getting this info from the abstract class and I am the second Kid");
    // throw UnimplementedError();
  }

  @override
  parentInformation() {
    print("Parent name is John");
    print("Come to the home before 9 PM IST");
  }
}
