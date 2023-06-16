// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dimensions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DimensionsResponse _$DimensionsResponseFromJson(Map<String, dynamic> json) =>
    DimensionsResponse()
      ..tiny = json['tiny'] == null
          ? null
          : DimensionsDetailsResponse.fromJson(
              json['tiny'] as Map<String, dynamic>)
      ..large = json['large'] == null
          ? null
          : DimensionsDetailsResponse.fromJson(
              json['large'] as Map<String, dynamic>)
      ..small = json['small'] == null
          ? null
          : DimensionsDetailsResponse.fromJson(
              json['small'] as Map<String, dynamic>)
      ..medium = json['medium'] == null
          ? null
          : DimensionsDetailsResponse.fromJson(
              json['medium'] as Map<String, dynamic>);

Map<String, dynamic> _$DimensionsResponseToJson(DimensionsResponse instance) =>
    <String, dynamic>{
      'tiny': instance.tiny,
      'large': instance.large,
      'small': instance.small,
      'medium': instance.medium,
    };
