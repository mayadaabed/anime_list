// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelationsResponse _$RelationsResponseFromJson(Map<String, dynamic> json) =>
    RelationsResponse()
      ..relation = json['relation'] as String?
      ..entry = (json['entry'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$RelationsResponseToJson(RelationsResponse instance) =>
    <String, dynamic>{
      'relation': instance.relation,
      'entry': instance.entry,
    };
