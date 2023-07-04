// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchDataResponse _$SearchDataResponseFromJson(Map<String, dynamic> json) =>
    SearchDataResponse()
      ..malId = json['mal_id'] as int?
      ..url = json['url'] as String?
      ..images = json['images'] == null
          ? null
          : ImagesResponse.fromJson(json['images'] as Map<String, dynamic>)
      ..trailer = json['trailer'] == null
          ? null
          : TrailerResponse.fromJson(json['trailer'] as Map<String, dynamic>)
      ..approved = json['approved'] as bool?
      ..searchTitles = (json['titles'] as List<dynamic>?)
          ?.map((e) => MangaTitlesReponse.fromJson(e as Map<String, dynamic>))
          .toList()
      ..title = json['title'] as String?
      ..titleEnglish = json['title_english'] as String?
      ..titleJapanese = json['title_japanese'] as String?
      ..titleSynonyms = (json['title_synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..type = json['type'] as String?
      ..source = json['source'] as String?
      ..episodes = json['episodes'] as int?
      ..status = json['status'] as String?
      ..airing = json['airing'] as bool?
      ..aired = json['aired'] == null
          ? null
          : PublishedResponse.fromJson(json['aired'] as Map<String, dynamic>)
      ..duration = json['duration'] as String?
      ..rating = json['rating'] as String?
      ..score = (json['score'] as num?)?.toDouble()
      ..scoredBy = json['scored_by'] as int?
      ..rank = json['rank'] as int?
      ..popularity = json['popularity'] as int?
      ..members = json['members'] as int?
      ..favorites = json['favorites'] as int?
      ..synopsis = json['synopsis'] as String?
      ..background = json['background'] as String?
      ..season = json['season'] as String?
      ..year = json['year'] as int?
      ..broadcast = json['broadcast'] == null
          ? null
          : SearchBroadcastResponse.fromJson(
              json['broadcast'] as Map<String, dynamic>)
      ..producers = (json['producers'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList()
      ..licensors = (json['licensors'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList()
      ..studios = (json['studios'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList()
      ..genres = (json['genres'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList()
      ..explicitGenres = (json['explicit_genres'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList()
      ..themes = (json['themes'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList()
      ..demographics = (json['demographics'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SearchDataResponseToJson(SearchDataResponse instance) =>
    <String, dynamic>{
      'mal_id': instance.malId,
      'url': instance.url,
      'images': instance.images,
      'trailer': instance.trailer,
      'approved': instance.approved,
      'titles': instance.searchTitles,
      'title': instance.title,
      'title_english': instance.titleEnglish,
      'title_japanese': instance.titleJapanese,
      'title_synonyms': instance.titleSynonyms,
      'type': instance.type,
      'source': instance.source,
      'episodes': instance.episodes,
      'status': instance.status,
      'airing': instance.airing,
      'aired': instance.aired,
      'duration': instance.duration,
      'rating': instance.rating,
      'score': instance.score,
      'scored_by': instance.scoredBy,
      'rank': instance.rank,
      'popularity': instance.popularity,
      'members': instance.members,
      'favorites': instance.favorites,
      'synopsis': instance.synopsis,
      'background': instance.background,
      'season': instance.season,
      'year': instance.year,
      'broadcast': instance.broadcast,
      'producers': instance.producers,
      'licensors': instance.licensors,
      'studios': instance.studios,
      'genres': instance.genres,
      'explicit_genres': instance.explicitGenres,
      'themes': instance.themes,
      'demographics': instance.demographics,
    };
