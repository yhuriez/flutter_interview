import 'package:flutter/foundation.dart';
import 'package:flutter_interview/data/models/picture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_article.freezed.dart';
part 'remote_article.g.dart';


@freezed
class RemoteArticle with _$RemoteArticle {



  const RemoteArticle._();

  const factory RemoteArticle({
    required String id,
    required int type,
    required String title,
    String? author,
    Picture? picture,
    String? excerpt,
    String? text
  }) = _RemoteArticle;

  factory RemoteArticle.fromJson(Map<String, dynamic> json) =>
      _$RemoteArticleFromJson(json);
}