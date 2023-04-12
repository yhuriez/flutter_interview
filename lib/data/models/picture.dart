import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'picture.freezed.dart';

part 'picture.g.dart';

@freezed
class Picture with _$Picture {
  const Picture._();

  const factory Picture({
    required int width,
    required int height,
    required String url,
  }) = _Picture;

  factory Picture.fromJson(Map<String, dynamic> json) => _$PictureFromJson(json);
}
