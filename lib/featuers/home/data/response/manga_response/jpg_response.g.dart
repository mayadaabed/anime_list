// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jpg_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JpgResponse _$JpgResponseFromJson(Map<String, dynamic> json) => JpgResponse()
  ..imageUrl = json['image_url'] as String?
  ..smallImageUrl = json['small_image_url'] as String?
  ..largeImageUrl = json['large_image_url'] as String?;

Map<String, dynamic> _$JpgResponseToJson(JpgResponse instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'small_image_url': instance.smallImageUrl,
      'large_image_url': instance.largeImageUrl,
    };
