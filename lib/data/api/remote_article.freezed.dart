// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoteArticle _$RemoteArticleFromJson(Map<String, dynamic> json) {
  return _RemoteArticle.fromJson(json);
}

/// @nodoc
mixin _$RemoteArticle {
  String get id => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  Picture? get picture => throw _privateConstructorUsedError;
  String? get excerpt => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteArticleCopyWith<RemoteArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteArticleCopyWith<$Res> {
  factory $RemoteArticleCopyWith(
          RemoteArticle value, $Res Function(RemoteArticle) then) =
      _$RemoteArticleCopyWithImpl<$Res, RemoteArticle>;
  @useResult
  $Res call(
      {String id,
      int type,
      String title,
      String? author,
      Picture? picture,
      String? excerpt,
      String? text});

  $PictureCopyWith<$Res>? get picture;
}

/// @nodoc
class _$RemoteArticleCopyWithImpl<$Res, $Val extends RemoteArticle>
    implements $RemoteArticleCopyWith<$Res> {
  _$RemoteArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? author = freezed,
    Object? picture = freezed,
    Object? excerpt = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Picture?,
      excerpt: freezed == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PictureCopyWith<$Res>? get picture {
    if (_value.picture == null) {
      return null;
    }

    return $PictureCopyWith<$Res>(_value.picture!, (value) {
      return _then(_value.copyWith(picture: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RemoteArticleCopyWith<$Res>
    implements $RemoteArticleCopyWith<$Res> {
  factory _$$_RemoteArticleCopyWith(
          _$_RemoteArticle value, $Res Function(_$_RemoteArticle) then) =
      __$$_RemoteArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int type,
      String title,
      String? author,
      Picture? picture,
      String? excerpt,
      String? text});

  @override
  $PictureCopyWith<$Res>? get picture;
}

/// @nodoc
class __$$_RemoteArticleCopyWithImpl<$Res>
    extends _$RemoteArticleCopyWithImpl<$Res, _$_RemoteArticle>
    implements _$$_RemoteArticleCopyWith<$Res> {
  __$$_RemoteArticleCopyWithImpl(
      _$_RemoteArticle _value, $Res Function(_$_RemoteArticle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? author = freezed,
    Object? picture = freezed,
    Object? excerpt = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_RemoteArticle(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Picture?,
      excerpt: freezed == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoteArticle extends _RemoteArticle with DiagnosticableTreeMixin {
  const _$_RemoteArticle(
      {required this.id,
      required this.type,
      required this.title,
      this.author,
      this.picture,
      this.excerpt,
      this.text})
      : super._();

  factory _$_RemoteArticle.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteArticleFromJson(json);

  @override
  final String id;
  @override
  final int type;
  @override
  final String title;
  @override
  final String? author;
  @override
  final Picture? picture;
  @override
  final String? excerpt;
  @override
  final String? text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteArticle(id: $id, type: $type, title: $title, author: $author, picture: $picture, excerpt: $excerpt, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemoteArticle'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('picture', picture))
      ..add(DiagnosticsProperty('excerpt', excerpt))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteArticle &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, title, author, picture, excerpt, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteArticleCopyWith<_$_RemoteArticle> get copyWith =>
      __$$_RemoteArticleCopyWithImpl<_$_RemoteArticle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoteArticleToJson(
      this,
    );
  }
}

abstract class _RemoteArticle extends RemoteArticle {
  const factory _RemoteArticle(
      {required final String id,
      required final int type,
      required final String title,
      final String? author,
      final Picture? picture,
      final String? excerpt,
      final String? text}) = _$_RemoteArticle;
  const _RemoteArticle._() : super._();

  factory _RemoteArticle.fromJson(Map<String, dynamic> json) =
      _$_RemoteArticle.fromJson;

  @override
  String get id;
  @override
  int get type;
  @override
  String get title;
  @override
  String? get author;
  @override
  Picture? get picture;
  @override
  String? get excerpt;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteArticleCopyWith<_$_RemoteArticle> get copyWith =>
      throw _privateConstructorUsedError;
}
