// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrailerResponse _$TrailerResponseFromJson(Map<String, dynamic> json) =>
    TrailerResponse()
      ..youtubeId = json['youtube_id'] as String?
      ..url = json['url'] as String?
      ..embedUrl = json['embed_url'] as String?
      ..images = json['images'] == null
          ? null
          : SearchImagesResponse.fromJson(
              json['images'] as Map<String, dynamic>);

Map<String, dynamic> _$TrailerResponseToJson(TrailerResponse instance) =>
    <String, dynamic>{
      'youtube_id': instance.youtubeId,
      'url': instance.url,
      'embed_url': instance.embedUrl,
      'images': instance.images,
    };
