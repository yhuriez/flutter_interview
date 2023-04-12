import 'package:flutter_interview/data/models/picture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {

  const factory Article.picture({
    required String id,
    required String title,
    required String author,
    required Picture picture,
  }) = ArticlePicture;

  const factory Article.post({
    required String id,
    required String title,
    required String excerpt,
    required String text,
  }) = ArticlePost;
}