// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeDetailsResponse _$AnimeDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    AnimeDetailsResponse()
      ..data = json['data'] == null
          ? null
          : AnimeDetailsDataResponse.fromJson(
              json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$AnimeDetailsResponseToJson(
        AnimeDetailsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
