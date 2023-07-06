import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<String> login(String email, String password) async {
    // API call here which returns the token or an error message
    // We can use the _dio instance to make authenticated requests with the token
    // We can Replace this with actual API implementation

    // Example implementation:
    try {
      final response = await _dio.post('/login', data: {
        'email': email,
        'password': password,
      });
    
      // Returns the token from the response
      return response.data['token'];
    } catch (error) {
      // Returns the error message
      return error.toString();
    }

    
    return 'Token123';
  }
}
