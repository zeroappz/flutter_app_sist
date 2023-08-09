/// Importing the class
import 'concrete_class.dart';
import 'concrete_class_two.dart';

instances() {
  var obj = ConcreteClass(); // Abstract cant be instantiated
  obj.methodOfAbstract();
  obj.parentInformation();

  var objTwo = ConcreteClassTwo(); // Abstract cant be instantiated
  objTwo.methodOfAbstract();
  objTwo.parentInformation();
}
