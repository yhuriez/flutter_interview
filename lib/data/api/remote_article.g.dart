// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoteArticle _$$_RemoteArticleFromJson(Map<String, dynamic> json) =>
    _$_RemoteArticle(
      id: json['id'] as String,
      type: json['type'] as int,
      title: json['title'] as String,
      author: json['author'] as String?,
      picture: json['picture'] == null
          ? null
          : Picture.fromJson(json['picture'] as Map<String, dynamic>),
      excerpt: json['excerpt'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$_RemoteArticleToJson(_$_RemoteArticle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'author': instance.author,
      'picture': instance.picture,
      'excerpt': instance.excerpt,
      'text': instance.text,
    };
