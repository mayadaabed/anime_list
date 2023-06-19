// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authors_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorsResposne _$AuthorsResposneFromJson(Map<String, dynamic> json) =>
    AuthorsResposne()
      ..malId = json['mal_id'] as int?
      ..type = json['type'] as String?
      ..name = json['name'] as String?
      ..url = json['url'] as String?;

Map<String, dynamic> _$AuthorsResposneToJson(AuthorsResposne instance) =>
    <String, dynamic>{
      'mal_id': instance.malId,
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };
