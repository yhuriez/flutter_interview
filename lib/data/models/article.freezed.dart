// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Article {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String title, String author, Picture picture)
        picture,
    required TResult Function(
            String id, String title, String excerpt, String text)
        post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String author, Picture picture)?
        picture,
    TResult? Function(String id, String title, String excerpt, String text)?
        post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String author, Picture picture)?
        picture,
    TResult Function(String id, String title, String excerpt, String text)?
        post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArticlePicture value) picture,
    required TResult Function(ArticlePost value) post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArticlePicture value)? picture,
    TResult? Function(ArticlePost value)? post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArticlePicture value)? picture,
    TResult Function(ArticlePost value)? post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticlePictureCopyWith<$Res>
    implements $ArticleCopyWith<$Res> {
  factory _$$ArticlePictureCopyWith(
          _$ArticlePicture value, $Res Function(_$ArticlePicture) then) =
      __$$ArticlePictureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String author, Picture picture});

  $PictureCopyWith<$Res> get picture;
}

/// @nodoc
class __$$ArticlePictureCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticlePicture>
    implements _$$ArticlePictureCopyWith<$Res> {
  __$$ArticlePictureCopyWithImpl(
      _$ArticlePicture _value, $Res Function(_$ArticlePicture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? picture = null,
  }) {
    return _then(_$ArticlePicture(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Picture,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PictureCopyWith<$Res> get picture {
    return $PictureCopyWith<$Res>(_value.picture, (value) {
      return _then(_value.copyWith(picture: value));
    });
  }
}

/// @nodoc

class _$ArticlePicture implements ArticlePicture {
  const _$ArticlePicture(
      {required this.id,
      required this.title,
      required this.author,
      required this.picture});

  @override
  final String id;
  @override
  final String title;
  @override
  final String author;
  @override
  final Picture picture;

  @override
  String toString() {
    return 'Article.picture(id: $id, title: $title, author: $author, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticlePicture &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, author, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticlePictureCopyWith<_$ArticlePicture> get copyWith =>
      __$$ArticlePictureCopyWithImpl<_$ArticlePicture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String title, String author, Picture picture)
        picture,
    required TResult Function(
            String id, String title, String excerpt, String text)
        post,
  }) {
    return picture(id, title, author, this.picture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String author, Picture picture)?
        picture,
    TResult? Function(String id, String title, String excerpt, String text)?
        post,
  }) {
    return picture?.call(id, title, author, this.picture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String author, Picture picture)?
        picture,
    TResult Function(String id, String title, String excerpt, String text)?
        post,
    required TResult orElse(),
  }) {
    if (picture != null) {
      return picture(id, title, author, this.picture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArticlePicture value) picture,
    required TResult Function(ArticlePost value) post,
  }) {
    return picture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArticlePicture value)? picture,
    TResult? Function(ArticlePost value)? post,
  }) {
    return picture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArticlePicture value)? picture,
    TResult Function(ArticlePost value)? post,
    required TResult orElse(),
  }) {
    if (picture != null) {
      return picture(this);
    }
    return orElse();
  }
}

abstract class ArticlePicture implements Article {
  const factory ArticlePicture(
      {required final String id,
      required final String title,
      required final String author,
      required final Picture picture}) = _$ArticlePicture;

  @override
  String get id;
  @override
  String get title;
  String get author;
  Picture get picture;
  @override
  @JsonKey(ignore: true)
  _$$ArticlePictureCopyWith<_$ArticlePicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArticlePostCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticlePostCopyWith(
          _$ArticlePost value, $Res Function(_$ArticlePost) then) =
      __$$ArticlePostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String excerpt, String text});
}

/// @nodoc
class __$$ArticlePostCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticlePost>
    implements _$$ArticlePostCopyWith<$Res> {
  __$$ArticlePostCopyWithImpl(
      _$ArticlePost _value, $Res Function(_$ArticlePost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? excerpt = null,
    Object? text = null,
  }) {
    return _then(_$ArticlePost(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ArticlePost implements ArticlePost {
  const _$ArticlePost(
      {required this.id,
      required this.title,
      required this.excerpt,
      required this.text});

  @override
  final String id;
  @override
  final String title;
  @override
  final String excerpt;
  @override
  final String text;

  @override
  String toString() {
    return 'Article.post(id: $id, title: $title, excerpt: $excerpt, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticlePost &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, excerpt, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticlePostCopyWith<_$ArticlePost> get copyWith =>
      __$$ArticlePostCopyWithImpl<_$ArticlePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String title, String author, Picture picture)
        picture,
    required TResult Function(
            String id, String title, String excerpt, String text)
        post,
  }) {
    return post(id, title, excerpt, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String author, Picture picture)?
        picture,
    TResult? Function(String id, String title, String excerpt, String text)?
        post,
  }) {
    return post?.call(id, title, excerpt, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String author, Picture picture)?
        picture,
    TResult Function(String id, String title, String excerpt, String text)?
        post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(id, title, excerpt, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArticlePicture value) picture,
    required TResult Function(ArticlePost value) post,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArticlePicture value)? picture,
    TResult? Function(ArticlePost value)? post,
  }) {
    return post?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArticlePicture value)? picture,
    TResult Function(ArticlePost value)? post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }
}

abstract class ArticlePost implements Article {
  const factory ArticlePost(
      {required final String id,
      required final String title,
      required final String excerpt,
      required final String text}) = _$ArticlePost;

  @override
  String get id;
  @override
  String get title;
  String get excerpt;
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$ArticlePostCopyWith<_$ArticlePost> get copyWith =>
      throw _privateConstructorUsedError;
}
