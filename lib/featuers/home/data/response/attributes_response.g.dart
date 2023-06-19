// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributesResponse _$AttributesResponseFromJson(Map<String, dynamic> json) =>
    AttributesResponse()
      ..createdAt = json['createdAt'] as String?
      ..updatedAt = json['updatedAt'] as String?
      ..slug = json['slug'] as String?
      ..synopsis = json['synopsis'] as String?
      ..description = json['description'] as String?
      ..coverImageTopOffset = json['coverImageTopOffset'] as int?
      ..titles = json['titles'] == null
          ? null
          : TitlesResponse.fromJson(json['titles'] as Map<String, dynamic>)
      ..canonicalTitle = json['canonicalTitle'] as String?
      ..abbreviatedTitles = (json['abbreviatedTitles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..averageRating = json['averageRating'] as String?
      ..ratingFrequencies = json['ratingFrequencies'] == null
          ? null
          : RatingFrequenciesResponse.fromJson(
              json['ratingFrequencies'] as Map<String, dynamic>)
      ..userCount = json['userCount'] as int?
      ..favoritesCount = json['favoritesCount'] as int?
      ..startDate = json['startDate'] as String?
      ..endDate = json['endDate'] as String?
      ..nextRelease = json['nextRelease'] as String?
      ..popularityRank = json['popularityRank'] as int?
      ..ratingRank = json['ratingRank'] as int?
      ..ageRating = json['ageRating'] as String?
      ..ageRatingGuide = json['ageRatingGuide'] as String?
      ..subtype = json['subtype'] as String?
      ..status = json['status'] as String?
      ..tba = json['tba'] as String?
      ..posterImage = json['posterImage'] == null
          ? null
          : PosterImageResponse.fromJson(
              json['posterImage'] as Map<String, dynamic>)
      ..coverImage = json['coverImage'] == null
          ? null
          : CoverImageResponse.fromJson(
              json['coverImage'] as Map<String, dynamic>)
      ..episodeCount = json['episodeCount'] as int?
      ..episodeLength = json['episodeLength'] as int?
      ..totalLength = json['totalLength'] as int?
      ..youtubeVideoId = json['youtubeVideoId'] as String?
      ..showType = json['showType'] as String?
      ..nsfw = json['nsfw'] as bool?;

Map<String, dynamic> _$AttributesResponseToJson(AttributesResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'slug': instance.slug,
      'synopsis': instance.synopsis,
      'description': instance.description,
      'coverImageTopOffset': instance.coverImageTopOffset,
      'titles': instance.titles,
      'canonicalTitle': instance.canonicalTitle,
      'abbreviatedTitles': instance.abbreviatedTitles,
      'averageRating': instance.averageRating,
      'ratingFrequencies': instance.ratingFrequencies,
      'userCount': instance.userCount,
      'favoritesCount': instance.favoritesCount,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'nextRelease': instance.nextRelease,
      'popularityRank': instance.popularityRank,
      'ratingRank': instance.ratingRank,
      'ageRating': instance.ageRating,
      'ageRatingGuide': instance.ageRatingGuide,
      'subtype': instance.subtype,
      'status': instance.status,
      'tba': instance.tba,
      'posterImage': instance.posterImage,
      'coverImage': instance.coverImage,
      'episodeCount': instance.episodeCount,
      'episodeLength': instance.episodeLength,
      'totalLength': instance.totalLength,
      'youtubeVideoId': instance.youtubeVideoId,
      'showType': instance.showType,
      'nsfw': instance.nsfw,
    };
