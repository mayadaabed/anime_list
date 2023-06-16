// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poster_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PosterImageResponse _$PosterImageResponseFromJson(Map<String, dynamic> json) =>
    PosterImageResponse()
      ..tiny = json['tiny'] as String?
      ..large = json['large'] as String?
      ..small = json['small'] as String?
      ..medium = json['medium'] as String?
      ..original = json['original'] as String?
      ..meta = json['meta'] == null
          ? null
          : MetaResponse.fromJson(json['meta'] as Map<String, dynamic>);

Map<String, dynamic> _$PosterImageResponseToJson(
        PosterImageResponse instance) =>
    <String, dynamic>{
      'tiny': instance.tiny,
      'large': instance.large,
      'small': instance.small,
      'medium': instance.medium,
      'original': instance.original,
      'meta': instance.meta,
    };
