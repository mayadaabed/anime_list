// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_broadcast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchBroadcastResponse _$SearchBroadcastResponseFromJson(
        Map<String, dynamic> json) =>
    SearchBroadcastResponse()
      ..day = json['day'] as String?
      ..time = json['time'] as String?
      ..timezone = json['timezone'] as String?
      ..string = json['string'] as String?;

Map<String, dynamic> _$SearchBroadcastResponseToJson(
        SearchBroadcastResponse instance) =>
    <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'timezone': instance.timezone,
      'string': instance.string,
    };
