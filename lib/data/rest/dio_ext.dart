import 'package:dio/dio.dart';
import 'package:flutter_patterns/util/result.dart';

extension DioExt on Dio {
  Future<Result<R>> performRequest<T, R>(
    Future<Response<T>> request, {
    required R Function(Response<T> response) parse,
  }) {
    return runCatchingAsync(() async {
      final response = await request;
      final code = response.statusCode;

      if (code != null && code >= 200 && code < 300) {
        return parse(response);
      } else {
        throw Exception('Failed to load data (code = ${response.statusCode})');
      }
    });
  }
}
