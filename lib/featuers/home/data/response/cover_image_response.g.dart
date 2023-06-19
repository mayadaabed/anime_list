// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoverImageResponse _$CoverImageResponseFromJson(Map<String, dynamic> json) =>
    CoverImageResponse()
      ..tiny = json['tiny'] as String?
      ..large = json['large'] as String?
      ..small = json['small'] as String?
      ..medium = json['medium'] as String?
      ..original = json['original'] as String?
      ..meta = json['meta'] == null
          ? null
          : MetaResponse.fromJson(json['meta'] as Map<String, dynamic>);

Map<String, dynamic> _$CoverImageResponseToJson(CoverImageResponse instance) =>
    <String, dynamic>{
      'tiny': instance.tiny,
      'large': instance.large,
      'small': instance.small,
      'medium': instance.medium,
      'original': instance.original,
      'meta': instance.meta,
    };
