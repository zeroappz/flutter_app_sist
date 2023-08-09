/// Abstract Class - Attributes, Partial Method(function) Implementation

// function() {
//   print("just a function");
// }

abstract class AbstractClass {
  AbstractClass() {
    // Step 1
    print("\nAbstract Class is getting accessed");
  }

  /// Concrete method definition
  method() {
    print("Just a Method because I am depending on AbstractClass");
  }

  methodOfAbstract(); // Abstract method call
  parentInformation(); // Abstract method call
}
