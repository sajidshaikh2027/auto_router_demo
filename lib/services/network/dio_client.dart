import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio = Dio();

  Future<Response> apiCall({
    required String url,
    required RequestType requestType,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response;
    try {
      response = await _dio.request(
        url,
        queryParameters: queryParameters,
        options: Options(
          method: requestType == RequestType.get ? 'GET' : 'POST',
          responseType:
              ResponseType.json, // Ensure the response is parsed as JSON
        ),
      );
    } on DioException catch (e) {
      throw Exception(e.message);
    }
    return response;
  }
}

enum RequestType { get, post }
