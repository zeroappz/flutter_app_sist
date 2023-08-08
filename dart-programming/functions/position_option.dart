import 'external_func.dart';

/// Positional Or Optional Parameters
main() {
  functionOptionalObject('Praveen', 30, '8190081187');
  functionOptionalObject('Praveen', 30, '8190081187', 'Bengaluru');
  functionOptionalObject(
      'Praveen', 30, '8190081187', 'Bengaluru', 'pravileaf@gmail.com');

  functionPositionalObject('Tanya');
  functionPositionalObject('Ramu', companyName: 'Intel Inside');
  functionPositionalObject('Trinath', companyName: 'Wipro', age: 22);
  functionPositionalObject('Prashanth',
      companyName: 'Accenture', age: 21, college: 'Panimalar');

  /**
   * Name: Tanya Age: 18 College: SIST Company: Algoxfusion
   * Name: Ramu Age: 18 College: SIST Company: Intel Inside
   * Name: Trinath Age: 22 College: SIST Company: Wipro
   * Name: Prashanth Age: 21 College: Panimalar Company: Accenture
   */
}
