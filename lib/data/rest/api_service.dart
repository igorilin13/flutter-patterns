import 'package:dio/dio.dart';
import 'package:flutter_patterns/data/rest/dio_ext.dart';
import 'package:flutter_patterns/data/rest/models.dart';
import 'package:flutter_patterns/util/result.dart';

class RestApiService {
  final Dio _dio;

  RestApiService(this._dio);

  Future<Result<List<ResponseItem>>> getItems() {
    return _dio.performRequest(
      _dio.get("objects"),
      parse: (response) {
        return (response.data as List<dynamic>)
            .map((json) => ResponseItem.fromJson(json))
            .toList();
      },
    );
  }

  Future<Result<void>> addItem(AddItemRequest request) async {
    return _dio.performRequest(
      _dio.post("objects", data: request.toJson()),
      parse: (response) {},
    );
  }
}

class AuthInterceptor extends Interceptor {
  final String _apiKey;

  AuthInterceptor(this._apiKey);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = _apiKey;
    return super.onRequest(options, handler);
  }
}
