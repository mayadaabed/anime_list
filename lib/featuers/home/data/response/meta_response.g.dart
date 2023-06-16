// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetaResponse _$MetaResponseFromJson(Map<String, dynamic> json) => MetaResponse()
  ..dimensions = json['dimensions'] == null
      ? null
      : DimensionsResponse.fromJson(json['dimensions'] as Map<String, dynamic>);

Map<String, dynamic> _$MetaResponseToJson(MetaResponse instance) =>
    <String, dynamic>{
      'dimensions': instance.dimensions,
    };
