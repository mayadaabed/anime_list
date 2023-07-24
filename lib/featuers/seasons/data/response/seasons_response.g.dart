// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonsResponse _$SeasonsResponseFromJson(Map<String, dynamic> json) =>
    SeasonsResponse()
      ..pagination = json['pagination'] == null
          ? null
          : PaginationResponse.fromJson(
              json['pagination'] as Map<String, dynamic>)
      ..data = (json['data'] as List<dynamic>?)
          ?.map((e) => SeasonsDataResponse.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SeasonsResponseToJson(SeasonsResponse instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
