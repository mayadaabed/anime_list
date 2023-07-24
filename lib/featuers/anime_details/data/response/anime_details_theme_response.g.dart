// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_details_theme_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeDetailsTheme _$AnimeDetailsThemeFromJson(Map<String, dynamic> json) =>
    AnimeDetailsTheme()
      ..openings =
          (json['openings'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..endings =
          (json['endings'] as List<dynamic>?)?.map((e) => e as String).toList();

Map<String, dynamic> _$AnimeDetailsThemeToJson(AnimeDetailsTheme instance) =>
    <String, dynamic>{
      'openings': instance.openings,
      'endings': instance.endings,
    };
