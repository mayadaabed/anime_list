// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prop_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropResponse _$PropResponseFromJson(Map<String, dynamic> json) => PropResponse()
  ..from = json['from'] == null
      ? null
      : FromResponse.fromJson(json['from'] as Map<String, dynamic>)
  ..to = json['to'] == null
      ? null
      : FromResponse.fromJson(json['to'] as Map<String, dynamic>);

Map<String, dynamic> _$PropResponseToJson(PropResponse instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };
