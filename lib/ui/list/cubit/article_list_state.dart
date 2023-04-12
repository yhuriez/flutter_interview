import 'package:flutter_interview/data/api/api_error_type.dart';
import 'package:flutter_interview/data/models/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_list_state.freezed.dart';

@freezed
class ArticleListState with _$ArticleListState {

  const factory ArticleListState.loading() = Loading;
  const factory ArticleListState.error(ApiErrorType errorType) = Error;
  const factory ArticleListState.success(List<Article> articles) = Success;
}