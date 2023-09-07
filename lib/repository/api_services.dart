import '../app_lib/app_lib.dart';

class ApiService {
  final Dio _dio = Dio();

  /// Future Model - Async
  Future<RegistrationModel> patientRegistration(postData) async {
    try {
      final response = await _dio.post(
        ApiEndPoints().baseURL + ApiEndPoints().patientRegistration,
        data: postData,
      );

      debugPrint(response.toString());
      debugPrint(response.statusCode.toString());

      /// https://api.kirthikadentalcare.in/api/patient_registration || SSL
      if (response.statusCode == 200) {
        if (response.data['status'] == true) {
          debugPrint(response.data.toString());
          return RegistrationModel.fromJson(response.data);
        } else {
          return RegistrationModel.fromJson(response.data);
        }
      } else {
        throw Exception('Registration Failed');
      }
    } catch (errObj) {
      debugPrint(errObj.toString());
      throw Exception('Something Went wrong');
    }
  }
}
