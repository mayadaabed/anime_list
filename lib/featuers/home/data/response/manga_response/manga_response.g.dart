// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MangaResponse _$MangaResponseFromJson(Map<String, dynamic> json) =>
    MangaResponse()
      ..pagination = json['pagination'] == null
          ? null
          : PaginationResponse.fromJson(
              json['pagination'] as Map<String, dynamic>)
      ..data = (json['data'] as List<dynamic>?)
          ?.map((e) => MangaDataResponse.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MangaResponseToJson(MangaResponse instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
