import 'package:dio/dio.dart';

class HttpRequestRespone {
  final dynamic data;
  final int? statusCode;
  final String? statusMessage;

  HttpRequestRespone({
    required this.data,
    this.statusCode,
    this.statusMessage,
  });
}

abstract class DioUtil {
  static final Dio _dio = Dio();

  static Future<HttpRequestRespone> get(
    String endpoint, {
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final Response response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      
      return HttpRequestRespone(
        data: response.data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );
    } on DioError catch (e) {
      return HttpRequestRespone(
        data: e.response?.data,
        statusCode: e.response?.statusCode,
        statusMessage: e.response?.statusMessage,
      );
    }
  }
}
