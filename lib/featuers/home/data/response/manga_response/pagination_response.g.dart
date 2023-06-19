// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationResponse _$PaginationResponseFromJson(Map<String, dynamic> json) =>
    PaginationResponse()
      ..lastVisiblePage = json['last_visible_page'] as int?
      ..hasNextPage = json['has_next_page'] as bool?
      ..currentPage = json['current_page'] as int?
      ..items = json['items'] == null
          ? null
          : ItemsResponse.fromJson(json['items'] as Map<String, dynamic>);

Map<String, dynamic> _$PaginationResponseToJson(PaginationResponse instance) =>
    <String, dynamic>{
      'last_visible_page': instance.lastVisiblePage,
      'has_next_page': instance.hasNextPage,
      'current_page': instance.currentPage,
      'items': instance.items,
    };
