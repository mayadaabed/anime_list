// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MangaDataResponse _$MangaDataResponseFromJson(Map<String, dynamic> json) =>
    MangaDataResponse()
      ..malId = json['mal_id'] as int?
      ..url = json['url'] as String?
      ..images = json['images'] == null
          ? null
          : ImagesResponse.fromJson(json['images'] as Map<String, dynamic>)
      ..approved = json['approved'] as bool?
      ..mangaTitles = (json['titles'] as List<dynamic>?)
          ?.map((e) => MangaTitlesReponse.fromJson(e as Map<String, dynamic>))
          .toList()
      ..title = json['title'] as String?
      ..titleEnglish = json['title_english'] as String?
      ..titleJapanese = json['title_japanese'] as String?
      ..titleSynonyms = (json['title_synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..type = json['type'] as String?
      ..chapters = json['chapters'] as int?
      ..volumes = json['volumes'] as int?
      ..status = json['status'] as String?
      ..publishing = json['publishing'] as bool?
      ..published = json['published'] == null
          ? null
          : PublishedResponse.fromJson(
              json['published'] as Map<String, dynamic>)
      ..score = (json['score'] as num?)?.toDouble()
      ..scored = (json['scored'] as num?)?.toDouble()
      ..scoredBy = json['scored_by'] as int?
      ..rank = json['rank'] as int?
      ..popularity = json['popularity'] as int?
      ..members = json['members'] as int?
      ..favorites = json['favorites'] as int?
      ..synopsis = json['synopsis'] as String?
      ..background = json['background'] as String?
      ..authors = (json['authors'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList()
      ..serializations = (json['serializations'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList()
      ..genres = (json['genres'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList()
      ..explicitGenres = (json['explicit_genres'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..themes = (json['themes'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList()
      ..demographics = (json['demographics'] as List<dynamic>?)
          ?.map((e) => AuthorsResposne.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MangaDataResponseToJson(MangaDataResponse instance) =>
    <String, dynamic>{
      'mal_id': instance.malId,
      'url': instance.url,
      'images': instance.images,
      'approved': instance.approved,
      'titles': instance.mangaTitles,
      'title': instance.title,
      'title_english': instance.titleEnglish,
      'title_japanese': instance.titleJapanese,
      'title_synonyms': instance.titleSynonyms,
      'type': instance.type,
      'chapters': instance.chapters,
      'volumes': instance.volumes,
      'status': instance.status,
      'publishing': instance.publishing,
      'published': instance.published,
      'score': instance.score,
      'scored': instance.scored,
      'scored_by': instance.scoredBy,
      'rank': instance.rank,
      'popularity': instance.popularity,
      'members': instance.members,
      'favorites': instance.favorites,
      'synopsis': instance.synopsis,
      'background': instance.background,
      'authors': instance.authors,
      'serializations': instance.serializations,
      'genres': instance.genres,
      'explicit_genres': instance.explicitGenres,
      'themes': instance.themes,
      'demographics': instance.demographics,
    };
