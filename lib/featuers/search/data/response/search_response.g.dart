// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    SearchResponse()
      ..pagination = json['pagination'] == null
          ? null
          : PaginationResponse.fromJson(
              json['pagination'] as Map<String, dynamic>)
      ..searchDataResponse = (json['data'] as List<dynamic>?)
          ?.map((e) => SearchDataResponse.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SearchResponseToJson(SearchResponse instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.searchDataResponse,
    };
