import 'package:dio/dio.dart';

class ApiService {
  final _BaseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await _dio.get('$_BaseUrl$endpoint');

    // BookModel bookModel = BookModel.fromJson(response.data);
    return response.data;
  }
}
