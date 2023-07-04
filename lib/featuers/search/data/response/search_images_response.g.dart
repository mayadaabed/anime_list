// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_images_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchImagesResponse _$SearchImagesResponseFromJson(
        Map<String, dynamic> json) =>
    SearchImagesResponse()
      ..imageUrl = json['image_url'] as String?
      ..smallImageUrl = json['small_image_url'] as String?
      ..mediumImageUrl = json['medium_image_url'] as String?
      ..largeImageUrl = json['large_image_url'] as String?
      ..maximumImageUrl = json['maximum_image_url'] as String?;

Map<String, dynamic> _$SearchImagesResponseToJson(
        SearchImagesResponse instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'small_image_url': instance.smallImageUrl,
      'medium_image_url': instance.mediumImageUrl,
      'large_image_url': instance.largeImageUrl,
      'maximum_image_url': instance.maximumImageUrl,
    };
