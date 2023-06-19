// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'published_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublishedResponse _$PublishedResponseFromJson(Map<String, dynamic> json) =>
    PublishedResponse()
      ..from = json['from'] as String?
      ..to = json['to'] as String?
      ..prop = json['prop'] == null
          ? null
          : PropResponse.fromJson(json['prop'] as Map<String, dynamic>)
      ..string = json['string'] as String?;

Map<String, dynamic> _$PublishedResponseToJson(PublishedResponse instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'prop': instance.prop,
      'string': instance.string,
    };
