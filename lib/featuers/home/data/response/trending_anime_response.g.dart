// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_anime_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingAnimeResponse _$TrendingAnimeResponseFromJson(
        Map<String, dynamic> json) =>
    TrendingAnimeResponse()
      ..data = (json['data'] as List<dynamic>?)
          ?.map((e) => DataResponse.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$TrendingAnimeResponseToJson(
        TrendingAnimeResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
