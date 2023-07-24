// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedules_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchedulesResponse _$SchedulesResponseFromJson(Map<String, dynamic> json) =>
    SchedulesResponse()
      ..pagination = json['pagination'] == null
          ? null
          : PaginationResponse.fromJson(
              json['pagination'] as Map<String, dynamic>)
      ..data = (json['data'] as List<dynamic>?)
          ?.map(
              (e) => SchedulesDataResponse.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SchedulesResponseToJson(SchedulesResponse instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
