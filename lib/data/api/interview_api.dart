import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_interview/data/api/api_error_type.dart';
import 'package:flutter_interview/data/api/remote_article.dart';
import 'package:flutter_interview/data/models/result.dart';

class InterviewApi {
  InterviewApi() {
    _dio.transformer = BackgroundTransformer()..jsonDecodeCallback = _parseJson;
    _dio.interceptors.add(LogInterceptor());
  }

  static const String url = 'https://interview-dev.teachonmars.com/interview-api.php';

  final _dio = Dio(
    BaseOptions(
      headers: {'UserConnection': 'Keep-Alive', 'Content-Type': 'application/json'},
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  Future<Result<List<RemoteArticle>>> fetchArticles() async {
    try {
      final response = await _dio.get<List<dynamic>>(url);
      final result =
          response.data?.map((it) => RemoteArticle.fromJson(it as Map<String, dynamic>)).toList() ??
              [];

      return Result.success(result);
    } on DioError catch (error, stack) {
      if (kDebugMode) {
        print(stack);
      }
      return Result.failure(_getErrorType(error));
    }
  }

  ApiErrorType _getErrorType(DioError error) {
    if (error.type == DioErrorType.connectionTimeout) {
      return ApiErrorType.timeout;
    }

    switch (error.response?.statusCode) {
      case 401:
        return ApiErrorType.not_authorized;

      case 404:
        return ApiErrorType.no_content;

      default:
        return ApiErrorType.internal_error;
    }
  }
}

// Must be top-level function
dynamic _parseAndDecode(String response) {
  return jsonDecode(response);
}

Future<dynamic> _parseJson(String text) {
  return compute(_parseAndDecode, text);
}
