import 'package:flutter_interview/data/api/api_error_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {

  const factory Result.success(T data) = Success;
  const factory Result.failure(ApiErrorType errorType) = Failure;
}

