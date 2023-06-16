// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagesResponse _$ImagesResponseFromJson(Map<String, dynamic> json) =>
    ImagesResponse()
      ..jpg = json['jpg'] == null
          ? null
          : JpgResponse.fromJson(json['jpg'] as Map<String, dynamic>)
      ..webp = json['webp'] == null
          ? null
          : JpgResponse.fromJson(json['webp'] as Map<String, dynamic>);

Map<String, dynamic> _$ImagesResponseToJson(ImagesResponse instance) =>
    <String, dynamic>{
      'jpg': instance.jpg,
      'webp': instance.webp,
    };
