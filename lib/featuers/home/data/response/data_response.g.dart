// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataResponse _$DataResponseFromJson(Map<String, dynamic> json) => DataResponse()
  ..id = json['id'] as String?
  ..type = json['type'] as String?
  ..links = json['links'] == null
      ? null
      : LinkResponse.fromJson(json['links'] as Map<String, dynamic>)
  ..attributesResponse = json['attributes'] == null
      ? null
      : AttributesResponse.fromJson(json['attributes'] as Map<String, dynamic>);

Map<String, dynamic> _$DataResponseToJson(DataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'links': instance.links,
      'attributes': instance.attributesResponse,
    };
